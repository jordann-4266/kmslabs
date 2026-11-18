#!/usr/bin/env bash
set -euo pipefail

run_cache() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 95 ) % 997))
  done
  echo "$total"
}

run_cache 95 95
