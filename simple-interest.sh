#!/usr/bin/env bash
# Calculate simple interest from principal, annual percentage rate and years.
set -euo pipefail

read_number() {
    local prompt="$1" variable="$2" value
    printf '%s\n' "$prompt"
    if ! IFS= read -r value; then
        printf 'Error: all three inputs are required.\n' >&2
        exit 1
    fi
    if [[ ! "$value" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
        printf 'Error: enter a non-negative number (for example, 1000 or 4.5).\n' >&2
        exit 1
    fi
    printf -v "$variable" '%s' "$value"
}

read_number 'Enter the principal:' principal
read_number 'Enter rate of interest per year (%):' rate
read_number 'Enter time period in years:' years

awk -v p="$principal" -v r="$rate" -v t="$years" \
    'BEGIN { printf "The simple interest is: %.2f\n", p * r * t / 100 }'
