#ifndef MODBUSDEF_H
#define MODBUSDEF_H
/*
static inline uint16_t ntohs(uint16_t netshort) {
  return ((netshort & 0xff) << 8) | (netshort >> 8);
}
*/
/*
 * Структура параметров испытания
 */
struct STR_TEST_PARAM {
	uint32_t num_cyc;				// количество экспл циклов
	uint32_t in_speed;				// частота вращения вх вала
	uint32_t max_in_rot;			// полный рабочий ход вх вала
	uint32_t max_out_torque;		// макс тормозной крут момент на выходном валу
	uint16_t in_rot_tab[5];			// циклограмма рабочий ход % от max_in_rot
	uint16_t out_torque_tab[5];		// циклограмма торм крут момент % от max_out_torque
} __attribute__((packed));

/*
 * Структура сетевых параметров контроллера
 */
struct STR_DEVICE_NETW_PARAM {
	uint8_t mac[6];					// MAC
	uint8_t ip[4];					// IP
} __attribute__((packed));

/*
 * Структура параметров контроллера
 */
struct STR_DEVICE_FW_PARAM {
	uint16_t device_rev;			// номер исполнения контроллера
	uint32_t firmware_rev;			// Версия ПО
} __attribute__((packed));

/*
 * Структура текущих данных испытания
 */
struct STR_TEST_DATA {
	int32_t in_cnt_rot;				// счетчик оборотов вх вала
	int32_t in_torque;				// момент на вх валу
	int32_t in_speed;				// частота вращения вх вала
	int32_t out_cnt_rot;			// счетчик оборотов вых вала
	int32_t out_torque;				// момент на вых валу
	int32_t out_speed;				// частота вращения вых вала
	uint32_t cyc_cnt;				// счетчик проведенных циклов
	uint32_t fsm_state;				// текущее состояние контроллера
} __attribute__((packed));

#endif
