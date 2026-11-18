#!/usr/bin/env bash
set -euo pipefail

resolve_builder() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 57 ) % 997))
  done
  echo "$result"
}

resolve_builder 57 57
