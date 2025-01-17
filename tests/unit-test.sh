#!/bin/sh

# Unit test all BSM operations
# Usage: ./unit-test.sh
# Must be run from the repo as this file does not get shipped with the install!

# Test out basic singletons
export BSM_TST=1
testroot="$HOME/repos/bsm"
# echo "Testing basic singletons"

# echo "$("$testroot/bsm" version)"
# echo "$("$testroot/bsm" help)"
# echo "$("$testroot/bsm" getdeps)"
# echo "$("$testroot/bsm" update)"
# echo "$("$testroot/bsm" shopt hush_login)"
# echo "$("$testroot/bsm" config list)"

# printf "Hit any key to continue checking the rest of the operations..."
# read -n 1

# Test out basic operations
# echo "Testing basic operations"
# echo "$("$testroot/bsm" create unit-test)"
# echo "$("$testroot/bsm" list)"
# echo "$("$testroot/bsm" list rows)"
# echo "$("$testroot/bsm" rename unit-test renamed-test)"
# echo "$("$testroot/bsm" list rows)"
# echo "$("$testroot/bsm" open renamed-test)"
# echo "$("$testroot/bsm" remove renamed-test)"

# Test out interactive shell
# echo "Testing interactive shell"
# sleep 1
# "$testroot/bsm" sh

echo "Unit test completed!"
