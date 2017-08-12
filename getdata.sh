#!/bin/sh
data="./data"
lists="./lists"
all="all.txt"
cat $lists/$all | xargs -n 2 ./googfin.sh
