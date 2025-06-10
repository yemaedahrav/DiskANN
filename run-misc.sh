cd build
cmake -DCMAKE_BUILD_TYPE=Release .. && make -Bj
# ./apps/utils/compute_groundtruth --dist_fn l2 --data_type float --base_file /nvmessd1/fbv4/avarhade/datasets/prec1M_normalized.bin --query_file /nvmessd1/fbv4/avarhade/datasets/prec1M_queries_normalized.bin --gt_file /nvmessd1/fbv4/avarhade/datasets/prec1M_normalized_gt100 --K 100
# ./apps/utils/compute_groundtruth --dist_fn l2 --data_type float --base_file /nvmessd1/fbv4/avarhade/datasets/wiki1M_normalized.bin --query_file /nvmessd1/fbv4/avarhade/datasets/wiki1M_queries_normalized.bin --gt_file /nvmessd1/fbv4/avarhade/datasets/wiki1M_normalized_gt100 --K 100

# ./apps/utils/compute_groundtruth --dist_fn l2 --data_type float --base_file /nvmessd1/fbv4/avarhade/datasets/prec1M_normalized.bin --query_file /nvmessd1/fbv4/avarhade/datasets/prec1M_queries_normalized.bin --gt_file /nvmessd1/fbv4/avarhade/datasets/prec1M_normalized_gt200 --K 200
# ./apps/utils/compute_groundtruth --dist_fn l2 --data_type float --base_file /nvmessd1/fbv4/avarhade/datasets/wiki1M_normalized.bin --query_file /nvmessd1/fbv4/avarhade/datasets/wiki1M_queries_normalized.bin --gt_file /nvmessd1/fbv4/avarhade/datasets/wiki1M_normalized_gt200 --K 200

# ./apps/utils/compute_groundtruth --dist_fn l2 --data_type float --base_file /home/t-avarhade/prec1M/prec1M_normalized.bin --query_file /home/t-avarhade/prec1M/prec1M_queries_normalized.bin --gt_file /home/t-avarhade/prec1M/prec1M_normalized_gt100 --K 100
# ./apps/utils/compute_groundtruth --dist_fn l2 --data_type float --base_file /home/t-avarhade/prec1M/prec1M_normalized.bin --query_file /home/t-avarhade/prec1M/prec1M_queries_normalized.bin --gt_file /home/t-avarhade/prec1M/prec1M_normalized_gt200 --K 200


./apps/utils/compute_groundtruth --dist_fn l2 --data_type float --base_file /home/t-avarhade/prec1M/prec1M_normalized_hybrid_r128_l200_m5_s100000_h0.75_f0.3 --query_file /home/t-avarhade/prec1M/prec1M_queries_normalized.bin --gt_file /home/t-avarhade/prec1M/prec1M_normalized_hybrid_r128_l200_m5_s100000_h0.75_f0.3_gt200 --K 200