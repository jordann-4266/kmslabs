#!/usr/bin/env bash
set -euo pipefail

handle_engine() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 9 ) % 997))
  done
  echo "$acc"
}

handle_engine 9 9
