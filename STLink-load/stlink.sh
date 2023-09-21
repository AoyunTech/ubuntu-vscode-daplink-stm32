#!/bin/bash

SPEED=2000
ADDR=0x8000000

st-flash --reset --freq=$SPEED write $1 $ADDR
