## PBS (TORQUE) CHEET SHEET

The Center for Advanced Research Computing uses the Torque, aka "PBS", job scheduler. (Note: When searching for information about PBS use the combined name "PBS TORQUE" to get more relevant results). PBS is a tool that allocates computing resources, schedules and manages job execution and allows you to monitor the status of queued and running jobs. Here is a cheat sheet of useful PBS commands and uses. Full information can be found in the Torque documentation found here: http://docs.adaptivecomputing.com

PBS uses a few commands to control the jobs and queues and special scripts (pbs scripts here out) which have special arguments for requesting various resources (number of nodes, walltime, memory, etc), name the job, control error and output, but are otherwise simple Linux shell scripts. This repository contains a collection of such scripts that I have written for a number of applications, but they can be extremely flexible. If you need help writing a script please contact the CARC help desk. 

 

### Frequently Used Commands 
Command	  	   | Description
-------------------|----------------- 
qsub \<script\>      |  Submit a pbs script
qstat \<job_id\>     |  Show the status of queue and pbs jobs
qdel \<job_id\>	   |  Delete a pbs job
qgrok              |  Display a table summarizing the status of a machine



### Checking the Queue and Job Status with qstat
Command	  	      | Description
----------------------|----------------- 
qstat -q              |   List all queues and the limitiations on them
qstat -a	      |   List all jobs. Note: -a gives actual walltime of running jobs.
qstat -au \<username\>  |   List jobs for given username 
qstat -an            |   List jobs and the compute node(s) that they are running on 
qstat -r	      |   List running jobs
qstat -f \<job_id\>     |   List full information about job_id

###Submiting a job
To submit a job you will use the qsub command to submit the psb script. 


### Deleting a Job
Suppose you have realized a mistake in a job you have submitted and need to delete the job from the queue. You will need to get the job_id of the running job and then use qdel to delete it. Use qstat to get the job as follows: 

```bash
$qstat -au rjohns03

nano.nano.alliance.unm.edu:
                                                                                  Req'd    Req'd       Elap
Job ID                  Username    Queue    Jobname          SessID  NDS   TSK   Memory   Time    S   Time
----------------------- ----------- -------- ---------------- ------ ----- ------ ------ --------- - ---------
5813.nano.nano.allianc  rjohns03    one_node NobelPrizeWork   27687     1      4    --   01:00:00 R  00:00:07
```

I get the job_id from the first column in the resulting table. For this job the id is 5813. I can now delete the job as follows: 

```bash
$qdel 5813
```


