#!/usr/bin/env bash

input="$1"

a=0; c=0; g=0; t=0

function print_result() {
  echo "A: ${a}"
  echo "C: ${c}"
  echo "G: ${g}"
  echo "T: ${t}"
  exit
}

if (( $# == 0 )); then
  print_result
  exit 1
fi

for i in $(seq 0 ${#input})-1; do
  char=${input:i-1:1}
  if [[ "${char}" = "A" ]]; then
    a=$((a+1))
  elif [[ "${char}" = "C" ]]; then
    c=$((c+1))
  elif [[ "${char}" = "G" ]]; then
    g=$((g+1))
  elif [[ "${char}" = "T" ]]; then
    t=$((t+1))
  else
    echo "Invalid nucleotide in strand"
    exit 1
  fi
done
print_result
