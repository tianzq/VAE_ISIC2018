#!/usr/bin/env bash

# set this to your python binary
export PYTHONBIN='/home/luyuchen.paul/.conda/envs/pytorch/bin/python'
export PYTHONUNBUFFERED=1

# set exp root dir and dataset root dir
export DATA_DIR='/home/luyuchen.paul/ISIC2018_outlier'
export EXP_DIR='/home/luyuchen.paul/exp_results'

declare -a outliers=("AKIEC")

# loop through outlier classes
for outlier in "${outliers[@]}"
do
    echo "#################TEST ${outlier} ##################"
    $PYTHONBIN outlier_detection.py \
        --data ${DATA_DIR}/${outlier} \
        --model_path ${EXP_DIR}/${outlier}/best_model.pth.tar
done