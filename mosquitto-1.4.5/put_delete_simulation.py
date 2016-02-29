#!/usr/bin/python
import time
import datetime
import random
import threading
import csv
import subprocess
from Queue import Queue
# thread class to run a command
class ExampleThread(threading.Thread):
	def __init__(self,threads,count,sumarray):
		threading.Thread.__init__(self)
#	self.threads = threads
		self.count = count
		self.sumarray = sumarray
	def run(self):
		while(self.count!=0):
			while(threads.empty() == False):
				process = threads.get()
				self.count -= 1
				p = subprocess.Popen(process.state, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, shell=True)
	 			while(True):
		    			for line in p.stdout:
						print line
	    				if(p.poll() != None):
						end = time.time()
#						print "Execution = " + str(end - process.start_time)
			    			self.sumarray.append(end - process.start_time)
						break;

class ProcessStore():
	def __init__(self,state,start_time):
		self.state = state
		self.start_time = start_time

mean = 1
count = 50

f = open('put_delete_simulation_results.csv', 'wt')
f1 = open('put_delete_simulation_service_time.csv', 'wt')
writer = csv.writer(f)
writer.writerow( ('Arrival Rate', 'Service Time','Throughput') )
service = csv.writer(f1)
service.writerow( ('Mean', 'Count', 'Service Time') )
while(mean < 100):
	sumarray = []
	threads = Queue()
	thread = ExampleThread(threads, count, sumarray)
	thread.start()
	sum = 0.0;
	for index in range(0,count):
		wait = random.expovariate(mean)
#		print "wait =" + str(wait)
		ip =  str(random.randint(10,100)) + "." + str(random.randint(0,9)) + "." +  str(random.randint(0,9)) + "." +  str(random.randint(0,9))
		port = random.randint(8000,9000)
		choose = random.randint(0,1)
                if choose == 0:
                        state = "xterm -e ./client/mosquitto_pub -t 'loc/delete' -m {0},{1} &".format(ip,port)
                else:
                        state = "xterm -e ./client/mosquitto_pub -t 'loc/put' -m {0},{1} &".format(ip,port)
		start_time = time.time()
		process = ProcessStore(state, start_time)
	        threads.put(process)
	        time.sleep(wait);
	thread.join();
	i = 1
	for val in sumarray:
		service.writerow((mean , i, val))
		i += 1
		sum += val
#	print "sum = " + str(sum) + "count = " + str(count)
	writer.writerow((mean , sum/count, (int)(count*3600/sum)))
	mean *= 2
f.close()

