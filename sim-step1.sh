#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --cpus-per-task=2
#SBATCH --mem-per-cpu=1500MB
#SBATCH -p gpu-dev #gpu-dev
#SBATCH --gres=gpu:a100-sxm4-40gb:1
#SBATCH --time=96:00:00      # Walltime (adjust as needed)
#SBATCH --output=schrodinger_multisim_%j.out # Output file


# Load any necessary modules (if required by your cluster)
#module load enroot        # Load the Enroot module

# Run your containerized Schrödinger multisim job with Enroot
enroot start --root --rw --mount /home/cristofer.motoche__yachaytech.edu.ec/:/home  nvidia-cuda /home/run-step1.sh
