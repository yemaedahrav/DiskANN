cd build
# cmake -DCMAKE_BUILD_TYPE=Release .. && make -Bj

home="/home/t-avarhade"
# file_base="ann-datasets"
file_base="test_generated_data"

# data_path="${file_base}/prec1M_normalized.bin"
# gt_file="${file_base}/prec1M_normalized_gt200"
# query_file="${file_base}/prec1M_queries_normalized.bin"

# data_path="${home}/${file_base}/SentenceChunk_OAILarge_1M_normalized_1000000.bin_fp32"
# gt_file="${home}/${file_base}/SentenceChunk_OAILarge_gt200_fp32"
# query_file="${home}/${file_base}/SentenceChunk_OAILarge_query_normalized_6809.bin_fp32"


data_path="/home/t-avarhade/$file_base/embeddings_10k_data_pert_eps1.62e-05_normalized.bin"
gt_file="/home/t-avarhade/$file_base/embeddings_10k_normalized_gt200.bin"
query_file="/home/t-avarhade/$file_base/embeddings_10k_query_normalized.bin"


# R_values=(64 64 64 64 64 64 64)
# L_values=(100 100 100 100 100 100 100)
# M_values=(10 10 10 10 10 10 10)                                                   # Example: Point Multiplicity values
# S_values=(100000000 100000000 100000000 100000000 100000000 100000000 100000000)  # Example: Maximum Cluster Size values
# H_values=(0.25 0.3 0.35 0.4 0.5 0.75 1)                                           # Example: Clustering Threshold values
# F_values=(0.1 0.1 0.1 0.1 0.1 0.1 0.1)                                            # Example: Hybrid Ratio values

R_values=(16 32)
L_values=(50 50)
K_values=(50 50)
M_values=(1 1)                                                   # Example: Point Multiplicity values
S_values=(1 1)  # Example: Maximum Cluster Size values
H_values=(0 0)                                                        # Example: Clustering Threshold values
F_values=(1 1)                                            # Example: Hybrid Ratio values
T=1

# Create the log directory if it doesn't exist
mkdir -p "${home}/Amey/DiskANN/clustering-results/test-generated-data"

for i in "${!R_values[@]}"; do
    R=${R_values[$i]}
    L=${L_values[$i]}
    M=${M_values[$i]}
    S=${S_values[$i]}
    H=${H_values[$i]}
    F=${F_values[$i]}
    K=${K_values[$i]}
    index_path="${home}/${file_base}/index/2pass_index_r${R}_l${L}_m${M}_s${S}_h${H}_f${F}"
    cluster_path="${home}/${file_base}/index/2pass_cluster_r${R}_l${L}_m${M}_s${S}_h${H}_f${F}"
    log_path="${home}/Amey/DiskANN/clustering-results/test-generated-data/2pass_cluster_r${R}_l${L}.txt"
    cluster_distribution_path="${home}/Amey/DiskANN/clustering-results/test-generated-data/2pass_cluster_distribution_r${R}_l${L}_m${M}_s${S}_h${H}_f${F}.txt"

    ./apps/build_memory_index  --data_type float --dist_fn l2 --index_path_prefix $index_path --cluster_path $cluster_path --cluster_distribution_path $cluster_distribution_path --data_path $data_path -R ${R} -L ${L} -M ${M} -S ${S} -H ${H} -F ${F} -T ${T} >> $log_path
    ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix $index_path --cluster_path $cluster_path --gt_file $gt_file --query_file $query_file --result_path ${home}/Dump/tmp -K $K -L 50 100 200 -T ${T} >> $log_path
done
