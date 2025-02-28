cd build
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 10 -L 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k10.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 30 -L 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k30.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k50.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 75 -L 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k75.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 100 -L 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k100.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 150 -L 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k150.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 200 -L 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k200.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 100 150 200 250 300 -T 1 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k50_l300.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_r64_l100 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 100 -T 1 > /home/rakri/avarhade/DiskANN/prec1M/r64_l100_distances.txt

# output_file="/home/rakri/avarhade/DiskANN/prec1M/clustering/clustering_r64_l100.txt"
# echo "K: 10" >> $output_file
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_clustering_r64_l100 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 10 -L 10 25 50 75 100 150 200 300 500 -T 1 >> $output_file

# echo "K: 25" >> $output_file
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_clustering_r64_l100 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 25 -L 25 50 75 100 150 200 300 500 -T 1 >> $output_file

# echo "K: 50" >> $output_file
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_clustering_r64_l100 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 75 100 150 200 300 500 -T 1 >> $output_file

# echo "K: 75" >> $output_file
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_clustering_r64_l100 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 75 -L 75 100 150 200 300 500 -T 1 >> $output_file

# echo "K: 100" >> $output_file
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_clustering_r64_l100 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 100 -L 100 150 200 300 500 -T 1 >> $output_file

./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_debug_clustering_r64_l100 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 75 100 150 200 -T 1 >> /home/rakri/avarhade/DiskANN/prec1M/clustering/debug_clustering_r64_l100.txt
