#!/bin/bash
#SBATCH --job-name=spark
#SBATCH --partition=broadwl
#SBATCH --output=spark.out
#SBATCH --error=spark.err
#SBATCH --ntasks=10
module load python/anaconda-2019.03
module load spark/2.4.3
export PYSPARK_DRIVER_PYTHON=/software/Anaconda3-2019.03-el7-x86_64/bin/python
export PYSPARK_PYTHON=/software/Anaconda3-2019.03-el7-x86_64/bin/python
export PYSPARK_DRIVER_PYTHON=jupyter
export PYSPARK_DRIVER_PYTHON_OPTS=notebook
spark-submit --master local[*] Topic_Modeling.ipynb
