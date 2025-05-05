cd build
cmake -DCMAKE_BUILD_TYPE=Release .. && make -Bj

result_path="/home/t-avarhade/Dump/tmp"
index_base="/home/t-avarhade"

# rvalue=64
# lvalue=100

wikipedia="wikipedia_cohere"
msmarco="msmarco_websearch"
wikipedia_base_path="/home/t-avarhade/big-ann-benchmarks/data/${wikipedia}"
msmarco_base_path="/home/t-avarhade/big-ann-benchmarks/data/${msmarco}"

# data_path="${msmarco_base_path}/vectors.bin.crop_nb_1M"
# gt_file="${msmarco_base_path}/msmarco-1M-gt200"
# query_file="${msmarco_base_path}/query.bin"

# data_path="${wikipedia_base_path}/wikipedia_base.bin.crop_nb_1M"
# gt_file="${wikipedia_base_path}/wikipedia-1M-gt200"
# query_file="${wikipedia_base_path}/wikipedia_query.bin"

# # ./apps/utils/compute_groundtruth --dist_fn l2 --data_type float --base_file $data_path --query_file $query_file --gt_file $gt_file --K 200
# # ./apps/utils/gen_random_slice float $data_path ${msmarco_base_path}/msmarco_base.bin.random_2M 0.2

# rvalues=(16 32 64 128 150 150 200 256 256 350)
# lvalues=(200 200 200 200 200 300 300 300 500 500)

# for i in "${!rvalues[@]}"; do
#     rvalue=${rvalues[$i]}
#     lvalue=${lvalues[$i]}
#     ./apps/build_memory_index --data_type float --dist_fn l2 --index_path_prefix ${index_base}/${wikipedia}/r${rvalue}_l${lvalue} --data_path $data_path -R $rvalue -L $lvalue -T 96 >> /home/t-avarhade/DiskANN/${wikipedia}/r${rvalue}_l${lvalue}.txt
#     ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix ${index_base}/${wikipedia}/r${rvalue}_l${lvalue} --gt_file $gt_file --query_file $query_file --result_path $result_path -K 200 -L 200 300 400 500 -T 96 >> /home/t-avarhade/DiskANN/${wikipedia}/r${rvalue}_l${lvalue}.txt
# done


# data_path="${msmarco_base_path}/vectors.bin.crop_nb_1M"
# gt_file="${msmarco_base_path}/msmarco-1M-gt200"
# query_file="${msmarco_base_path}/query.bin"

# rvalues=(16 32 64 128 150 150 200 256 256 350)
# lvalues=(200 200 200 200 200 300 300 300 500 500)

# for i in "${!rvalues[@]}"; do
#     rvalue=${rvalues[$i]}
#     lvalue=${lvalues[$i]}
#     ./apps/build_memory_index --data_type float --dist_fn l2 --index_path_prefix ${index_base}/${msmarco}/r${rvalue}_l${lvalue} --data_path $data_path -R $rvalue -L $lvalue -T 96 >> /home/t-avarhade/DiskANN/${msmarco}/r${rvalue}_l${lvalue}.txt
#     ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix ${index_base}/${msmarco}/r${rvalue}_l${lvalue} --gt_file $gt_file --query_file $query_file --result_path $result_path -K 200 -L 200 300 400 500 -T 96 >> /home/t-avarhade/DiskANN/${msmarco}/r${rvalue}_l${lvalue}.txt
# done


# data_path="${msmarco_base_path}/msmarco_base.bin.random_5M_data.bin"
# gt_file="${msmarco_base_path}/msmarco-5M-gt200"
# query_file="${msmarco_base_path}/query.bin"

# rvalues=(16 32 64 128 150 150 200 256 256 350)
# lvalues=(200 200 200 200 200 300 300 300 500 500)


# for i in "${!rvalues[@]}"; do
#     rvalue=${rvalues[$i]}
#     lvalue=${lvalues[$i]}
#     ./apps/build_memory_index --data_type float --dist_fn l2 --index_path_prefix ${index_base}/${msmarco}/r${rvalue}_l${lvalue} --data_path $data_path -R $rvalue -L $lvalue -T 96 >> /home/t-avarhade/DiskANN/${msmarco}/r${rvalue}_l${lvalue}.txt
#     ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix ${index_base}/${msmarco}/r${rvalue}_l${lvalue} --gt_file $gt_file --query_file $query_file --result_path $result_path -K 200 -L 200 300 400 500 -T 96 >> /home/t-avarhade/DiskANN/${msmarco}/r${rvalue}_l${lvalue}.txt
# done


data_path="${msmarco_base_path}/vectors.bin.crop_nb_10M"
gt_file="${msmarco_base_path}/msmarco-10M-gt200"
query_file="${msmarco_base_path}/query.bin"

# rvalues=(16 32 64 128 150 150 200 256 256 350)
# lvalues=(200 200 200 200 200 300 300 300 500 500)

rvalues=(150 150 200 256 256 350)
lvalues=(200 300 300 300 500 500)


for i in "${!rvalues[@]}"; do
    rvalue=${rvalues[$i]}
    lvalue=${lvalues[$i]}
    ./apps/build_memory_index --data_type float --dist_fn l2 --index_path_prefix ${index_base}/${msmarco}/r${rvalue}_l${lvalue} --data_path $data_path -R $rvalue -L $lvalue -T 96 >> /home/t-avarhade/DiskANN/${msmarco}/r${rvalue}_l${lvalue}.txt
    ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix ${index_base}/${msmarco}/r${rvalue}_l${lvalue} --gt_file $gt_file --query_file $query_file --result_path $result_path -K 200 -L 200 300 400 500 -T 96 >> /home/t-avarhade/DiskANN/${msmarco}/r${rvalue}_l${lvalue}.txt
done
