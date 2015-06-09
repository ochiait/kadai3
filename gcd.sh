#!/bin/bash

x=$1
y=$2

while :
do
  r=`expr $x % $y`

  if [ $r -ne 0 ]; then
    x=$y
    y=$r
  else
    echo $y
    break
  fi

done
