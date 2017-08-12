#!/bin/sh
folder="./lists"
./getnasdaq.sh > $folder/nasdaq.txt
./getother.sh > $folder/others.txt
cat $folder/nasdaq.txt $folder/others.txt > $folder/all.txt

