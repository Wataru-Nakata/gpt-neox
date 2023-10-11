#! /bin/bash
#$ -l rt_F=1
#$ -l h_rt=72:00:00
#$ -j y
#$-cwd
module load python/3.10/3.10.10
module load cuda/12.1/12.1.1
module load cudnn/8.9/8.9.2
module load nccl/2.18/2.18.1-1
module load hpcx/2.12
source venv/bin/activate
pip install -r requirements/requirements-wandb.txt
python ./deepy.py train.py configs/1-3B.yml scripts/gslm/dataset.yml
