#!/usr/bin/python
import time
import datetime
import random
import os
import csv
mean = 10
count = 10
f = open('service_time.csv', 'wt')
writer = csv.writer(f)
writer.writerow( ('Arrival Rate', 'Service Time') )
while(mean < 10000):
	sum = 0;
	for index in range(0,count):
		wait = random.expovariate(mean)
		print "wait =" + str(wait)
		ip =  str(random.randint(10,100)) + "." + str(random.randint(0,9)) + "." +  str(random.randint(0,9)) + "." +  str(random.randint(0,9))
		port = random.randint(8000,9000)
	 	choose = random.randint(0,1)
	 	if choose == 0:
			print "delete"
			start = time.time()
			state1 = "xterm -e ./client/mosquitto_pub -t 'loc/delete' -m {0},{1} &".format(ip,port)
			os.system(state1)
		else:
			print "put"
			start = time.time()
			state2 = "xterm -e ./client/mosquitto_pub -t 'loc/put' -m {0},{1} &".format(ip,port)
			os.system(state2)

		end = time.time()
		print end - start
		sum += (end - start)
		time.sleep(wait);
	writer.writerow( (mean , sum/count))
	mean *= 2
f.close()

