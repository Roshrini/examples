#!/bin/bash

for gpu_num in 1 2 4 8; do
    export CUDA_VISIBLE_DEVICES=$gpu_num
    python main.py dummy --arch vgg16 --epochs 10 --batch-size 32 --dummy-train-data-num 1000 --dummy-val-data-num 1000
done
