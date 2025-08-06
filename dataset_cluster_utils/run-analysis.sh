#!/bin/bash

# Compile create_data.cpp
g++ -o create_data create_data.cpp

cluster_path="/home/t-avarhade/prec1M/index/cluster_r128_l200_m5_s100000_h1.5_f0.3"
data_in="/home/t-avarhade/prec1M/prec1M_normalized.bin"
data_out="/home/t-avarhade/prec1M/index/prec1M_normalized_hybrid_r128_l200_m5_s100000_h1.5_f0.3_dataset"  # This is the path where the new dataset of cluster centres will be saved
query_file="/home/t-avarhade/prec1M/prec1M_queries_normalized.bin"

if [ $? -eq 0 ]; then
    # Run the executable
    ./create_data $cluster_path $data_in $data_out >> create_data.txt
else
    echo "Compilation failed."
    exit 1
fi

