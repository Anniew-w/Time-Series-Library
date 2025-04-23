# 训练模型
Dlinear:
	python run.py \
		--is_training 1 \
		--task_name long_term_forecast \
		--model_id Dlinear \
		--model DLinear \
		--data custom \
		--root_path ./data/AAPL/ \
		--data_path AAPL.csv \
		--features S \
		--target Close \
		--seq_len 96 \
		--label_len 48 \
		--pred_len 24 \
		--e_layers 2 \
		--d_layers 1 \
		--factor 3 \
		--enc_in 1 \
		--dec_in 1 \
		--c_out 1 \
		--d_model 64 \
		--des 'Exp_DLinear_AAPL' \
		--itr 1 \
		--gpu 0 \
		--gpu_type cuda
Transformer:
	python run.py \
		--is_training 1 \
		--task_name long_term_forecast \
		--model_id Transformer \
		--model Transformer \
		--data custom \
		--root_path ./data/AAPL/ \
		--data_path AAPL.csv \
		--features S \
		--target Close \
		--seq_len 96 \
		--label_len 48 \
		--pred_len 24 \
		--e_layers 2 \
		--d_layers 1 \
		--factor 3 \
		--enc_in 1 \
		--dec_in 1 \
		--c_out 1 \
		--d_model 64 \
		--des 'Exp_Transformer_AAPL' \
		--itr 1 \
		--gpu 0 \
		--gpu_type cuda

plot:
	python plot_prediction.py

# 清理结果
clean:
	rm -rf ./checkpoints/aapl_dlinear_*
	rm -rf ./results/*