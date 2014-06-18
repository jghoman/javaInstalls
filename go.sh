#!/usr/bin/env bash
set -x
set -e

case "$1" in
  "6" )
    FILE="jdk-6u45-linux-x64.bin"
    LOCATION="linux/6";;
  "7" )
    FILE="jdk-7u55-linux-x64.tar.gz"
    LOCATION="linux/7";;
  "8" )
    FILE="jdk-8u5-linux-x64.tar.gz"
    LOCATION="linux/8";;
  * )
    echo >&2 "Invalid option, must be 6|7|8";
    exit 1;;
esac

cat $LOCATION/*split* > ./$FILE

