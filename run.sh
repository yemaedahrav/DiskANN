cd build
# cmake -DCMAKE_BUILD_TYPE=Release .. && make -Bj

r=128
l=200
file_base_path="/home/t-avarhade"
data_file="${file_base_path}/wiki_normalized/wiki35M_normalized.bin"
index_file="${file_base_path}/wiki_normalized/index/wiki35M_normalized_r${r}_l${l}"
gt_file="${file_base_path}/wiki_normalized/wiki35M_gt200.bin"
query_file="${file_base_path}/wiki_normalized/wiki_normalized_query.bin"
log_file="${file_base_path}/Amey/DiskANN/wiki35Mnormalized/wiki35M_r${r}_l${l}.txt"

./apps/build_memory_index --data_path $data_file --data_type float --dist_fn l2 --index_path_prefix $index_file -R $r -L $l -T 96 > $log_file
./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix $index_file --gt_file $gt_file --query_file $query_file --result_path /home/t-avarhade/Dump/tmp -K 200 -L 200 250 300 400 500 -T 96 >> $log_file
