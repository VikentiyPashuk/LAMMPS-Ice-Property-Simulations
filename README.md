# Mechanical Properties of Ice – Molecular Dynamics Simulations

This repository contains molecular dynamics (MD) simulations of ice using **TIP4P/Ice** and **ReaxFF** potentials. The simulations investigate mechanical properties, including **tensile deformation**, **strain**, **mean squared displacement (MSD)**, **density**, **isothermal compressibility**, and **quenches** to amorphous states.

## Overview of Simulations

- **Equilibration:** Relaxation of ice systems at target temperatures using NPT or NVT ensembles.
- **Quenches:** Rapid and slow cooling to generate amorphous ice structures.
- **Isothermal Compression:** NPT simulations at constant temperature to compute compressibility by slope and variations methods.
- **Tensile Deformation:** Uniaxial strain applied along a box axis to compute stress–strain response along the basal plane (001).
- **MSD & Density Analysis:** Atomic mobility and structural density tracked over time.

## Requirements

- LAMMPS (version ≥ 2 Aug 2023)  
- ReaxFF potential file (`albitereax.ff.txt`) for reactive simulations (Pitman et al. 2012) 
- TIP4P/Ice potential parameters for non-reactive simulations  

## Running Simulations

These simulations are designed for **remote HPC clusters**. You will need appropriate **SLURM `sbatch` scripts** to submit jobs.  

### Example Workflow

1. Prepare input scripts (`*.in`) for the desired potential and simulation type.  
2. Submit using SLURM:  
   sbatch my_job.sh
