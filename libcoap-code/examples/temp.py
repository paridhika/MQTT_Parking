#!/usr/bin/python
import time
import random
import os
mean = 5
for index in range(0,10):
	wait = mean * random.expovariate(mean)
	print wait
	ip =  str(random.randint(10,100)) + "." + str(random.randint(0,9)) + "." +  str(random.randint(0,9)) + "." +  str(random.randint(0,9))
	choose = random.randint(0,2)
	if choose == 0:
		print "delete"
		state1 = "xterm -e ./coap-client -m delete coap://[::1]/location &"
		os.system(state1)
	elif choose == 1:
		print "put"
        	state2 = "xterm -e ./coap-client -m put coap://[::1]/location -e {0},8000 &".format(ip)
		os.system(state2)
	else:
		print "get"
		state3 = "./coap-client -m get coap://[::1]/location &"
		os.system(state3)
	time.sleep(wait);
