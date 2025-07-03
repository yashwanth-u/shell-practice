#!/bin/bash

echo "All variables passed to the script: $@"
echo "Number of variables: $#"
echo "Script name: $0"
echo "Current Directory: $PWD"
echo "Current User: $USER"
echo "Home Directory: $HOME"
echo "PID of the current script: $$"
sleep 10&
echo "PID of the last background process: $!"