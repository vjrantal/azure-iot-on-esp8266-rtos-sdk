#!/bin/bash

set -ex
set -o pipefail

ESP8266_BIN=./ESP8266_RTOS_SDK/bin

esptool.py --port /dev/ttyUSB0 write_flash --flash_freq 40m --flash_mode qio --flash_size 32m-c1 0x1000 ./bin/upgrade/user1.4096.new.6.bin 0x0 $ESP8266_BIN/boot_v1.6.bin 0x3FC000 $ESP8266_BIN/esp_init_data_default.bin 0x3FE000 $ESP8266_BIN/blank.bin
