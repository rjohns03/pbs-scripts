#!/bin/bash
## University of New Mexico Center for Advanced Research Computing
## Ryan Johnson, March 16, 2016
## PBS submission script to run a batch MATLAB script on CARC machines

# Torque (PBS) directives "#PBS" start here:  
#PBS -l nodes=1:ppn=8
#PBS -l walltime=01:00:00
#PBS -N python_test
#PBS -S /bin/bash
#PBS -q singleGPU

# #PBS -l nodes=1:ppn=32:00:00
# #PBS -q bigmem-1TB 

module load anaconda3
source activate conda_enviornment

cd $PBS_O_WORKDIR

echo starting python jobs at `date`

# See man time
export TIME="Elapsed: %E \nMemory (max, ave): %M, %K"

# Call your matlab code in file hello.m and direct output to output.log
/usr/bin/time -o time.log python my_python_script.py > out.log

echo finished jobs at `date`

