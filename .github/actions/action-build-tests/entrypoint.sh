#!/bin/bash

echo "String received: $1"
time=$(date)
echo "::set-output name=time::$time"

# echo "Build executable..."
# gcc -o myapp src/main.c
# ./myapp
