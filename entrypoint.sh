#!/bin/sh

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"

gcc --version

gcc -o src/$1 src/main.c
cd src
./$1