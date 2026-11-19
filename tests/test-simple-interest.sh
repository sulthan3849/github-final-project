#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

check_result() {
    local label="$1" input="$2" expected="$3" output
    output=$(printf '%b' "$input" | bash ./simple-interest.sh)
    if [[ "$output" != *"The simple interest is: $expected"* ]]; then
        printf 'FAIL: %s\n%s\n' "$label" "$output" >&2
        exit 1
    fi
    printf 'PASS: %s\n' "$label"
}

check_result '1000 principal, 5 percent, 3 years' '1000\n5\n3\n' '150.00'
check_result 'decimal principal, rate and time' '1250.50\n4.5\n2.5\n' '140.68'
check_result 'zero interest rate' '1000\n0\n5\n' '0.00'
check_result 'zero duration' '1000\n5\n0\n' '0.00'

for input in 'abc\n5\n3\n' '-100\n5\n3\n' '100\n5\n' '100\n1e5\n2\n'; do
    if printf '%b' "$input" | bash ./simple-interest.sh > /dev/null 2>&1; then
        printf 'FAIL: invalid or incomplete input was accepted\n' >&2
        exit 1
    fi
done
printf 'PASS: invalid, negative, incomplete and unsupported input rejected\n'
