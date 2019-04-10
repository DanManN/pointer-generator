N := 0
GPU := 0

train:
	CUDA_VISIBLE_DEVICES=$(GPU) python run_summarization.py --mode=train \
		--data_path=../cnn-dailymail/finished_files/chunked/train_*.bin \
		--vocab_path=../cnn-dailymail/finished_files/vocab \
		--log_root=log \
		--exp_name=exp$(N)

summarize:
	CUDA_VISIBLE_DEVICES=$(GPU) python run_summarization.py --mode=decode \
		--data_path=../cnn-dailymail/finished_files/chunked/train_*.bin \
		--vocab_path=../cnn-dailymail/finished_files/vocab \
		--log_root=log \
		--exp_name=exp$(N)
