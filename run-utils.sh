cd build
# cmake -DCMAKE_BUILD_TYPE=Release .. && make -Bj
# ./apps/utils/compute_groundtruth --dist_fn l2 --data_type float --base_file /nvmessd1/fbv4/avarhade/datasets/prec1M_normalized.bin --query_file /nvmessd1/fbv4/avarhade/datasets/prec1M_queries_normalized.bin --gt_file /nvmessd1/fbv4/avarhade/datasets/prec1M_normalized_gt100 --K 100
# ./apps/utils/compute_groundtruth --dist_fn l2 --data_type float --base_file /nvmessd1/fbv4/avarhade/datasets/wiki1M_normalized.bin --query_file /nvmessd1/fbv4/avarhade/datasets/wiki1M_queries_normalized.bin --gt_file /nvmessd1/fbv4/avarhade/datasets/wiki1M_normalized_gt100 --K 100

# ./apps/utils/compute_groundtruth --dist_fn l2 --data_type float --base_file /nvmessd1/fbv4/avarhade/datasets/prec1M_normalized.bin --query_file /nvmessd1/fbv4/avarhade/datasets/prec1M_queries_normalized.bin --gt_file /nvmessd1/fbv4/avarhade/datasets/prec1M_normalized_gt200 --K 200
# ./apps/utils/compute_groundtruth --dist_fn l2 --data_type float --base_file /nvmessd1/fbv4/avarhade/datasets/wiki1M_normalized.bin --query_file /nvmessd1/fbv4/avarhade/datasets/wiki1M_queries_normalized.bin --gt_file /nvmessd1/fbv4/avarhade/datasets/wiki1M_normalized_gt200 --K 200

# ./apps/utils/compute_groundtruth --dist_fn l2 --data_type float --base_file /home/t-avarhade/prec1M/prec1M_normalized.bin --query_file /home/t-avarhade/prec1M/prec1M_queries_normalized.bin --gt_file /home/t-avarhade/prec1M/prec1M_normalized_gt100 --K 100
# ./apps/utils/compute_groundtruth --dist_fn l2 --data_type float --base_file /home/t-avarhade/prec1M/prec1M_normalized.bin --query_file /home/t-avarhade/prec1M/prec1M_queries_normalized.bin --gt_file /home/t-avarhade/prec1M/prec1M_normalized_gt200 --K 200


./apps/utils/compute_groundtruth --dist_fn cosine --data_type float --base_file /home/t-avarhade/ann-datasets/SentenceChunk_OAILarge_1M_normalized_1000000.bin_fp32 --query_file /home/t-avarhade/ann-datasets/SentenceChunk_OAILarge_query_normalized_6809.bin_fp32 --gt_file /home/t-avarhade/ann-datasets/SentenceChunk_OAILarge_gt200 --K 200