
OPT = -DVERSION_1=$(shell date +"%-g")
OPT += -DVERSION_2=$(shell date +"%-m")
OPT += -DVERSION_3=$(shell date +"%-d")
OPT += -DVERSION_4=$(shell date +"%-H")
OPT += -DVERSION_5=$(shell date +"%-M")
OPT += -DVERSION_6=$(shell date +"%-S")

all: main.c
	gcc  -o test main.c $(OPT)

