#!/bin/bash
#SBATCH --job-name=freaxff_isocomp_245  # Job name
#SBATCH --output=output_%j.txt      # Standard output and error log (%j is the job ID)
#SBATCH --nodes=3                  # Number of nodes
#SBATCH --ntasks-per-node=48       # Number of tasks per node (adjust based on node)
#SBATCH --mem=0G                   # Request all available memory
#SBATCH --time=1-08:00:00          # Time limit hrs:min:sec
#SBATCH --mail-type=END,FAIL       # Mail events (END, FAIL)
#SBATCH --mail-user=vpashuk@mun.ca # Email address for notifications
#SBATCH --account=def-liammo29     # Account name (adjust as needed)

# Load required modules
module load StdEnv/2023 
module load intel/2023.2.1 openmpi/4.1.5 lammps-omp/20230802

echo "Starting pressure sweep job"

# Loop over pressure values from -4000 atm to 10000 atm in increments of 2000 atm
for press in $(seq -2000 2000 8000); do
    echo "Running simulation for pressure: $press atm"

    # Run LAMMPS simulation with the current pressure value
    srun lmp -in Isothermal_Compressibility_ReaxFF_Slope.in -var press_set $press

done

echo "Pressure sweep job completed"
