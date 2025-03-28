#!/bin/bash
#SBATCH -J qiskit-fakeqmio-1  # Job name   !!!  CHANGE
#SBATCH -o %x.o%j             # Name of stdout output file (%x -> jobname, %j -> jobId)
#SBATCH -e %x.e%j             # Name of stderr output file
#SBATCH --partition ilk       # Partition where to run the job (use 'ilk' for FakeQmio and 'qpu' or 'ilk' for QmioBackend)
#SBATCH --nodes 1             # Number of nodes
#SBATCH --ntasks 1            # Total number of MPI tasks (if omitted, n=<node_total_cores>)
#SBATCH --cpus-per-task 1     # Cores per task
#SBATCH --mem-per-cpu 4G      # Memory per core
#SBATCH --time 00:30:00       # Max run time (hh:mm:ss)

module load gcc/12.3.0 qiskit/1.2.4-python-3.9.9 qiskit-experiments/0.7.0-python-3.9.9
module load qmio-tools/0.1.3-python-3.9.9

python masurement_1.py # CHANGE !!!