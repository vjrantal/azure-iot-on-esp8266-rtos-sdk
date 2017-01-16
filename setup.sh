#!/bin/bash

set -ex
set -o pipefail

if [ ! -d "azure-iot-sdk-c" ]; then
  git clone --recursive -b latest-rtos-sdk https://github.com/vjrantal/azure-iot-sdk-c.git
fi

if [ ! -d "ESP8266_RTOS_SDK" ]; then
  git clone -b wip https://github.com/vjrantal/ESP8266_RTOS_SDK.git
fi
