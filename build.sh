#!/bin/bash

set -ex
set -o pipefail

export SCRIPT_ROOT=$(cd "$(dirname "$0")" && pwd)
export AZURE_IOT_SDK_C=$SCRIPT_ROOT/azure-iot-sdk-c

export ESP8266_RTOS_SDK=$SCRIPT_ROOT/ESP8266_RTOS_SDK

export SDK_PATH=$ESP8266_RTOS_SDK
export BIN_PATH=$SCRIPT_ROOT/bin

if [[ $1 == "--third-party" ]]; then
  cd $ESP8266_RTOS_SDK/third_party
  bash make_all_lib.sh
  cd $SCRIPT_ROOT
fi

$AZURE_IOT_SDK_C/build_all/esp8266/build.sh
bash gen_misc.sh
