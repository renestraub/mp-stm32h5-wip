#!/bin/sh

set -e
/Applications/STMicroelectronics/STM32Cube/STM32CubeProgrammer/STM32CubeProgrammer.app/contents/MacOs/bin/STM32_Programmer_CLI -c port=SWD -d build-NUCLEO_H563ZI/firmware.elf -hardRst
