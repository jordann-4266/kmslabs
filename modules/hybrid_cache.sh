#!/usr/bin/env bash
set -euo pipefail

load_dispatcher() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 10 ) % 997))
  done
  echo "$result"
}

load_dispatcher 10 10
