#!/bin/bash

NUMBER=$1
if [ $NUMBER -lt 10 ]; then
    echo "The number is less than 10."
else
    echo "The number is 10 or greater."
