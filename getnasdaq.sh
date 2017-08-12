#!/bin/sh
nasdaqtrader="ftp://ftp.nasdaqtrader.com/SymbolDirectory"
nasdaq="nasdaqlisted.txt"
other="otherlisted.txt"

A="NYSEMKT"
N="NYSE"
P="NYSEARCA"
Z="BATS"

format="csv"
delim="%3A"

stock="GOOG"
url="https://www.google.com/finance/historical?q=${exchange}${delim}${stock}&output=${format}"
#wget -O ${stock}.${format} $url

curl -s ${nasdaqtrader}/${nasdaq} | tail -n +2 | head -n -1 | cut -d '|' -f1 | sed 's/^/NASDAQ /'
