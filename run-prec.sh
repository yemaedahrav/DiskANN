cd build
cmake -DCMAKE_BUILD_TYPE=Release .. && make -Bj

file_base_path="/home/t-avarhade/prec1M"
data_path="${file_base_path}/prec1M_normalized.bin"
gt_file="${file_base_path}/prec1M_normalized_gt200"
query_file="${file_base_path}/prec1M_queries_normalized.bin"

echo -e "\n\n30% Hybrid index build" >> /home/t-avarhade/DiskANN/prec1M/prec1M_clustering_r128_l200.txt
./apps/build_memory_index  --data_type float --dist_fn l2 --index_path_prefix /home/t-avarhade/prec1M/index/prec1M_normalized_hybrid_r128_l200_mcs16_pm200_t0.85 --cluster_path /home/t-avarhade/prec1M/index/cluster_mcs16_pm200_t0.85 --data_path $data_path -R 128 -L 200 -T 48 >> /home/t-avarhade/DiskANN/prec1M/prec1M_clustering_r128_l200.txt
./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /home/t-avarhade/prec1M/index/prec1M_normalized_hybrid_r128_l200_mcs16_pm200_t0.85 --cluster_path /home/t-avarhade/prec1M/index/cluster_mcs16_pm200_t0.85 --gt_file $gt_file --query_file $query_file --result_path /home/t-avarhade/Dump -K 200 -L 200 250 300 400 500 -T 48 >> /home/t-avarhade/DiskANN/prec1M/prec1M_clustering_r128_l200.txt

# echo -e "\n\n20% Hybrid index build" >> /home/t-avarhade/DiskANN/prec1M/prec1M_clustering_r128_l200.txt
# ./apps/build_memory_index  --data_type float --dist_fn l2 --index_path_prefix /home/t-avarhade/prec1M/index/prec1M_normalized_hybrid_r128_l200_mcs16_pm200_t0.855 --cluster_path /home/t-avarhade/prec1M/index/cluster_mcs16_pm200_t0.855 --data_path $data_path -R 128 -L 200 -T 48 >> /home/t-avarhade/DiskANN/prec1M/prec1M_clustering_r128_l200.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /home/t-avarhade/prec1M/index/prec1M_normalized_hybrid_r128_l200_mcs16_pm200_t0.855 --cluster_path /home/t-avarhade/prec1M/index/cluster_mcs16_pm200_t0.855 --gt_file $gt_file --query_file $query_file --result_path /home/t-avarhade/Dump -K 200 -L 200 250 300 400 500 -T 48 >> /home/t-avarhade/DiskANN/prec1M/prec1M_clustering_r128_l200.txt



# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /home/t-avarhade/prec1M/index/prec1M_normalized_hybrid_r128_l200_mcs16_pm200_t0.855 --cluster_path /home/t-avarhade/prec1M/index/cluster_mcs16_pm200_t0.855 --gt_file $gt_file --query_file $query_file --result_path /home/t-avarhade/Dump/tmp -K 200 -L 200 -T 1 > /home/t-avarhade/DiskANN/prec1M/prec1M_clustering_r128_l200_debug.txt
# ./apps/build_memory_index  --data_type float --dist_fn l2 --index_path_prefix /home/t-avarhade/prec1M/index/prec1M_normalized_hybrid_r128_l200_mcs16_pm200_t0.855_debug --cluster_path /home/t-avarhade/prec1M/index/cluster_mcs16_pm200_t0.855_debug --data_path $data_path -R 128 -L 200 -T 1 > /home/t-avarhade/DiskANN/prec1M/prec1M_clustering_r128_l200_distances2.txt