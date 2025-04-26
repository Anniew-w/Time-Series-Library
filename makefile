# 训练模型
Dlinear:
	python run.py \
		--is_training 1 \
		--task_name long_term_forecast \
		--model_id Dlinear \
		--model DLinear \
		--data custom \
		--root_path ./data/TSLA/ \
		--data_path TSLA.csv \
		--features S \
		--target Close \
		--batch_size 128 \
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
		--des 'Exp_DLinear_TSLA' \
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

TimesNet_AAPL:
	python run.py \
		--is_training 1 \
		--task_name long_term_forecast \
		--model_id TimesNet \
		--model TimesNet \
		--data custom \
		--root_path ./data/AAPL/ \
		--data_path AAPL.csv \
		--features S \
		--target Close \
		--batch_size 64 \
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
		--des 'Exp_TimesNet_AAPL' \
		--itr 1 \
		--gpu 0 \
		--gpu_type cuda

TimesNet_TSLA:
	python run.py \
		--is_training 1 \
		--task_name long_term_forecast \
		--model_id TimesNet \
		--model TimesNet \
		--data custom \
		--root_path ./data/TSLA/ \
		--data_path TSLA.csv \
		--features S \
		--target Close \
		--batch_size 64 \
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
		--des 'Exp_TimesNet_TSLA' \
		--itr 1 \
		--gpu 0 \
		--gpu_type cuda

Autoformer_AAPL:
	python run.py \
		--is_training 1 \
		--task_name long_term_forecast \
		--model_id Autoformer \
		--model Autoformer \
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
		--des 'Exp_Autoformer_AAPL' \
		--itr 1 \
		--gpu 0 \
		--gpu_type cuda

Autoformer_TSLA:
	python run.py \
		--is_training 1 \
		--task_name long_term_forecast \
		--model_id Autoformer \
		--model Autoformer \
		--data custom \
		--root_path ./data/TSLA/ \
		--data_path TSLA.csv \
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
		--des 'Exp_Autoformer_TSLA' \
		--itr 1 \
		--gpu 0 \
		--gpu_type cuda

TimeXer_AAPL:
	python run.py \
		--is_training 1 \
		--task_name long_term_forecast \
		--model_id TimeXer \
		--model TimeXer \
		--data custom \
		--root_path ./data/AAPL/ \
		--data_path AAPL.csv \
		--features S \
		--target Close \
		--batch_size 32 \
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
		--des 'Exp_TimeXer_AAPL' \
		--itr 1 \
		--gpu 0 \
		--gpu_type cuda

TimeXer_TSLA:
	python run.py \
		--is_training 1 \
		--task_name long_term_forecast \
		--model_id TimeXer \
		--model TimeXer \
		--data custom \
		--root_path ./data/TSLA/ \
		--data_path TSLA.csv \
		--features S \
		--target Close \
		--batch_size 32 \
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
		--des 'Exp_TimeXer_TSLA' \
		--itr 1 \
		--gpu 0 \
		--gpu_type cuda

plot_AAPL:
	python plot_AAPL.py

plot_TSLA:
	python plot_TSLA.py

# 清理结果
clean:
	rm -rf ./checkpoints/aapl_dlinear_*
	rm -rf ./results/*