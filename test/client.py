#!/usr/bin/python3
# -*- coding: utf-8 -*-

import time
import os
import select
import socket
import struct
import sys

class ModbusUdpClient:
	
	def __init__(self, ip, port, uid):
		sock = socket.socket(family = socket.AF_INET, type = socket.SOCK_DGRAM)
		sock.connect((ip, port))
		self.sock = sock
		self.unit_id = uid
		
	def set_unit_id(self, uid):
		self.unit_id = uid
	
	def mbap(self, nb):
		m = struct.pack('>H', 0x0001)
		m += struct.pack('>H', 0x0000)
		m += struct.pack('>H', nb)
		m += struct.pack('B', self.unit_id)
		return m

	def execute(self, request):
		self.sock.send(request)
		
		msg = None
		readable, writable, exceptional = select.select([self.sock], [], [], 1)		
		if readable:
			for s in readable:
				if s == self.sock:
					try:
						msg = s.recv(1024)
					except:
						print('recv error')
					else:
						#print(msg)
						msg = msg[7:] # make pdu
		else:
			print('timeout')
		return msg

	def pdu_write_holding_registers(self, addrtowrite, regs):
		nrtw = len(regs)
		req = self.mbap(7+2*nrtw)
		req += struct.pack('B', 0x10)			# function code 0x10
		req += struct.pack('>H', addrtowrite)	# starting address
		req += struct.pack('>H', nrtw)			# quantity of registers
		req += struct.pack('B', 2*nrtw)			# byte count
		for r in regs:
			req += struct.pack('>H', r)
		pdu=self.execute(req)
		#print(pdu)
		
		resp=()
		if pdu[0] & 0x80:
			print('modbus error: {}'.format(pdu[1]))
		else:
			resp = struct.unpack('>HH', pdu[1:5])
			
		return resp

	def pdu_read_holding_registers(self, addrtoread, ntoread):
		regs = []		
		req = self.mbap(6)
		req += struct.pack('B', 0x03)			# function code 0x03
		req += struct.pack('>H', addrtoread)	# starting address
		req += struct.pack('>H', ntoread)		# quantity of registers
		pdu=self.execute(req)
				
		if pdu[0] & 0x80:
			print('modbus error: {}'.format(pdu[1]))
		else:
			nmsg = struct.unpack('B', pdu[1:2])
			nreg = int(nmsg[0]/2)
			pform = '>'
			if nreg>0:
				for i in range(nreg):
					pform += 'H'
				regs = struct.unpack(pform, pdu[2:])
			
		return regs		

	def pdu_read_input_registers(self, addrtoread, ntoread):
		regs = []		
		req = self.mbap(6)
		req += struct.pack('B', 0x04)			# function code 0x04
		req += struct.pack('>H', addrtoread)	# starting address
		req += struct.pack('>H', ntoread)		# quantity of registers
		pdu=self.execute(req)
				
		if pdu[0] & 0x80:
			print('modbus error: {}'.format(pdu[1]))
		else:
			nmsg = struct.unpack('B', pdu[1:2])
			nreg = int(nmsg[0]/2)
			pform = '>'
			if nreg>0:
				for i in range(nreg):
					pform += 'H'
				regs = struct.unpack(pform, pdu[2:])
			
		return regs				
		
	def read_fifo_queue(self, adrfifo):
		regs = []		
		req = self.mbap(4)
		req += struct.pack('B', 0x18)	# function code
		req += struct.pack('>H', adrfifo)	# fifo pointer address
		pdu=self.execute(req)
		#print(pdu)
		
		if pdu[0] & 0x80:
			print('modbus error: {}'.format(pdu[1]))
		else:
			nmsg = struct.unpack('>HH', pdu[1:5])
			nreg = nmsg[1]
			pform = '>'
			if nreg>0:
				for i in range(nreg):
					pform += 'H'
				regs = struct.unpack(pform, pdu[5:])
			
		return regs

def cmd2msg(cmd):
	
	def swp32(inw):
		return [(inw>>16)&0xffff, inw&0xffff]

	msg = swp32(cmd.get('numcyc'))
	y=cmd.get('speed_in')
	msg += swp32(int(y*(2**8) + 0.5))
	msg += swp32(cmd.get('numrot_in'))
	y = cmd.get('max_torque_out')
	msg += swp32(int(y*(2**8) + 0.5))
	cyc = cmd.get('cyclo')
	msg += [i for i,j in cyc]
	msg += [j for i,j in cyc]

	# ~ cyc = cmd.get('cyclo')
	# ~ msg = msg+bytearray([i for i,j in cyc])
	# ~ msg = msg+bytearray([j for i,j in cyc])

	return msg

def main():
	
	cmd = {}
	cmd['numcyc'] = 3
	cmd['speed_in'] = 1500
	cmd['numrot_in'] = 300
	cmd['max_torque_out'] = 45.38
	cmd['cyclo'] = ((10,20), (40,50), (60,80), (80,30), (90,15))
	parregs = cmd2msg(cmd)
	
	cmd = int(sys.argv[1])
	
	print('This is a modbus udp client')
	print('---------------------------')
	
	mdb = ModbusUdpClient('10.0.0.1', 4660, 17)
	
	regs = mdb.read_fifo_queue(0x200)
	print('Read fifo queue:[{}]{}'.format(len(regs), regs))
	return
	
	
	#print(mdb.pdu_write_holding_registers(0x0000, (0x1234,0x5678,0x9abc)))
	print(mdb.pdu_write_holding_registers(0x0000, (cmd,0x5678,0x9abc)))
	regs = mdb.pdu_read_holding_registers(0x0000, 3)
	print('Read holding registers:[{}]{}'.format(len(regs), regs))
	return
	
	cnt = 8;
	#print(mdb.pdu_write_holding_registers(0x0001, ((cnt>>16)&0xffff, cnt&0xffff)))
	#print(mdb.pdu_write_holding_registers(0x0001, parregs))
	#print(mdb.pdu_write_holding_registers(0x0000, (cmd,)))
	
	if cmd == 1:
		print(mdb.pdu_write_holding_registers(0x0000, [cmd,] + parregs))
		while True:
			time.sleep(1)
			regs = mdb.read_fifo_queue(0x200)
			if regs:
				print('Read fifo queue:[{}]{}'.format(len(regs), regs))		
			else:
				break
	else:
		print(mdb.pdu_write_holding_registers(0x0000, (cmd,)))


if __name__ == '__main__':
	main()
