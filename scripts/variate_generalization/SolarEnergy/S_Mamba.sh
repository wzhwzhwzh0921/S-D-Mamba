export CUDA_VISIBLE_DEVICES=1

model_name=S_Mamba

python -u run.py \
  --is_training 1 \
  --root_path ./dataset/Solar/ \
  --data_path solar_AL.txt \
  --model_id solar_96_96 \
  --model $model_name \
  --data Solar \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 54 \
  --dec_in 54 \
  --c_out 54 \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --exp_name partial_train \
  --itr 1