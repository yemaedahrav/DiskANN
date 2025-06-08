cd build
cmake -DCMAKE_BUILD_TYPE=Release .. && make -Bj

base_data=/home/t-avarhade/prec1M
cluster_path="${base_data}/index/cluster_r128_l200_m5_s100000_h0.75_f0.3"
data_in="${base_data}/prec1M_normalized.bin"
data_out="${base_data}/prec1M_normalized_hybrid_r128_l200_m5_s100000_h0.75_f0.3"  # This is the path where the new dataset of cluster centres will be saved
query_file="${base_data}/prec1M_queries_normalized.bin"

./apps/utils/compute_groundtruth --data_type float --dist_fn l2 --base_file $data_in --query_file  $query_file --gt_file "${data_out}_gt200" --K 200
