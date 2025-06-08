#!/bin/bash

# Compile create_data.cpp
g++ -o create_data create_data.cpp

cluster_path="/home/t-avarhade/prec1M/index/cluster_r64_l100_m5_s100000_h0.75_f0.3"
data_in="/home/t-avarhade/prec1M/prec1M_normalized.bin"
data_out="/home/t-avarhade/prec1M/prec1M_normalized_hybrid_r64_l100_m5_s100000_h0.75_f0.3"  # This is the path where the new dataset of cluster centres will be saved
query_file="/home/t-avarhade/prec1M/prec1M_queries_normalized.bin"

# Check if compilation was successful
# if [ $? -eq 0 ]; then
#     # Run the executable
#     ./create_data $cluster_path $data_in $data_out
# else
#     echo "Compilation failed."
#     exit 1
# fi

cd build
cmake -DCMAKE_BUILD_TYPE=Release .. && make -Bj
./apps/utils/compute_groundtruth --data_type float --dist_fn l2 --base_file $data_out --query_file  $query_file --gt_file "${data_out}_gt200" --K 200
