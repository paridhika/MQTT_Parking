#!/usr/bin/python
import time
import datetime
import random
import threading
import csv
import subprocess
import subprocess
from Queue import Queue
# thread class to run a command
class ExampleThread(threading.Thread):
	def __init__(self,threads,count,sumarray):
		threading.Thread.__init__(self)
#       self.threads = threads
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
#                                              	print "Execution = " + str(end - process.start_time)
		    				self.sumarray.append(end - process.start_time)
						break;
class ProcessStore():
	def __init__(self,state,start_time):
		self.state = state
		self.start_time = start_time
mean = 1
count = 50
f1 = open('put_delete_get_simulation_service_time.csv', 'wt')
f = open('put_delete_get_simulation_result.csv', 'wt')
writer = csv.writer(f)
service = csv.writer(f1)
writer.writerow( ('Arrival Rate', 'Service Time','Throughput') )
service.writerow( ('Mean', 'Count', 'Service Time') )
while(mean < 1000):
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
		choose = random.randint(0,2)
                if choose == 0:
			state = "xterm -e ./coap-client -m delete coap://[::1]/location &"
                elif choose == 1:
			state = "xterm -e ./coap-client -m put coap://[::1]/location -e {0},8000 &".format(ip)
		else:
			state = "./coap-client -m get coap://[::1]/location &"
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
#       print "sum = " + str(sum) + "count = " + str(count)
	writer.writerow((mean , sum/count, (int)(count*3600/sum)))
	mean *= 2
f.close()

