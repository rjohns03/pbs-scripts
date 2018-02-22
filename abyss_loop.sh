#!/bin/bash
# For loop that automates job submission over a defined sequence. Calls abyss.pbs for direction.

for i in $(seq 34 6 96); do
        mkdir lice_$i
        qsub -v var=$i  -N lice_$i -l nodes=2:ppn=8 -l walltime=48:00:00 abyss.pbs
done
