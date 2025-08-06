#!/bin/bash

input_base_path="/home/t-avarhade/openai-embedding-1M"
output_base_path="/home/t-avarhade/openai-embedding-1M"

data_file="${input_base_path}/base1m.fbin"
normalized_data_file="${output_base_path}/base1m_normalized.fbin"

query_file="${input_base_path}/queries_100k.fbin"
normalized_query_file="${output_base_path}/queries_100k_normalized.fbin"

gt_file="${output_base_path}/base1m_gt200_100k_normalized.fbin"

g++ -o normalize_vectors normalize_vectors.cpp
./normalize_vectors $data_file $normalized_data_file $query_file $normalized_query_file > normalize_logs.txt
g++ -o normalize_verify normalize_verify.cpp

./normalize_verify $normalized_data_file >> normalize_logs.txt
./normalize_verify $normalized_query_file >> normalize_logs.txt

rm normalize_vectors normalize_verify

cd ../build
cmake -DCMAKE_BUILD_TYPE=Release .. && make -Bj
./apps/utils/compute_groundtruth --data_type float --dist_fn l2 --base_file $normalized_data_file --query_file $normalized_query_file --gt_file $gt_file --K 200

