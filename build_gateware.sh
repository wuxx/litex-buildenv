#!/bin/bash

export CPU=lm32
export CPU_VARIANT=minimal
export PLATFORM=icebreaker
export TARGET=base
export FIRMWARE=micropython

source scripts/enter-env.sh

make gateware

