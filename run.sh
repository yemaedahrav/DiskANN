cd build
cmake -DCMAKE_BUILD_TYPE=Release .. && make -Bj

home="/home/t-avarhade"
file_base_path="/home/t-avarhade/prec1M"
data_path="${file_base_path}/prec1M_normalized.bin"
gt_file="${file_base_path}/prec1M_normalized_gt200"
query_file="${file_base_path}/prec1M_queries_normalized.bin"
R=64
L=100
M=5
S=100000
H=0.75
F=0.3
T=1

./apps/build_memory_index  --data_type float --dist_fn l2 --index_path_prefix ${home}/prec1M/index/prec1M_normalized_hybrid_r${R}_l${L}_m${M}_s${S}_h${H}_f${F} --cluster_path ${home}/prec1M/index/cluster_r${R}_l${L}_m${M}_s${S}_h${H}_f${F} --data_path $data_path -R ${R} -L ${L} -M ${M} -S ${S} -H ${H} -F ${F} -T ${T} >> ${home}/Amey/DiskANN/prec1M/prec1M_clustering_r${R}_l${L}.txt
./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix ${home}/prec1M/index/prec1M_normalized_hybrid_r${R}_l${L}_m${M}_s${S}_h${H}_f${F} --cluster_path ${home}/prec1M/index/cluster_r${R}_l${L}_m${M}_s${S}_h${H}_f${F} --gt_file $gt_file --query_file $query_file --result_path ${home}/Dump -K 200 -L 200 250 300 400 500 -T ${T} >> ${home}/Amey/DiskANN/prec1M/prec1M_clustering_r${R}_l${L}.txt
