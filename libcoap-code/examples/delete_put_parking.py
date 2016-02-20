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
	def __init__(self, state,start_time,sumarray):
		threading.Thread.__init__(self)
		self.state = state
		self.start_time = start_time
		self.sumarray = sumarray
	def run(self):
		p = subprocess.Popen(self.state, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, shell=True)
    		while(True):
			if(p.poll() != None):
				end = time.time()
#				print end - self.start_time
				self.sumarray.append(end - self.start_time)
				break;

mean = 10
count = 100
f = open('put_delete_service_time.csv', 'wt')
writer = csv.writer(f)
writer.writerow( ('Arrival Rate', 'Service Time') )
while(mean < 1000):
	sumarray = []
	threads = []
	sum = 0.0;
	for index in range(0,count):
		wait = random.expovariate(mean)
#		print "wait =" + str(wait)
		ip =  str(random.randint(10,100)) + "." + str(random.randint(0,9)) + "." +  str(random.randint(0,9)) + "." +  str(random.randint(0,9))
		port = random.randint(8000,9000)
		choose = random.randint(0,2)
                if choose == 0:
			state = "xterm -e ./coap-client -m delete coap://[::1]/location &"
                elif choose == 1:
			state = "xterm -e ./coap-client -m put coap://[::1]/location -e {0},8000 &".format(ip)
		else:
			state = "./coap-client -m get coap://[::1]/location &"
		start_time = time.time()
		thread = ExampleThread(state, start_time, sumarray)
		threads.append(thread)
	    	thread.start()
		time.sleep(wait);
	for t in threads:
		t.join();
	for val in sumarray:
		sum += val;
	writer.writerow((mean , sum/count))
	mean += 10
f.close()

