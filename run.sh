cd build
cmake -DCMAKE_BUILD_TYPE=Release .. && make -Bj

file_base_path="/home/t-avarhade/prec1M"
data_path="${file_base_path}/prec1M_normalized_hybrid_r128_l200_m5_s100000_h0.75_f0.3"
gt_file="${file_base_path}/prec1M_normalized_hybrid_r128_l200_m5_s100000_h0.75_f0.3_gt200"
query_file="${file_base_path}/prec1M_queries_normalized.bin"

./apps/build_memory_index --data_path $data_path --data_type float --dist_fn l2 --index_path_prefix "${file_base_path}/index/test" -R 128 -L 200 -T 1 >> /home/t-avarhade/Amey/DiskANN/prec1M-baseline/prec1M_normalized_r128_l200.txt
./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix "${file_base_path}/index/test" --gt_file $gt_file --query_file $query_file --result_path /home/t-avarhade/Dump/tmp -K 200 -L 200 250 300 400 500 -T 1 >> /home/t-avarhade/Amey/DiskANN/prec1M-baseline/prec1M_normalized_r128_l200.txt
