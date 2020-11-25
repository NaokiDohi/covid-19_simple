#!/bin/zsh
mkdir -p mlp/log rnn/log lstm/log gru/log log mlp/model rnn/model lstm/model gru/model

for n in 16 32 64 128 256 512 1024
do
    for dropout in 0 0.2 0.4 0.5 0.6
    do
        # python3 covid_19_forecast_with_mlp.py $n $dropout > lstm/log/log_"$n"_"$dropout".txt
        # python3 covid_19_forecast_with_rnn.py $n $dropout > lstm/log/log_"$n"_"$dropout".txt
        python3 covid_19_forecast_with_lstm.py $n $dropout > lstm/log/log_"$n"_"$dropout".txt
        # python3 covid_19_forecast_with_gru.py $n $dropout > lstm/log/log_"$n"_"$dropout".txt
    done
done
# $n $dropout
# log_` date "+%Y%m%d_%H%M%S"`.txt
