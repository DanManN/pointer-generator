N := 0

train:
	python run_summarization.py --mode=train \
		--data_path=../cnn-dailymail/finished_files/chunked/train_*.bin \
		--vocab_path=../cnn-dailymail/finished_files/vocab \
		--log_root=log \
		--exp_name=exp$(N)

