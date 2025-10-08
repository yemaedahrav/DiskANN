#!/bin/bash

## Change these paths as per your setup 

input_base_path="/home/t-avarhade/test_generated_data"
output_base_path="/home/t-avarhade/test_generated_data"

data_file="${input_base_path}/embeddings_10k_data_pert_eps1.62e-05.bin"
normalized_data_file="${output_base_path}/embeddings_10k_data_pert_eps1.62e-05_normalized.bin"

query_file="${input_base_path}/embeddings_10k_query.bin"
normalized_query_file="${output_base_path}/embeddings_10k_query_normalized.bin"

gt_file="${output_base_path}/embeddings_10k_normalized_gt200.bin"


## Do not touch the below code unless making some changes to the code itself.

g++ -o normalize_vectors normalize_vectors.cpp
./normalize_vectors $data_file $normalized_data_file $query_file $normalized_query_file > normalize_logs.txt
g++ -o normalize_verify normalize_verify.cpp

./normalize_verify $normalized_data_file >> normalize_logs.txt
./normalize_verify $normalized_query_file >> normalize_logs.txt

rm normalize_vectors normalize_verify

cd ../build
cmake -DCMAKE_BUILD_TYPE=Release .. && make -Bj
./apps/utils/compute_groundtruth --data_type float --dist_fn l2 --base_file $normalized_data_file --query_file $normalized_query_file --gt_file $gt_file --K 200

