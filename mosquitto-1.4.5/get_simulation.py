#!/usr/bin/python
import time
import datetime
import random
import threading
import csv
import subprocess
from array import array
from Queue import Queue
# thread class to run a command
class ExampleThread(threading.Thread):
	def __init__(self,threads,count,sumarray):
		threading.Thread.__init__(self)
#		self.threads = threads
		self.count = count
		self.sumarray = sumarray
	def run(self):
		while(self.count!=0):
			while(threads.empty() == False):
				process = threads.get()
				self.count -= 1
				p = subprocess.Popen(process.state1, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, shell=True)
				q = subprocess.Popen(process.state2, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, shell=True)
				while(True):
					for line in p.stdout:
						print line
					if(p.poll() != None and q.poll()!= None):
						end = time.time()
#						print "Execution = " + str(end - process.start_time)
						self.sumarray.append(end - process.start_time)
						break;

class ProcessStore():
	def __init__(self,state1,state2,start_time):
		self.state1 = state1
		self.state2 = state2
		self.start_time = start_time

mean = 0.2
count = 50
f = open('get_simulation_results.csv', 'wt')
f1 = open('get_simulation_service_time.csv', 'wt')
writer = csv.writer(f)
writer.writerow( ('Arrival Rate', 'Service Time','Throughput per hour') )
service = csv.writer(f1)
service.writerow( ('Mean', 'Count', 'Service Time') )
while(mean < 10):
	sumarray = []
	threads = Queue()
	sum = 0.0;
	thread = ExampleThread(threads, count, sumarray)
	thread.start()
	for index in range(0,count):
		wait = random.expovariate(mean)
#		print "wait =" + str(wait)
		ip =  str(random.randint(10,100)) + "." + str(random.randint(0,9)) + "." +  str(random.randint(0,9)) + "." +  str(random.randint(0,9))
		port = random.randint(8000,9000)
		start_time = time.time()
		state1 = "(./client/mosquitto_sub -t 'loc/get' &)"
		state2 = "(xterm -e ./client/mosquitto_pub -t 'loc/get' -m {0},{1} &)".format(ip,port)
		process = ProcessStore(state1, state2, start_time)
		threads.put(process)
		time.sleep(wait);
	thread.join();
	i = 1
	for val in sumarray:
		service.writerow( (mean,i,val) )
		sum += val
		i += 1
#	print "sum = " + str(sum) + "count = " + str(count)
	writer.writerow((mean , sum/count, (int)(count*3600/sum)))
	mean *= 2
f.close()

