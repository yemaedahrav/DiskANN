cd build
cmake -DCMAKE_BUILD_TYPE=Release .. && make -Bj

R=128
L=200
M=100
S=100
H=1.5
F=0
T=96

home="/home/t-avarhade"
file_base="${home}/prec1M"

data_path="${file_base}/prec1M_normalized.bin"
gt_file="${file_base}/prec1M_normalized_gt200"
query_file="${file_base}/prec1M_queries_normalized.bin"

index_path="${file_base}/index/prec1M_normalized_hybrid_r${R}_l${L}_m${M}_s${S}_h${H}_f${F}"
cluster_path="${file_base}/index/cluster_r${R}_l${L}_m${M}_s${S}_h${H}_f${F}"
log_path="${home}/Amey/DiskANN/prec1M/prec1M_clustering_r${R}_l${L}.txt"

./apps/build_memory_index  --data_type float --dist_fn l2 --index_path_prefix $index_path --cluster_path $cluster_path --data_path $data_path -R ${R} -L ${L} -M ${M} -S ${S} -H ${H} -F ${F} -T ${T} >> $log_path
./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix $index_path --cluster_path $cluster_path --gt_file $gt_file --query_file $query_file --result_path ${home}/Dump -K 200 -L 200 250 300 400 500 -T ${T} >> $log_path
