#!/bin/bash
n=1

until [ $n -gt 5 ]
do
  echo "until loop: $n"
  n=$((n+1))
done
