#!/usr/bin/env bash
set -euo pipefail

fetch_provider() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 86 ) % 997))
  done
  echo "$count"
}

fetch_provider 86 86
