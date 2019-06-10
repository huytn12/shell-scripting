#!/usr/bin/env bash

usage() {
  echo "Usage: $0 <year>" >&2
  exit 1
}

# check number of params
if [[ -z "$#" ]]; then
  usage
fi

# check if param is an integer
if ! [[ $1 =~ ^[0-9]+$ ]]; then
  usage
fi

if [[ $(($1 % 4)) == 0 ]] \
  && [[ $(($1 % 100)) != 0 ]] \
  || [[ $(($1 % 400)) == 0 ]]; then
  echo "true"
else
  echo "false"
fi
