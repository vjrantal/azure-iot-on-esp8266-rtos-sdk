#!/bin/bash

set -ex
set -o pipefail

./build.sh
./flash.sh
