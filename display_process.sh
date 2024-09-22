#!/bin/bash

for (( i=0; i<3; i++ )); do
  ps aux | head -n 10
  sleep 3
done
