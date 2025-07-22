cd build
cmake -DCMAKE_BUILD_TYPE=Release .. && make -Bj

R=32
L=50
M=10      # Point Multiplicity
S=32      # Maximum Cluster Size
H=0       # Clustering Threshold
F=0.0     # Hybrid Ratio: Ratio denotes amount of naive DiskANN before we begin clustering
T=96      # Number of Threads

home="/home/t-avarhade"
file_base="openai-embedding-1M"

# data_path="${file_base}/prec1M_normalized.bin"
# gt_file="${file_base}/prec1M_normalized_gt200"
# query_file="${file_base}/prec1M_queries_normalized.bin"

data_path="${home}/${file_base}/base1m_normalized.fbin"
gt_file="${home}/${file_base}/base1m_gt200_100k_normalized.fbin"
query_file="${home}/${file_base}/queries_100k_normalized.fbin"

index_path="${home}/${file_base}/index/2pass_index_r${R}_l${L}_m${M}_s${S}_h${H}_f${F}"
cluster_path="${home}/${file_base}/index/2pass_cluster_r${R}_l${L}_m${M}_s${S}_h${H}_f${F}"
log_path="${home}/Amey/DiskANN/${file_base}/2pass_cluster_r${R}_l${L}.txt"

./apps/build_memory_index  --data_type float --dist_fn l2 --index_path_prefix $index_path --cluster_path $cluster_path --data_path $data_path -R ${R} -L ${L} -M ${M} -S ${S} -H ${H} -F ${F} -T ${T} >> $log_path
./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix $index_path --cluster_path $cluster_path --gt_file $gt_file --query_file $query_file --result_path ${home}/Dump/tmp -K 25 -L 25 50 100 -T ${T} >> $log_path

rm $cluster_path $index_path