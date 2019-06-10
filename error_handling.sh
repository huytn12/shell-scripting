#!/usr/bin/env bash

prog_name=$(basename $0)
name=$1

usage() {
  echo "Usage: ./$prog_name <greetee>"
  exit 1
}

greeting() {
  echo "Hello, $name"
  exit 0
}

if (( $# == 0 )); then
  usage
else
  greeting
fi
