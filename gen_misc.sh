#!/bin/bash

set -ex
set -o pipefail

make clean

boot=new
app=1
spi_speed=40
spi_mode=QIO
spi_size_map=6

make BOOT=$boot APP=$app SPI_SPEED=$spi_speed SPI_MODE=$spi_mode SPI_SIZE_MAP=$spi_size_map
