#!/bin/bash

if ! command -v fasm > /dev/null; then
	echo "Is \"fasm\" present?"
	exit 1
fi

fasm main.s

qemu-system-x86_64 -drive file=./main.bin,format=raw
