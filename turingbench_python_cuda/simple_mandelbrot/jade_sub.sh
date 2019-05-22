#!/bin/bash

# set the number of nodes
#SBATCH --nodes=1

# set max wallclock time
#SBATCH --time=00:30:00

# set name of job
#SBATCH --job-name=echalstrey_singularity_test1

# set number of GPUs
#SBATCH --gres=gpu:4

# mail alert at start, end and abortion of execution
#SBATCH --mail-type=ALL

# send mail to this address
#SBATCH --mail-user=echalstrey@turing.ac.uk

# run the application
module load singularity
singularity run -B /tmp:/tmp shub://singularity-hub.org/edwardchalstrey1/turingbench:mandelbrot
