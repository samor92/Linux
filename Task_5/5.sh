#!/bin/bash

getRandomValue()
{
   x=$#
   if [ $x -eq 0 ]; then
      echo "null"
      return
   fi
   rVal=$RANDOM
   let " rVal %= x"
   shift $(($rVal))
   x=$1
   echo $x
}


res=$(getRandomValue "$@")
echo "$res"
