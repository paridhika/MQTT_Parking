#!/bin/bash
maxcount=1000
lambda=0.5
for ((i=0;i<5;i++));
do
	e=2.718
	time=$RANDOM/$maxcount*1.0
	mult=-1*$lambda*$time
	exp=$e^$mult
	num=$lambda*$exp
	echo $num
	x=$RANDOM%10
	y=$RANDOM%10
#	xterm -e ./client/mosquitto_sub -t 'loc/get' &
#	xterm -e ./client/mosquitto_pub -t 'loc/get' -m 10.2.3.1,8000,$x,$y &
#	xterm -e ./client/mosquitto_pub -t 'loc/put' -m 10.2.3.1,8000,$x,$y &
	sleep `echo $time`
done
