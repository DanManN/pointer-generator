N := 0
GPU := 0
mode := eval # (train, eval, decode)

run:
	CUDA_VISIBLE_DEVICES=$(GPU) python run_summarization.py --mode=$(mode) \
		--data_path=../cnn-dailymail/finished_files/chunked/train_*.bin \
		--vocab_path=../cnn-dailymail/finished_files/vocab \
		--log_root=log \
		--exp_name=exp$(N)

rouge:
	CUDA_VISIBLE_DEVICES=$(GPU) python run_summarization.py --mode=decode --single_pass=1 \
		--data_path=../cnn-dailymail/finished_files/chunked/train_*.bin \
		--vocab_path=../cnn-dailymail/finished_files/vocab \
		--log_root=log \
		--exp_name=exp$(N)
