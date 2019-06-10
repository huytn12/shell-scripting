#!/usr/bin/env bash

number=$1
sound=""

if ! (( number % 3 )); then
  sound+="Pling"
fi
if ! (( number % 5 )); then
  sound+="Plang"
fi
if ! (( number % 7 )); then
  sound+="Plong"
fi
if [[ -z $sound ]];then
  sound+="$number"
fi
echo $sound

