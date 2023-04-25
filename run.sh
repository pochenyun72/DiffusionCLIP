#!/bin/bash
arr=("church_department_store")
configs=("church.yml")
# t_0n=("400" "500" "600")
t_0n=("500")

for e in "${arr[@]}"; do
    for c in "${configs[@]}"; do
        for ti in "${t_0n[@]}"; do
            python main.py --clip_finetune \
                --config "$c" \
                --exp ./runs/test \
                --edit_attr "$e" \
                --do_train 1 \
                --do_test 1 \
                --n_train_img 50 \
                --n_test_img 10 \
                --n_iter 5 \
                --t_0 "$ti" \
                --n_inv_step 40 \
                --n_train_step 6 \
                --n_test_step 40 \
                --lr_clip_finetune 8e-6 \
                --id_loss_w 0 \
                --l1_loss_w 1 >>./log/"$e-$c-t0=$ti-500.log"
            echo "$e $c END!!!"
        done
    done
done

echo "END!!!"
