#!/bin/bash

file_base="/home/t-avarhade/ann-datasets"
data_file1="${file_base}/SentenceChunk_OAILarge_1M_normalized_1000000.bin"
query_file1="${file_base}/SentenceChunk_OAILarge_query_normalized_6809.bin"
data_file2="${file_base}/normalized_dim_384_vector_fp16_1087932_vectors.bin"
query_file2="${file_base}/query_vector_normalized_dim_384_fp16_top_1000.bin"

g++ -o normalize_verify normalize_verify.cpp

./normalize_verify $data_file1 >> normalize_logs.txt
./normalize_verify $query_file1 >> normalize_logs.txt
./normalize_verify $data_file2 >> normalize_logs.txt
./normalize_verify $query_file2 >> normalize_logs.txt

rm normalize_verify