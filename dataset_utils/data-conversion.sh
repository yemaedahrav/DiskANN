#!/bin/bash

file_base="/home/t-avarhade/ann-datasets"
data_file1="${file_base}/SentenceChunk_OAILarge_1M_normalized_1000000.bin"
query_file1="${file_base}/SentenceChunk_OAILarge_query_normalized_6809.bin"
data_file2="${file_base}/normalized_dim_384_vector_fp16_1087932_vectors.bin"
query_file2="${file_base}/query_vector_normalized_dim_384_fp16_top_1000.bin"

g++ -o data_conversion data_conversion.cpp

./data_conversion $data_file1 "${data_file1}_fp32" $query_file1 "${query_file1}_fp32"
./data_conversion $data_file2 "${data_file2}_fp32" $query_file2 "${query_file2}_fp32"

rm data_conversion
