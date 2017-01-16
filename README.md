# Introduction

A repository with an Azure IoT sample that runs on the [ESP8266 RTOS SDK](https://github.com/espressif/ESP8266_RTOS_SDK).

# Instructions

The repository root contains bash scripts to help setup, build and flash the software.

## setup.sh

Clones the ESP8266 RTOS SDK and the Azure IoT C SDK to folders ESP8266_RTOS_SDK and azure-iot-sdk-c.

## build.sh

Builds the SDKs cloned by the setup script using the [esp-open-sdk](https://github.com/pfalcon/esp-open-sdk) which is required
to be installed separately. After installing esp-open-sdk, verify that `xtensa-lx106-elf-gcc` binary is found from the path.

## flash.sh

Flashes the built image using [esptool.py](https://github.com/espressif/esptool).
