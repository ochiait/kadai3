#!/bin/bash

tmp=/tmp/$$

ERROR_EXIT () {
    echo "$1" >&2
    rm -f $tmp-*
    exit 1
}

###########
# TEST1
###########

echo 8 > $tmp-ans
    ./gcd.sh 32 24 > $tmp-out || ERROR_EXIT "TEST1-1"
    diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"

echo OK
rm -f $tmp-*
exit 0


###########
# TEST2
###########

echo 7 > $tmp-ans
    ./gcd.sh 21 14 > $tmp-out || ERROR_EXIT "TEST2-1"
    diff $tmp-ans $tmp-out || ERROR_EXIT "TEST2-2"

echo OK
rm -f $tmp-*
exit 0


###########
# TEST3
###########

echo 6 > $tmp-ans
    ./gcd.sh 24 18 > $tmp-out || ERROR_EXIT "TEST3-1"
    diff $tmp-ans $tmp-out || ERROR_EXIT "TEST3-2"

echo OK
rm -f $tmp-*
exit 0
