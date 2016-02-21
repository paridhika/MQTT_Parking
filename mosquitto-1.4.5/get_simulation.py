#!/usr/bin/python
import time
import datetime
import random
import threading
import csv
import subprocess
from array import array
# thread class to run a command
class ExampleThread(threading.Thread):
	def __init__(self, state1,state2,start_time,sumarray):
		threading.Thread.__init__(self)
		self.state1 = state1
		self.state2 = state2
		self.start_time = start_time
		self.sumarray = sumarray
	def run(self):
		p = subprocess.Popen(self.state1, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, shell=True)
		q = subprocess.Popen(self.state2, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, shell=True)
    		while(True):
			if(p.poll() != None and q.poll()!= None):
				end = time.time()
#				print end - self.start_time
				self.sumarray.append(end - self.start_time)
				break;

mean = 10
count = 10
f = open('get_simulation_results.csv', 'wt')
writer = csv.writer(f)
writer.writerow( ('Arrival Rate', 'Service Time','Throughput') )
while(mean < 1000000):
	sumarray = []
	threads = []
	sum = 0.0;
	for index in range(0,count):
		wait = random.expovariate(mean)
#		print "wait =" + str(wait)
		ip =  str(random.randint(10,100)) + "." + str(random.randint(0,9)) + "." +  str(random.randint(0,9)) + "." +  str(random.randint(0,9))
		port = random.randint(8000,9000)
		start_time = time.time()
		state1 = "(./client/mosquitto_sub -t 'loc/get' &)"
		state2 = "(xterm -e ./client/mosquitto_pub -t 'loc/get' -m {0},{1} &)".format(ip,port)
		thread = ExampleThread(state1, state2, start_time, sumarray)
		threads.append(thread)
	    	thread.start()
		time.sleep(wait);
	for t in threads:
		t.join();
	for val in sumarray:
		sum += val;
	writer.writerow((mean , sum/count, (int)(count/sum)))
	mean *= 2
#	print mean
f.close()

