cd build
cmake -DCMAKE_BUILD_TYPE=Release .. && make -Bj

home="/home/t-avarhade"
file_base="ann-datasets"

# data_path="${file_base}/prec1M_normalized.bin"
# gt_file="${file_base}/prec1M_normalized_gt200"
# query_file="${file_base}/prec1M_queries_normalized.bin"

data_path="${home}/${file_base}/SentenceChunk_OAILarge_1M_normalized_1000000.bin_fp32"
gt_file="${home}/${file_base}/SentenceChunk_OAILarge_gt200_fp32"
query_file="${home}/${file_base}/SentenceChunk_OAILarge_query_normalized_6809.bin_fp32"

R_values=(8)
L_values=(25)
M_values=(1)                  # Example: Point Multiplicity values
S_values=(100000000)  # Example: Maximum Cluster Size values
H_values=(0)            # Example: Clustering Threshold values
F_values=(0)              # Example: Hybrid Ratio values
T=96

# Create the log directory if it doesn't exist
mkdir -p "${home}/Amey/DiskANN/clustering-results/openai-sentencechunk"

for i in "${!R_values[@]}"; do
    R=${R_values[$i]}
    L=${L_values[$i]}
    M=${M_values[$i]}
    S=${S_values[$i]}
    H=${H_values[$i]}
    F=${F_values[$i]}
    index_path="${home}/${file_base}/index/2pass_index_r${R}_l${L}_m${M}_s${S}_h${H}_f${F}"
    cluster_path="${home}/${file_base}/index/2pass_cluster_r${R}_l${L}_m${M}_s${S}_h${H}_f${F}"
    log_path="${home}/Amey/DiskANN/clustering-results/openai-sentencechunk/2pass_cluster_r${R}_l${L}.txt"

    ./apps/build_memory_index  --data_type float --dist_fn l2 --index_path_prefix $index_path --cluster_path $cluster_path --data_path $data_path -R ${R} -L ${L} -M ${M} -S ${S} -H ${H} -F ${F} -T ${T} >> $log_path
    ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix $index_path --cluster_path $cluster_path --gt_file $gt_file --query_file $query_file --result_path ${home}/Dump/tmp -K 25 -L 25 50 100 -T ${T} >> $log_path
done
