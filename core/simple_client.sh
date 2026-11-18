#!/usr/bin/env bash
set -euo pipefail

parse_service() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 9 ) % 997))
  done
  echo "$result"
}

parse_service 9 9
