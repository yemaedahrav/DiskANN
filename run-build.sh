cd build
cmake -DCMAKE_BUILD_TYPE=Release .. && make -Bj
# ./apps/utils/compute_groundtruth --dist_fn l2 --data_type float --base_file /nvmessd1/fbv4/avarhade/datasets/prec1M_normalized.bin --query_file /nvmessd1/fbv4/avarhade/datasets/prec1M_queries_normalized.bin --gt_file /nvmessd1/fbv4/avarhade/datasets/prec1M_normalized_gt100 --K 100
# ./apps/utils/compute_groundtruth --dist_fn l2 --data_type float --base_file /nvmessd1/fbv4/avarhade/datasets/wiki1M_normalized.bin --query_file /nvmessd1/fbv4/avarhade/datasets/wiki1M_queries_normalized.bin --gt_file /nvmessd1/fbv4/avarhade/datasets/wiki1M_normalized_gt100 --K 100

# ./apps/utils/compute_groundtruth --dist_fn l2 --data_type float --base_file /nvmessd1/fbv4/avarhade/datasets/prec1M_normalized.bin --query_file /nvmessd1/fbv4/avarhade/datasets/prec1M_queries_normalized.bin --gt_file /nvmessd1/fbv4/avarhade/datasets/prec1M_normalized_gt200 --K 200
# ./apps/utils/compute_groundtruth --dist_fn l2 --data_type float --base_file /nvmessd1/fbv4/avarhade/datasets/wiki1M_normalized.bin --query_file /nvmessd1/fbv4/avarhade/datasets/wiki1M_queries_normalized.bin --gt_file /nvmessd1/fbv4/avarhade/datasets/wiki1M_normalized_gt200 --K 200

./apps/utils/compute_groundtruth --dist_fn l2 --data_type float --base_file /home/t-avarhade/prec1M/prec1M_normalized.bin --query_file /home/t-avarhade/prec1M/prec1M_queries_normalized.bin --gt_file /home/t-avarhade/prec1M/prec1M_normalized_gt100 --K 100
./apps/utils/compute_groundtruth --dist_fn l2 --data_type float --base_file /home/t-avarhade/prec1M/prec1M_normalized.bin --query_file /home/t-avarhade/prec1M/prec1M_queries_normalized.bin --gt_file /home/t-avarhade/prec1M/prec1M_normalized_gt200 --K 200

# ./apps/build_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_normalized_r64_l100 --data_path /nvmessd1/fbv4/avarhade/datasets/prec1M_normalized.bin -R 64 -L 100 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M/r64_l100.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_normalized_r64_l100 --gt_file /nvmessd1/fbv4/avarhade/datasets/prec1M_gt_normalized --query_file /nvmessd1/fbv4/avarhade/datasets/prec1M_queries_normalized.bin --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 75 100 150 200 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M/r64_l100.txt

