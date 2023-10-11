module load cuda/11.8/11.8.0
module load cudnn/8.6/8.6.0 nccl/2.16/2.16.2-1
module load hpcx/2.12
pip install -r requirements/requirements-wandb.txt

python ./deepy.py train.py configs/1-3B.yml scripts/gslm/dataset.yml
