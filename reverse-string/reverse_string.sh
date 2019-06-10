#!/usr/bin/env bash

if [[ -z "$@" ]]; then
  echo ""
  exit 0

else
  input=$@
  length=${#input}
  for ((i=length-1;i>=0;i--)); do
    output+=${input:$i:1}
  done
  echo $output

fi
