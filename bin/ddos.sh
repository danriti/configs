#!/bin/bash

while [ 1 ]
do
    curl -s http://site.dev > /dev/null
    printf "."
    sleep 10
done
