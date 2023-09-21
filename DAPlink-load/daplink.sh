#!/bin/bash

SPEED=1000
DAPLINK=/usr/local/share/openocd/scripts/interface/cmsis-dap.cfg
MCU_CFG=/usr/local/share/openocd/scripts/target/stm32f4x.cfg

openocd -d2 -f $DAPLINK \
	-c "transport select swd" \
	-c "adapter speed $SPEED" \
	-f $MCU_CFG \
	-c "init" \
	-c "reset init" \
	-c "program $1 verify reset exit"
