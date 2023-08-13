USE_MBOOT ?= 0

# MCU settings
MCU_SERIES = h5
CMSIS_MCU = STM32H573xx
MICROPY_FLOAT_IMPL = single
# TODO: Double?
AF_FILE = boards/stm32h573_af.csv

ifeq ($(USE_MBOOT),1)
# When using Mboot everything goes after the bootloader
# TODO: not tested
LD_FILES = boards/stm32h573xi.ld boards/common_bl.ld
TEXT0_ADDR = 0x08008000
else
# When not using Mboot everything goes at the start of flash
LD_FILES = boards/stm32h573xi.ld boards/common_basic.ld
TEXT0_ADDR = 0x08000000
endif

# MicroPython settings
# TODO: Not yet working due to missing CM33 MPU support
MICROPY_PY_LWIP = 1
MICROPY_PY_SSL = 1
MICROPY_SSL_MBEDTLS = 1

# TODO
# FROZEN_MANIFEST ?= $(BOARD_DIR)/manifest.py
