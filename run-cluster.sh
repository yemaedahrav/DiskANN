cd build
cmake -DCMAKE_BUILD_TYPE=Release .. && make -Bj

R=8
L=25
M=1              # Point Multiplicity
S=100000000      # Maximum Cluster Size
H=0.75           # Clustering Threshold
F=0.0            # Hybrid Ratio: Ratio denotes fraction of points which will use naive DiskANN algorithm before we begin clustering (during build). In the two pass algorithm, the hybrid ratio is not used. It is forced to be 0 always.
T=96             # Number of Threads

home="/home/t-avarhade"
file_base="ann-datasets"

# data_path="${file_base}/prec1M_normalized.bin"
# gt_file="${file_base}/prec1M_normalized_gt200"
# query_file="${file_base}/prec1M_queries_normalized.bin"

data_path="${home}/${file_base}/SentenceChunk_OAILarge_1M_normalized_1000000.bin_fp32"
gt_file="${home}/${file_base}/SentenceChunk_OAILarge_gt200_fp32"
query_file="${home}/${file_base}/SentenceChunk_OAILarge_query_normalized_6809.bin_fp32"

index_path="${home}/${file_base}/index/2pass_index_r${R}_l${L}_m${M}_s${S}_h${H}_f${F}"
cluster_path="${home}/${file_base}/index/2pass_cluster_r${R}_l${L}_m${M}_s${S}_h${H}_f${F}"
log_path="${home}/Amey/DiskANN/openai/2pass_cluster_r${R}_l${L}.txt"

./apps/build_memory_index  --data_type float --dist_fn l2 --index_path_prefix $index_path --cluster_path $cluster_path --data_path $data_path -R ${R} -L ${L} -M ${M} -S ${S} -H ${H} -F ${F} -T ${T} >> $log_path
./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix $index_path --cluster_path $cluster_path --gt_file $gt_file --query_file $query_file --result_path ${home}/Dump/tmp -K 25 -L 25 50 100 -T ${T} >> $log_path

rm $cluster_path $index_path



# PREC1M (FBV4) NORMALIZED
# file_base_path="/nvmessd1/fbv4/avarhade/datasets"
# data_path="${file_base_path}/prec1M_normalized.bin"
# gt_file="${file_base_path}/prec1M_normalized_gt100"
# query_file="${file_base_path}/prec1M_queries_normalized.bin"
# result_path="/home/rakri/avarhade/Dump/tmp"

# ./apps/build_memory_index --data_path $data_path --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/prec1M_memory_index_clustering_r64_l100_mcs1_pm100_t0 --cluster_path /nvmessd1/fbv4/avarhade/clustering/prec1M_cluster_mapping_r64_l100_mcs1_pm100_t0.bin -R 64 -L 100 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M/prec1M_clustering_r64_l100.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/clustering/prec1M_memory_index_clustering_r64_l100_mcs1_pm100_t0 --cluster_path /nvmessd1/fbv4/avarhade/clustering/prec1M_cluster_mapping_r64_l100_mcs1_pm100_t0.bin --gt_file $gt_file --query_file $query_file --result_path $result_path -K 100 -L 100 150 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M/prec1M_clustering_r64_l100.txt