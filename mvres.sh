#!/bin/bash

# 定义源目录和目标目录
# dir=(./runs/*)
# for d in "${dir[@]}"; do
#     echo "$d"
#     before="$d/before"
#     after="$d/after"
#     mkdir -p "$before"
#     mkdir -p "$after"

# done
# src_dir="/path/to/source/directory"
# dst_dir="/path/to/destination/directory"

# # 遍历源目录中的所有匹配文件
# for file in "${src_dir}"/test_*_{orig,clip_Nicolas_Cage_4_ngen40}.png; do
#     # 移动文件到目标目录
#     mv "$file" "${dst_dir}/"
# done
python indicators.py \
    --input_images_path ./runs/test_FT_CelebA_HQ_nicolas_t400_ninv40_ngen6_id0.0_l11.0_lr8e-06/before \
    --image2smiles2image_save_path ./runs/test_FT_CelebA_HQ_nicolas_t400_ninv40_ngen6_id0.0_l11.0_lr8e-06/after
