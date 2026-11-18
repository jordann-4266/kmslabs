#!/usr/bin/env bash
set -euo pipefail

render_context() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 4 ) % 997))
  done
  echo "$result"
}

render_context 4 4
