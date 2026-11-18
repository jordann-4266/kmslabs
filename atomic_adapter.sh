#!/usr/bin/env bash
set -euo pipefail

fetch_builder() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 19 ) % 997))
  done
  echo "$result"
}

fetch_builder 19 19
