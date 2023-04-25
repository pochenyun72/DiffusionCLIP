#!/bin/bash
arrs=(
    'celeba.yml nicolas      zombie'
    'afhq.yml   dog_nicolas   dog_zombie')
t_0n=("400" "500" "600")

for t in "${t_0n[@]}"; do
    for i in "${arrs[@]}"; do
        tmp=($i)
        config=${tmp[0]}
        for key in "${tmp[@]:1}"; do
            python main.py \
                --clip_finetune \
                --config "$config" \
                --exp ./runs/test \
                --edit_attr "$key" \
                --do_train 1 \
                --do_test 1 \
                --n_train_img 50 \
                --n_test_img 10 \
                --n_iter 5 \
                --t_0 "$t" \
                --n_inv_step 40 \
                --n_train_step 6 \
                --n_test_step 40 \
                --lr_clip_finetune 8e-6 \
                --id_loss_w 0 \
                --l1_loss_w 1 >>./log/"$config-$key-t0=$t.log"
            echo "$config $key $t-END"
        done
    done
done

echo "END!!!"
