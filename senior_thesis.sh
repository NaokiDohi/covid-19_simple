#!/bin/bash
mkdir -p mlp/log rnn/log lstm/log gru/log mlp/model rnn/model lstm/model gru/model log
mkdir -p mlp/loss rnn/loss lstm/loss gru/loss mlp/eval_loss rnn/eval_loss lstm/eval_loss gru/eval_loss
mkdir -p mlp/prediction rnn/prediction lstm/prediction gru/prediction mlp/detail rnn/detail lstm/detail gru/detail

for n in 16 32 64 128 256 512 1024
do
    for dropout in 0.0 0.2 0.4 0.5 0.6
    do
        python3 covid_19_forecast_with_mlp.py $n $dropout > mlp/log/log_"$n"_"$dropout".txt
        python3 covid_19_forecast_with_rnn.py $n $dropout > rnn/log/log_"$n"_"$dropout".txt
        # python3 covid_19_forecast_with_lstm.py $n $dropout > lstm/log/log_"$n"_"$dropout".txt
        python3 covid_19_forecast_with_gru.py $n $dropout > gru/log/log_"$n"_"$dropout".txt
    done
done
$n $dropout
# log_` date "+%Y%m%d_%H%M%S"`.txt
