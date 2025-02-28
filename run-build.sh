cd build
#./apps/build_memory_index --data_path /nvmessd1/fbv4/prec40M.bin --data_type int8 --dist_fn l2 --index_path_prefix /home/rakri/avarhade/Dump/prec40M_memory_index_r150_l300 -R 150 -L 300 -T 48 >  /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_l300.txt
# rm /nvmessd1/fbv4/avarhade/prec1M_memory_index_clustering_r64_l100*
# rm /nvmessd1/fbv4/avarhade/cluster_to_node_mapping.bin
cmake -DCMAKE_BUILD_TYPE=Release .. && make -Bj
#rm /nvmessd1/fbv4/avarhade/prec1M_memory_index_debug_clustering_r64_l100*
#rm /nvmessd1/fbv4/avarhade/cluster_to_node_mapping.bin
# ./apps/build_memory_index --data_path /nvmessd1/fbv4/prec1M.fbin --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/prec1M_memory_index_clustering_r16_l100_13k_32 -R 16 -L 100 -T 1 >> /home/rakri/avarhade/DiskANN/prec1M/clustering/clustering_r16_l100_13k_32.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/prec1M_memory_index_clustering_r16_l100_13k_32 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 75 100 150 200 -T 1 >> /home/rakri/avarhade/DiskANN/prec1M/clustering/clustering_r16_l100_13k_32.txt

# ./apps/build_memory_index --data_path /nvmessd1/fbv4/prec1M.fbin --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/prec1M_memory_index_clustering_r32_l100_13k_32 -R 32 -L 100 -T 1 >> /home/rakri/avarhade/DiskANN/prec1M/clustering/clustering_r32_l100_13k_32.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/prec1M_memory_index_clustering_r32_l100_13k_32 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 75 100 150 200 -T 1 >> /home/rakri/avarhade/DiskANN/prec1M/clustering/clustering_r32_l100_13k_32.txt

# ./apps/build_memory_index --data_path /nvmessd1/fbv4/prec1M.fbin --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/prec1M_memory_index_clustering_r48_l100_13k_32 -R 48 -L 100 -T 1 >> /home/rakri/avarhade/DiskANN/prec1M/clustering/clustering_r48_l100_13k_32.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/prec1M_memory_index_clustering_r48_l100_13k_32 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 75 100 150 200 -T 1 >> /home/rakri/avarhade/DiskANN/prec1M/clustering/clustering_r48_l100_13k_32.txt

./apps/build_memory_index --data_path /nvmessd2/bigann/wikipedia_cohere/wikipedia_base.bin.crop_nb_1000000 --data_type float --dist_fn mips --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/prec1M_memory_index_clustering_r48_l100_0.1_32_10 -R 48 -L 100 -T 1 >> /home/rakri/avarhade/DiskANN/prec1M/single-clustering/wiki/wiki_clustering_r48_l100_0.1_32_10.txt