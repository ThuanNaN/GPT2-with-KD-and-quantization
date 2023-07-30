#!/usr/bin/bash
python train_adamw.py --wandb-log --wandb-project mle --wandb-run-name student \
                        --save-dir shakespeare-student \
                        --dataset shakespeare \
                        --log-interval 10 \
                        --eval-interval 200 \
                        --eval-iters 500 \
                        --batch-size 64 \
                        --accumulation-steps 1 \
                        --block-size 256 \
                        --num-layer 6 \
                        --num-head 6 \
                        --num-embd 384 \
                        --dropout 0.2 \
                        --max-iters 5000 \
                        --learning-rate 1e-3 \
                        --decay-lr \
                        --lr-decay-iters 5000 \
                        --min-lr 1e-4 \
                        --beta2 0.99 \
                        --warmup-iters 200 
