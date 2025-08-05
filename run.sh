cd build
# cmake -DCMAKE_BUILD_TYPE=Release .. && make -Bj

r=16
l=25
file_base_path="/home/t-avarhade"

# data_file="${file_base_path}/wiki_normalized/wiki35M_normalized.bin"
# index_file="${file_base_path}/wiki_normalized/index/wiki35M_normalized_r${r}_l${l}"
# gt_file="${file_base_path}/wiki_normalized/wiki35M_gt200.bin"
# query_file="${file_base_path}/wiki_normalized/wiki_normalized_query.bin"
# log_file="${file_base_path}/Amey/DiskANN/wiki35Mnormalized/wiki35M_r${r}_l${l}.txt"

# data_file="${file_base_path}/prec1M/prec1M_normalized.bin"
# index_file="${file_base_path}/prec1M/index/test_prec1M_normalized_r${r}_l${l}"
# gt_file="${file_base_path}/prec1M/prec1M_gt100.bin"
# query_file="${file_base_path}/prec1M/prec1M_queries_normalized.bin"
# log_file="${file_base_path}/Amey/DiskANN/prec1M-baseline/test_r${r}_l${l}.txt"


data_file="${file_base_path}/ann-datasets/SentenceChunk_OAILarge_1M_normalized_1000000.bin_fp32"
index_file="${file_base_path}/ann-datasets/index/OAI_sentencechunk_r${r}_l${l}"
gt_file="${file_base_path}/ann-datasets/SentenceChunk_OAILarge_gt200"
query_file="${file_base_path}/ann-datasets/SentenceChunk_OAILarge_query_normalized_6809.bin_fp32"
log_file="${file_base_path}/Amey/DiskANN/openai-sentencechunk/r${r}_l${l}.txt"


./apps/build_memory_index --data_path $data_file --data_type float --dist_fn cosine --index_path_prefix $index_file -R $r -L $l -T 96 >> $log_file
./apps/search_memory_index --data_type float --dist_fn cosine --index_path_prefix $index_file --gt_file $gt_file --query_file $query_file --result_path /home/t-avarhade/Dump/tmp -K 100 -L 100 200 300 400 500 -T 96 >> $log_file
