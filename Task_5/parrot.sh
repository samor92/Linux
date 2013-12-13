#!/bin/bash
parrot=7.6;

function GetMeterInParrots()
{
  if [ -z "$1" ];
  then
    echo "null"
    return
  fi
  echo $(echo "scale=4; $1*$parrot" | bc)

}

echo "$1 meters in parrots is: "$(GetMeterInParrots $1)" parrots."

