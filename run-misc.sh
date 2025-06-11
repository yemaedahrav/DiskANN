cd build
# cmake -DCMAKE_BUILD_TYPE=Release .. && make -Bj

base_data=/home/t-avarhade/prec1M
data_in="${base_data}/index/prec1M_normalized_hybrid_r128_l200_m5_s100000_h1.5_f0.3_dataset"
# data_in="${base_data}/prec1M_normalized.bin"
gt_file="${base_data}/index/prec1M_normalized_hybrid_r128_l200_m5_s100000_h1.5_f0.3_gt200"
# gt_file="${base_data}/prec1M_normalized_gt200"
query_file="${base_data}/prec1M_queries_normalized.bin"

./apps/utils/compute_groundtruth --data_type float --dist_fn l2 --base_file $data_in --query_file  $query_file --gt_file $gt_file --K 200
