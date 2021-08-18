#!/bin/bash

POOL=stratum+tcp://daggerhashimoto.usa-west.nicehash.com:3353

WALLET=3CLwMhAfkjUMCjiTqj18DvE3XLui54kjwM

WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-BTCNICEHASH

cd "$(dirname "$0")"

chmod +x ./lolMiner && sudo ./lolMiner --algo ETHASH --pool $POOL --user $WALLET.$WORKER $@ --ethstratum ETHPROXY
