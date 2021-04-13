#!/bin/bash

# echo "Hello $1"
# time=$(date)
# echo "::set-output name=time::$time"

gcc -o $1 src/main.c
./$1
