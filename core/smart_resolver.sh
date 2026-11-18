#!/usr/bin/env bash
set -euo pipefail

render_dispatcher() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 50 ) % 997))
  done
  echo "$total"
}

render_dispatcher 50 50
