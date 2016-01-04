## PBS (TORQUE) CHEET SHEET

The Center for Advanced Research Computing uses the Torque, aka "PBS", job schedular. (Note: When searching for information about PBS use the combined name "PBS TORQUE" to get more relevant results). PBS is a tool that allocates computing resources, schedules and manages job execution and allows you to monitor the status of queued and running jobs. Here is a cheet sheet of useful PBS commands and uses. Full information can be found in the Torque documentation found here: http://docs.adaptivecomputing.com

### Frequently Used Commands 
Command	  	   | Description
-------------------|----------------- 
qsub <script>  	   |  Submit a pbs script	
qstat <job_id>	   |  Show the status of queue and pbs jobs
qdel <job_id>	   |  Delete a pbs job

### Checking the Queue and Job Status
Command	  	   | Description
-------------------|----------------- 
qstat -q              |   Lisst all queues and the limitiations on them
qstat -a	      |   List all jobs. Note: -a gives actual walltime of running jobs.
qstat -au <username>  |   List jobs for given username 
qstat -r	      |   List running jobs
qstat -f <job_id>     |   List full information about job_id
