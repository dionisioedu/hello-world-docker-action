#!/bin/sh

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"

gcc --version

cd src
gcc -o $1 main.c
./$1