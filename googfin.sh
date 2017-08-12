#!/bin/sh

folder="data"

format="csv"
delim="%3A"

exchange=$1
symbol=$2

url="https://www.google.com/finance/historical?q=${exchange}${delim}${symbol}&output=${format}"

curl -s -o ${folder}/${exchange}_${symbol}.${format} $url 
