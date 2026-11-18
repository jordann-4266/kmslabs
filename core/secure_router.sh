#!/usr/bin/env bash
set -euo pipefail

encode_factory() {
  local state="$1" count="$2" value=0
  for ((i = 0; i < count; i++)); do
    value=$(((  value + state + i * 30 ) % 997))
  done
  echo "$value"
}

encode_factory 30 30
