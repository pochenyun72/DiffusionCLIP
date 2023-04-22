#!/bin/bash

arr=("curly_hair")
for e in "${arr[@]}"; do
    python main.py --clip_finetune_eff \
        --config celeba.yml \
        --exp ./runs/test \
        --edit_attr "$e" \
        --do_train 1 \
        --do_test 1 \
        --n_train_img 50 \
        --n_test_img 10 \
        --n_iter 5 \
        --t_0 600 \
        --n_inv_step 40 \
        --n_train_step 6 \
        --n_test_step 40 \
        --lr_clip_finetune 8e-6 \
        --id_loss_w 0 \
        --l1_loss_w 1 >>./log/"$e-600-eff.log"
done

arr=("curly_hair")
for e in "${arr[@]}"; do
    python main.py --clip_finetune \
        --config celeba.yml \
        --exp ./runs/test \
        --edit_attr "$e" \
        --do_train 1 \
        --do_test 1 \
        --n_train_img 50 \
        --n_test_img 10 \
        --n_iter 5 \
        --t_0 400 \
        --n_inv_step 40 \
        --n_train_step 6 \
        --n_test_step 40 \
        --lr_clip_finetune 8e-6 \
        --id_loss_w 0 \
        --l1_loss_w 1 >>./log/"$e-400.log"
done
# python main.py --clip_finetune \
#     --config church.yml \
#     --exp ./runs/test \
#     --edit_attr church_department_store \
#     --do_train 1 \
#     --do_test 1 \
#     --n_train_img 50 \
#     --n_test_img 10 \
#     --n_iter 5 \
#     --t_0 500 \
#     --n_inv_step 40 \
#     --n_train_step 6 \
#     --n_test_step 40 \
#     --lr_clip_finetune 8e-6 \
#     --id_loss_w 0 \
#     --l1_loss_w 1 >>./log/church_department_store.log

# arr2=("dog_smiling" "dog_hamster")
# for e in "${arr2[@]}"; do
#     python main.py --clip_finetune \
#         --config afhq.yml \
#         --exp ./runs/test \
#         --edit_attr "$e" \
#         --do_train 1 \
#         --do_test 1 \
#         --n_train_img 50 \
#         --n_test_img 10 \
#         --n_iter 5 \
#         --t_0 500 \
#         --n_inv_step 40 \
#         --n_train_step 6 \
#         --n_test_step 40 \
#         --lr_clip_finetune 8e-6 \
#         --id_loss_w 0 \
#         --l1_loss_w 1 >>./log/"$e.log"
# done

# for e in "${arr2[@]}"; do
#     python main.py --clip_finetune_eff \
#         --config afhq.yml \
#         --exp ./runs/test \
#         --edit_attr "$e" \
#         --do_train 1 \
#         --do_test 1 \
#         --n_train_img 50 \
#         --n_test_img 10 \
#         --n_iter 5 \
#         --t_0 500 \
#         --n_inv_step 40 \
#         --n_train_step 6 \
#         --n_test_step 40 \
#         --lr_clip_finetune 8e-6 \
#         --id_loss_w 0 \
#         --l1_loss_w 1 >>./log/"$e.log"
# done
