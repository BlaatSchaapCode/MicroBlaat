LD_DIR = $(UCDEV_ROOT)/build/linker
SLIB_ROOT = $(UCDEV_ROOT)/build/staticlib

LIBHLUSBD_ROOT =  $(UCDEV_ROOT)/lib/libhlusbd
LIBHALGLUE_ROOT = $(UCDEV_ROOT)/lib/libhalglue
LIBHALGLUE_INC = $(LIBHALGLUE_ROOT)/hal

CMSIS_ROOT =                $(UCDEV_ROOT)/ext/CMSIS_5/

CUBEF0_ROOT =             $(UCDEV_ROOT)/ext/STM32CubeF0
CUBEF0_HAL_SRC_ROOT =     $(CUBEF0_ROOT)/Drivers/STM32F0xx_HAL_Driver/Src
CUBEF0_HAL_INC_ROOT =     $(CUBEF0_ROOT)/Drivers/STM32F0xx_HAL_Driver/Inc

CUBEF1_ROOT =             $(UCDEV_ROOT)/ext/STM32CubeF1
CUBEF1_HAL_SRC_ROOT =     $(CUBEF1_ROOT)/Drivers/STM32F1xx_HAL_Driver/Src
CUBEF1_HAL_INC_ROOT =     $(CUBEF1_ROOT)/Drivers/STM32F1xx_HAL_Driver/Inc

CUBEF2_ROOT =             $(UCDEV_ROOT)/ext/STM32CubeF2
CUBEF2_HAL_SRC_ROOT =     $(CUBEF2_ROOT)/Drivers/STM32F2xx_HAL_Driver/Src
CUBEF2_HAL_INC_ROOT =     $(CUBEF2_ROOT)/Drivers/STM32F2xx_HAL_Driver/Inc

CUBEF3_ROOT =             $(UCDEV_ROOT)/ext/STM32CubeF3
CUBEF3_HAL_SRC_ROOT =     $(CUBEF3_ROOT)/Drivers/STM32F3xx_HAL_Driver/Src
CUBEF3_HAL_INC_ROOT =     $(CUBEF3_ROOT)/Drivers/STM32F3xx_HAL_Driver/Inc

CUBEF4_ROOT =             $(UCDEV_ROOT)/ext/STM32CubeF4
CUBEF4_HAL_SRC_ROOT =     $(CUBEF4_ROOT)/Drivers/STM32F4xx_HAL_Driver/Src
CUBEF4_HAL_INC_ROOT =     $(CUBEF4_ROOT)/Drivers/STM32F4xx_HAL_Driver/Inc
CUBEF4_CMSIS_INC_ROOT =   $(CUBEF4_ROOT)/Drivers/CMSIS/Device/ST/STM32F4xx/Include/

NRFX_ROOT =               $(UCDEV_ROOT)/ext/nrfx

GD32F1_ROOT =               $(UCDEV_ROOT)/ext/GD32F10x_Firmware_Library
GD32F1_FWLIB_ROOT =       $(GD32F1_ROOT)/Firmware
GD32F1_STDPH_INC  =       $(GD32F1_FWLIB_ROOT)/GD32F10x_standard_peripheral/Include
GD32F1_STDPH_SRC  =       $(GD32F1_FWLIB_ROOT)/GD32F10x_standard_peripheral/Source
GD32F1_USBOTG_SRC  =       $(GD32F1_FWLIB_ROOT)/GD32F10x_usbfs_driver/Source
GD32F1_USBOTG_INC  =       $(GD32F1_FWLIB_ROOT)/GD32F10x_usbfs_driver/Include
GD32F1_USBD_SRC   =       $(GD32F1_FWLIB_ROOT)/GD32F10x_usbd_driver/Source
GD32F1_USBD_INC   =       $(GD32F1_FWLIB_ROOT)/GD32F10x_usbd_driver/Include
GD32F1_CMSIS_SRC  =       $(GD32F1_FWLIB_ROOT)/CMSIS/GD/GD32F10x/Source
GD32F1_CMSIS_INC  =       $(GD32F1_FWLIB_ROOT)/CMSIS/GD/GD32F10x/Include

GD32VF1_FWLIB_ROOT =        $(UCDEV_ROOT)/ext/GD32VF103_Firmware_Library/Firmware
GD32VF1_STDPH_ROOT =        $(GD32VF1_FWLIB_ROOT)/GD32VF103_standard_peripheral
GD32VF1_STDPH_INC  =        $(GD32VF1_FWLIB_ROOT)/GD32VF103_standard_peripheral/Include
GD32VF1_STDPH_SRC  =        $(GD32VF1_FWLIB_ROOT)/GD32VF103_standard_peripheral/Source
GD32VF1_USBOTG_SRC  =        $(GD32VF1_FWLIB_ROOT)/GD32VF103_usbfs_driver/Source
GD32VF1_USBOTG_INC  =        $(GD32VF1_FWLIB_ROOT)/GD32VF103_usbfs_driver/Include
GD32VF1_RISCV_DRV  =        $(GD32VF1_FWLIB_ROOT)/RISCV/drivers
GD32VF1_RISCV_STUB =        $(GD32VF1_FWLIB_ROOT)/RISCV/stubs
GD32VF1_ECLIPSE    =        $(GD32VF1_FWLIB_ROOT)/RISCV/env_Eclipse
 
