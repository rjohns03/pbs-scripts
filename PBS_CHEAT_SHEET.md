## PBS (TORQUE) CHEET SHEET

The Center for Advanced Research Computing uses the Torque, aka "PBS", job schedular. (Note: When searching for information about PBS use the combined name "PBS TORQUE" to get more relevant results). PBS is a tool that allocates computing resources, schedules and manages job execution and allows you to monitor the status of queued and running jobs. Here is a cheet sheet of useful PBS commands and uses. Full information can be found in the Torque documentation found here: http://docs.adaptivecomputing.com

### Frequently Used Commands 
Command	  	   | Description
-------------------|----------------- 
qsub [script]  	   |  Submit a pbs script	
qstat [job_id]	   |  Show the status of queue and pbs jobs
qdel [job_id]	   |  Delete a pbs job
