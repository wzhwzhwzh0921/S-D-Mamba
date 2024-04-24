export CUDA_VISIBLE_DEVICES=0

model_name=S_Mamba

python -u run.py \
  --is_training 1 \
  --root_path ./dataset/electricity/ \
  --data_path electricity.csv \
  --model_id ECL_96_96 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --pred_len 96 \
  --e_layers 3 \
  --enc_in 128 \
  --dec_in 128 \
  --c_out 128 \
  --des 'Exp' \
  --train_epochs 1 \
  --exp_name partial_train \
  --d_model 512 \
  --d_ff 512 \
  --learning_rate 0.0005 \
  --itr 1