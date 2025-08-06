cd build
# cmake -DCMAKE_BUILD_TYPE=Release .. && make -Bj

# ./apps/build_memory_index --data_path /nvmessd1/fbv4/prec40M.bin --data_type int8 --dist_fn l2 --index_path_prefix  /home/rakri/avarhade/Dump/prec40M_memory_index_r150_l300 -R 150 -L 300 -T 48 >  /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_l300.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 100 150 200 250 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k50.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 100 -L 100 150 200 250 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k100.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 150 -L 150 200 250 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k150.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 200 -L 200 250 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k200.txt

# ./apps/build_memory_index --data_path /nvmessd1/fbv4/prec1M.fbin --data_type float --dist_fn l2 --index_path_prefix  /nvmessd1/fbv4/avarhade/prec1M_memory_index_r64_l100 -R 64 -L 100 -T 48 >>  /home/rakri/avarhade/DiskANN/[prec1M/r64_l100.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_r64_l100 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 75 100 150 200 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M/r64_l100.txt

#./apps/build_memory_index --data_path /nvmessd1/fbv4/prec40M.bin --data_type int8 --dist_fn l2 --index_path_prefix  /nvmessd1/fbv4/avarhade/prec40M_memory_index_r64_l150 -R 64 -L 150 -T 48 >>  /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r64_l150.txt
#./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r64_l150 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 100 150 200 250 300 -T 48 >> /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r64_l150.txt

#./apps/build_memory_index --data_path /nvmessd1/fbv4/prec40M.bin --data_type int8 --dist_fn l2 --index_path_prefix  /nvmessd1/fbv4/avarhade/prec40M_memory_index_r128_l150 -R 128 -L 150 -T 48 >>  /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r128_l150.txt
#./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r128_l150 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 100 150 200 250 300 -T 48 >> /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r128_l150.txt

#./apps/build_memory_index --data_path /nvmessd1/fbv4/prec40M.bin --data_type int8 --dist_fn l2 --index_path_prefix  /nvmessd1/fbv4/avarhade/prec40M_memory_index_r128_l200 -R 128 -L 200 -T 48 >>  /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r128_l200.txt
#./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r128_l200 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 30 -L 30 50 100 150 200 250 300 -T 48 >> /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r128_l200.txt

#./apps/build_memory_index --data_path /nvmessd1/fbv4/prec40M.bin --data_type int8 --dist_fn l2 --index_path_prefix  /nvmessd1/fbv4/avarhade/prec40M_memory_index_r128_l250 -R 128 -L 250 -T 48 >>  /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r128_l250.txt
#./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r128_l250 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 30 -L 30 50 100 150 200 250 300 -T 48 >> /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r128_l250.txt


# ----------------------------------------------
# ------------WIKI 1M datasets -----------------
# ----------------------------------------------

file_base_path="/nvmessd1/fbv4/avarhade/datasets"
data_path="${file_base_path}/wiki1M_normalized.bin"
gt_file="${file_base_path}/wiki1M_gt_normalized"
query_file="${file_base_path}/wiki1M_queries_normalized.bin"

# ./apps/build_memory_index --data_path $data_path --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r16_l50 -R 16 -L 50 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r16_l50.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r16_l50 --gt_file $gt_file --query_file $query_file --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 100 150 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r16_l50.txt

# ./apps/build_memory_index --data_path $data_path --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r32_l50 -R 32 -L 50 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r32_l50.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r32_l50 --gt_file $gt_file --query_file $query_file --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 100 150 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r32_l50.txt

# ./apps/build_memory_index --data_path $data_path --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r48_l50 -R 48 -L 50 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r48_l50.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r48_l50 --gt_file $gt_file --query_file $query_file --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 100 150 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r48_l50.txt

# ./apps/build_memory_index --data_path $data_path --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r64_l50 -R 64 -L 50 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r64_l50.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r64_l50 --gt_file $gt_file --query_file $query_file --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 100 150 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r64_l50.txt

# ./apps/build_memory_index --data_path $data_path --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r16_l100 -R 16 -L 100 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r16_l100.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r16_l100 --gt_file $gt_file --query_file $query_file --result_path /home/rakri/avarhade/Dump/tmp -K 100 -L 100 150 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r16_l100.txt

# ./apps/build_memory_index --data_path $data_path --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r32_l100 -R 32 -L 100 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r32_l100.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r32_l100 --gt_file $gt_file --query_file $query_file --result_path /home/rakri/avarhade/Dump/tmp -K 100 -L 100 150 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r32_l100.txt

# ./apps/build_memory_index --data_path $data_path --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r48_l100 -R 48 -L 100 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r48_l100.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r48_l100 --gt_file $gt_file --query_file $query_file --result_path /home/rakri/avarhade/Dump/tmp -K 100 -L 100 150 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r48_l100.txt

# ./apps/build_memory_index --data_path $data_path --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r64_l100 -R 64 -L 100 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r64_l100.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r64_l100 --gt_file $gt_file --query_file $query_file --result_path /home/rakri/avarhade/Dump/tmp -K 100 -L 100 150 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r64_l100.txt


# ./apps/build_memory_index --data_path $data_path --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r16_l200 -R 16 -L 200 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r16_l200.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r16_l200 --gt_file $gt_file --query_file $query_file --result_path /home/rakri/avarhade/Dump/tmp -K 200 -L 200 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r16_l200.txt

# ./apps/build_memory_index --data_path $data_path --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r32_l200 -R 32 -L 200 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r32_l200.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r32_l200 --gt_file $gt_file --query_file $query_file --result_path /home/rakri/avarhade/Dump/tmp -K 200 -L 200 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r32_l200.txt

# ./apps/build_memory_index --data_path $data_path --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r48_l200 -R 48 -L 200 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r48_l200.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r48_l200 --gt_file $gt_file --query_file $query_file --result_path /home/rakri/avarhade/Dump/tmp -K 200 -L 200 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r48_l200.txt

# ./apps/build_memory_index --data_path $data_path --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r64_l200 -R 64 -L 200 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r64_l200.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r64_l200 --gt_file $gt_file --query_file $query_file --result_path /home/rakri/avarhade/Dump/tmp -K 200 -L 200 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r64_l200.txt

./apps/build_memory_index --data_path $data_path --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r128_l200 -R 128 -L 200 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r128_l200.txt
./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/wiki_memory_index_normalized_r128_l200 --gt_file $gt_file --query_file $query_file --result_path /home/rakri/avarhade/Dump/tmp -K 200 -L 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/wiki1M-baseline/wiki_r128_l200.txt

# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 10 -L 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k10.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 30 -L 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k30.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k50.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 75 -L 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k75.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 100 -L 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k100.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 150 -L 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k150.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 200 -L 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k200.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 100 150 200 250 300 -T 1 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k50_l300.txt

# data_path="/nvmessd1/fbv4/avarhade/datasets/wiki1M_normalized_data_clusters_r16_l50_mcs100_pm50_t0.3_out.bin"
# query_file="/nvmessd1/fbv4/avarhade/datasets/wiki1M_queries_normalized.bin"
# gt_file="/nvmessd1/fbv4/avarhade/datasets/wiki1M_normalized_data_clusters_r16_l50_mcs100_pm50_t0.3_gt"


file_base_path="/nvmessd1/fbv4/avarhade/datasets"
data_path="${file_base_path}/prec1M_normalized.bin"
gt_file="${file_base_path}/prec1M_normalized_gt200"
query_file="${file_base_path}/prec1M_queries_normalized.bin"
result_path="/home/rakri/avarhade/Dump/tmp"

# ./apps/utils/compute_groundtruth --data_type float --dist_fn l2 --base_file $data_path --query_file $query_file --gt_file $gt_file --K 100

# ./apps/build_memory_index --data_type float --dist_fn l2  --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_normalized_r32_l100 --data_path $data_path -R 32 -L 100 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M-baseline/prec1M_normalized_r32_l100.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_normalized_r32_l100 --gt_file $gt_file --query_file $query_file --result_path $result_path -K 100 -L 100 150 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M-baseline/prec1M_normalized_r32_l100.txt

# ./apps/build_memory_index --data_type float --dist_fn l2  --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_normalized_r48_l100 --data_path $data_path -R 48 -L 100 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M-baseline/prec1M_normalized_r48_l100.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_normalized_r48_l100 --gt_file $gt_file --query_file $query_file --result_path $result_path -K 100 -L 100 150 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M-baseline/prec1M_normalized_r48_l100.txt

# ./apps/build_memory_index --data_type float --dist_fn l2  --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_normalized_r64_l100 --data_path $data_path -R 64 -L 100 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M-baseline/prec1M_normalized_r64_l100.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_normalized_r64_l100 --gt_file $gt_file --query_file $query_file --result_path $result_path -K 100 -L 100 150 200 250 300 500 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M-baseline/prec1M_normalized_r64_l100.txt



# ./apps/build_memory_index --data_type float --dist_fn l2  --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_normalized_r32_l200 --data_path $data_path -R 32 -L 200 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M-baseline/prec1M_normalized_r32_l200.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_normalized_r32_l200 --gt_file $gt_file --query_file $query_file --result_path $result_path -K 200 -L 200 250 300 400 500 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M-baseline/prec1M_normalized_r32_l200.txt

# ./apps/build_memory_index --data_type float --dist_fn l2  --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_normalized_r48_l200 --data_path $data_path -R 48 -L 200 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M-baseline/prec1M_normalized_r48_l200.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_normalized_r48_l200 --gt_file $gt_file --query_file $query_file --result_path $result_path -K 200 -L 200 250 300 400 500 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M-baseline/prec1M_normalized_r48_l200.txt

# ./apps/build_memory_index --data_type float --dist_fn l2  --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_normalized_r64_l200 --data_path $data_path -R 64 -L 200 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M-baseline/prec1M_normalized_r64_l200.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_normalized_r64_l200 --gt_file $gt_file --query_file $query_file --result_path $result_path -K 200 -L 200 250 300 400 500 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M-baseline/prec1M_normalized_r64_l200.txt

./apps/build_memory_index --data_type float --dist_fn l2  --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_normalized_r128_l200 --data_path $data_path -R 128 -L 200 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M-baseline/prec1M_normalized_r128_l200.txt
./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_normalized_r128_l200 --gt_file $gt_file --query_file $query_file --result_path $result_path -K 200 -L 200 250 300 400 500 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M-baseline/prec1M_normalized_r128_l200.txt