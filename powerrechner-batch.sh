#!/bin/bash

#SBATCH --nodes=3
#SBATCH --ntasks-per-node=1
#SBATCH --partition=long
#SBATCH --time=11:00:00
#SBATCH --cpus-per-task=5
#SBATCH --mem-per-cpu=5000
#SBATCH --output=/work/smmabr12/stochastisch_Bestellmengenplanung/simulation_inventory_planning/Test_F/job1_%x-%j.%N.out.txt
echo "Running task"
echo "executing SLURM_JOB_ID $SLURM_JOB_ID on $SLURMD_NODENAME"

srun --exclusive -N 1 -n 1 python3 start1.py &
srun --exclusive -N 1 -n 1 python3 start2.py &
srun --exclusive -N 1 -n 1 python3 start3.py
wait

echo "stop
