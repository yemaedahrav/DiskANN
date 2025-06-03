cd build
# cmake -DCMAKE_BUILD_TYPE=Release .. && make -Bj

# ./apps/build_memory_index --data_path /nvmessd1/fbv4/prec40M.bin --data_type int8 --dist_fn l2 --index_path_prefix  /home/rakri/avarhade/Dump/prec40M_memory_index_r150_l300 -R 150 -L 300 -T 48 >  /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_l300.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 100 150 200 250 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k50.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 100 -L 100 150 200 250 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k100.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 150 -L 150 200 250 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k150.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 200 -L 200 250 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k200.txt

# ./apps/build_memory_index --data_path /nvmessd1/fbv4/prec1M.fbin --data_type float --dist_fn l2 --index_path_prefix  /nvmessd1/fbv4/avarhade/prec1M_memory_index_r64_l100 -R 64 -L 100 -T 48 >>  /home/rakri/avarhade/DiskANN/prec1M/r64_l100.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_r64_l100 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 75 100 150 200 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M/r64_l100.txt

# cd python/apps
# python cluster.py -d float -i /nvmessd1/fbv4/prec1M.fbin -k 1000

# ./apps/build_memory_index --data_path /nvmessd1/fbv4/prec1M.fbin --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_clustering_r32_l50 -R 32 -L 50 -T 1 > /home/rakri/avarhade/DiskANN/prec1M/clustering/clustering_r32_l50.txt
# rm -rf /nvmessd1/fbv4/avarhade/test2_prec1M_memory_index_clustering_r32_l50
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_clustering_r32_l50 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 75 100 150 200 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M/clustering/clustering_r32_l50.txt

# rm /nvmessd1/fbv4/avarhade/cluster_to_node_mapping.bin
# ./apps/build_memory_index --data_path /nvmessd1/fbv4/prec1M.fbin --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/prec1M_memory_index_multi_clustering_r32_l100_15k_32_20 -R 32 -L 100 -T 1 >> /home/rakri/avarhade/DiskANN/prec1M/multi-clustering/multi-clustering_r32_l100_15k_32_20.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/prec1M_memory_index_multi_clustering_r32_l100_15k_32_20 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 75 100 150 200 -T 1 >> /home/rakri/avarhade/DiskANN/prec1M/multi-clustering/multi-clustering_r32_l100_15k_32_20.txt
# mv /nvmessd1/fbv4/avarhade/clustering/cluster_to_node_mapping.bin /nvmessd1/fbv4/avarhade/clsutering/cluster_to_node_mapping_r32_l100_15k_32_20.bin

# ./apps/build_memory_index --data_path /nvmessd1/fbv4/prec1M.fbin --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/prec1M_memory_index_multi_clustering_r48_l100_15k_32_20 -R 48 -L 100 -T 1 >> /home/rakri/avarhade/DiskANN/prec1M/multi-clustering/multi-clustering_r48_l100_15k_32_20.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/prec1M_memory_index_multi_clustering_r48_l100_15k_32_20 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 75 100 150 200 -T 1 >> /home/rakri/avarhade/DiskANN/prec1M/multi-clustering/multi-clustering_r48_l100_15k_32_20.txt
# mv /nvmessd1/fbv4/avarhade/clustering/cluster_to_node_mapping.bin /nvmessd1/fbv4/avarhade/clustering/cluster_to_node_mapping_r48_l100_15k_32_20.bin

# ./apps/build_memory_index --data_path /nvmessd1/fbv4/prec1M.fbin --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/prec1M_memory_index_multi_clustering_r64_l100_15k_32_20 -R 64 -L 100 -T 1 >> /home/rakri/avarhade/DiskANN/prec1M/multi-clustering/multi-clustering_r64_l100_15k_32_20.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/prec1M_memory_index_multi_clustering_r64_l100_15k_32_20 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 75 100 150 200 -T 1 >> /home/rakri/avarhade/DiskANN/prec1M/multi-clustering/multi-clustering_r64_l100_15k_32_20.txt
# mv /nvmessd1/fbv4/avarhade/clustering/cluster_to_node_mapping.bin /nvmessd1/fbv4/avarhade/clustering/cluster_to_node_mapping_r64_l100_15k_32_20.bin


## --------------------------------------------
## --------------wiki 1M Dataset---------------
## --------------------------------------------

# ./apps/utils/compute_groundtruth --data_type float --dist_fn l2 --base_file /nvmessd2/bigann/wikipedia_cohere/wikipedia_base.bin.crop_nb_1000000 --query_file  /nvmessd2/bigann/wikipedia_cohere/wikipedia_query.bin --gt_file /nvmessd1/fbv4/avarhade/datasets/wikipedia_base_1M_l2_gt --K 100

# ./apps/build_memory_index --data_path $DATA_FILE --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/test_wiki_memory_index_clustering_r16_l50_mcs32_pm20_t0.001 -R 16 -L 50 -T 1 >> /home/rakri/avarhade/DiskANN/wiki1M/test_wiki_clustering_r16_l50.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/test_wiki_memory_index_clustering_r16_l50_mcs32_pm20_t0.001 --cluster_path /nvmessd1/fbv4/avarhade/clustering/wiki_cluster_mapping_r16_l50_mcs32_pm20_t0.001000.bin --gt_file $GT_FILE --query_file $QUERY_FILE --result_path $RESULT_PATH -K 50 -L 50 100 150 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M/test_wiki_clustering_r16_l50.txt

# DATA_FILE="/nvmessd2/bigann/wikipedia_cohere/wikipedia_base.bin.crop_nb_1000000"
# QUERY_FILE="/nvmessd2/bigann/wikipedia_cohere/wikipedia_query.bin"
# GT_FILE="/nvmessd1/fbv4/avarhade/datasets/wikipedia_base_1M_l2_gt"
# RESULT_PATH="/home/rakri/avarhade/Dump/tmp"

file_base_path="/nvmessd1/fbv4/avarhade/datasets"
data_path="${file_base_path}/wiki1M_normalized.bin"
gt_file="${file_base_path}/wiki1M_gt_normalized"
query_file="${file_base_path}/wiki1M_queries_normalized.bin"
result_path="/home/rakri/avarhade/Dump/tmp"

 
./apps/build_memory_index --data_path $data_path --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/wiki_memory_index_clustering_r16_l50_mcs32_pm20_it0.5 -R 16 -L 50 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M/wiki_clustering_r16_l50.txt
./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/wiki_memory_index_clustering_r16_l50_mcs32_pm20_it0.5 --cluster_path /nvmessd1/fbv4/avarhade/clustering/wiki_cluster_mapping_r16_l50_mcs32_pm20_it0.500000.bin --gt_file $gt_file --query_file $query_file --result_path $result_path -K 50 -L 50 100 150 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M/wiki_clustering_r16_l50.txt

./apps/build_memory_index --data_path $data_path --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/wiki_memory_index_clustering_r32_l50_mcs32_pm20_it0.5 -R 32 -L 50 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M/wiki_clustering_r32_l50.txt
./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/wiki_memory_index_clustering_r32_l50_mcs32_pm20_it0.5 --cluster_path /nvmessd1/fbv4/avarhade/clustering/wiki_cluster_mapping_r32_l50_mcs32_pm20_it0.500000.bin --gt_file $gt_file --query_file $query_file --result_path $result_path -K 50 -L 50 100 150 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M/wiki_clustering_r32_l50.txt

./apps/build_memory_index --data_path $data_path --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/wiki_memory_index_clustering_r48_l50_mcs32_pm20_it0.5 -R 48 -L 50 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M/wiki_clustering_r48_l50.txt
./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/wiki_memory_index_clustering_r48_l50_mcs32_pm20_it0.5 --cluster_path /nvmessd1/fbv4/avarhade/clustering/wiki_cluster_mapping_r48_l50_mcs32_pm20_it0.500000.bin --gt_file $gt_file --query_file $query_file --result_path $result_path -K 50 -L 50 100 150 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M/wiki_clustering_r48_l50.txt

./apps/build_memory_index --data_path $data_path --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/wiki_memory_index_clustering_r64_l50_mcs32_pm20_it0.5 -R 64 -L 50 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M/wiki_clustering_r64_l50.txt
./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/wiki_memory_index_clustering_r64_l50_mcs32_pm20_it0.5 --cluster_path /nvmessd1/fbv4/avarhade/clustering/wiki_cluster_mapping_r64_l50_mcs32_pm20_it0.500000.bin --gt_file $gt_file --query_file $query_file --result_path $result_path -K 50 -L 50 100 150 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M/wiki_clustering_r64_l50.txt

./apps/build_memory_index --data_path $data_path --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/wiki_memory_index_clustering_r16_l100_mcs32_pm20_it0.5 -R 16 -L 100 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M/wiki_clustering_r16_l100.txt
./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/wiki_memory_index_clustering_r16_l100_mcs32_pm20_it0.5 --cluster_path /nvmessd1/fbv4/avarhade/clustering/wiki_cluster_mapping_r16_l100_mcs32_pm20_it0.500000.bin --gt_file $gt_file --query_file $query_file --result_path $result_path -K 100 -L 100 150 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M/wiki_clustering_r16_l100.txt

./apps/build_memory_index --data_path $data_path --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/wiki_memory_index_clustering_r32_l100_mcs32_pm20_it0.5 -R 32 -L 100 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M/wiki_clustering_r32_l100.txt
./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/wiki_memory_index_clustering_r32_l100_mcs32_pm20_it0.5 --cluster_path /nvmessd1/fbv4/avarhade/clustering/wiki_cluster_mapping_r32_l100_mcs32_pm20_it0.500000.bin --gt_file $gt_file --query_file $query_file --result_path $result_path -K 100 -L 100 150 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M/wiki_clustering_r32_l100.txt

./apps/build_memory_index --data_path $data_path --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/wiki_memory_index_clustering_r48_l100_mcs32_pm20_it0.5 -R 48 -L 100 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M/wiki_clustering_r48_l100.txt
./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/wiki_memory_index_clustering_r48_l100_mcs32_pm20_it0.5 --cluster_path /nvmessd1/fbv4/avarhade/clustering/wiki_cluster_mapping_r48_l100_mcs32_pm20_it0.500000.bin --gt_file $gt_file --query_file $query_file --result_path $result_path -K 100 -L 100 150 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M/wiki_clustering_r48_l100.txt

./apps/build_memory_index --data_path $data_path --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/wiki_memory_index_clustering_r64_l100_mcs32_pm20_it0.5 -R 64 -L 100 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M/wiki_clustering_r64_l100.txt
./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/wiki_memory_index_clustering_r64_l100_mcs32_pm20_it0.5 --cluster_path /nvmessd1/fbv4/avarhade/clustering/wiki_cluster_mapping_r64_l100_mcs32_pm20_it0.500000.bin --gt_file $gt_file --query_file $query_file --result_path $result_path -K 100 -L 100 150 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M/wiki_clustering_r64_l100.txt
