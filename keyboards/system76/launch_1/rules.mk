# MCU name
MCU = atmega32u4

# CPU frequency divided by two since AVR is at 3.3 V
F_CPU = 8000000

# External oscillator is 16 MHz
F_USB = 16000000

# Bootloader selection
#   Teensy       halfkay
#   Pro Micro    caterina
#   Atmel DFU    atmel-dfu
#   LUFA DFU     lufa-dfu
#   QMK DFU      qmk-dfu
#   ATmega32A    bootloadHID
#   ATmega328P   USBasp
BOOTLOADER = atmel-dfu

# Build options
#   change yes to no to disable
BOOTMAGIC_ENABLE = yes       # Bootmagic Lite
MOUSEKEY_ENABLE = no        # Mouse keys
EXTRAKEY_ENABLE = yes       # Audio control and system control
CONSOLE_ENABLE = no         # Console for debug
COMMAND_ENABLE = no         # Commands for debug and configuration
DYNAMIC_KEYMAP_ENABLE = yes # Reconfigurable keyboard without flashing firmware
NKRO_ENABLE = yes           # USB N-key rollover
RAW_ENABLE = yes            # Raw HID commands (used by Keyboard Configurator)
BACKLIGHT_ENABLE = no       # RGB backlight (conflicts with RGB matrix)
RGBLIGHT_ENABLE = no        # Enable keyboard RGB underglow
RGB_MATRIX_ENABLE = yes     # RGB matrix
RGB_MATRIX_DRIVER = WS2812
RGB_MATRIX_CUSTOM_KB = yes  # Custom keyboard effects
AUDIO_ENABLE = no           # Audio output
LTO_ENABLE = yes            # Link-time optimization for smaller binary
AUTO_SHIFT_ENABLE = yes     # Enables Auto Shift

# Add System76 EC command interface as well as I2C and USB mux drivers
SRC += system76_ec.c usb_mux.c
QUANTUM_LIB_SRC += i2c_master.c
