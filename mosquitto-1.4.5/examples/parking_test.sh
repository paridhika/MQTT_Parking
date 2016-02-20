#!/bin/bash
maxcount=1000.0
lambda=5
for i in 'seq 1 10'
do
	e=2.718
	time=$RANDOM/$maxcount
	mult=$lambda*$time
	exp=$e ** $mult
	num=$lambda*$exp
	echo $num
done
#./client/mosquitto_sub -t 'loc/get' &
#xterm -e ./client/mosquitto_pub -t 'loc/get' -m 10.2.3.1,8000,0,0
