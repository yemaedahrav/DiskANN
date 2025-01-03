cd build
# ./apps/build_memory_index --data_path /nvmessd1/fbv4/prec40M.bin --data_type int8 --dist_fn l2 --index_path_prefix  /nvmessd1/fbv4/avarhade/prec40M_memory_index_2hop_r150_l300 -R 150 -L 300 -T 48 >> /home/rakri/avarhade/DiskANN/prec40M/2hop_r150_l300.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 100 150 200 250 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/2hop_r150_k50_l300.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 100 -L 100 150 200 250 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k100.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 150 -L 150 200 250 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k150.txt
# ./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_memory_index_r150_l300 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 200 -L 200 250 300 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/variable-alpha-baseline/r150_k200.txt

# ./apps/build_memory_index --data_path /nvmessd1/fbv4/prec1M.fbin --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_2hop_r12_l100 -R 12 -L 100 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M/2hop_r12_l100.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_2hop_r12_l100 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 75 100 150 200 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M/2hop_r12_l100.txt

# ./apps/build_memory_index --data_path /nvmessd1/fbv4/prec1M.fbin --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_2hop_r15_l100 -R 15 -L 100 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M/2hop_r15_l100.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_2hop_r15_l100 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 75 100 150 200 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M/2hop_r15_l100.txt

# ./apps/build_memory_index --data_path /nvmessd1/fbv4/prec1M.fbin --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_2hop_r20_l100 -R 20 -L 100 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M/2hop_r20_l100.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_2hop_r20_l100 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 75 100 150 200 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M/2hop_r20_l100.txt

# ./apps/build_memory_index --data_path /nvmessd1/fbv4/prec1M.fbin --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_2hop_r25_l100 -R 25 -L 100 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M/2hop_r25_l100.txt
# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_2hop_r25_l100 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 75 100 150 200 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M/2hop_r25_l100.txt

./apps/build_memory_index --data_path /nvmessd1/fbv4/prec1M.fbin --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_2hop_once_end_r64_l100 -R 64 -L 100 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M/2-hop-once-end/2hop_once_end_r64_l100.txt
./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_2hop_once_end_r64_l100 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 75 100 150 200 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M/2-hop-once-end/2hop_once_end_r64_l100.txt

./apps/build_memory_index --data_path /nvmessd1/fbv4/prec1M.fbin --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_2hop_once_end_r25_l100 -R 25 -L 100 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M/2-hop-once-end/2hop_once_end_r25_l100.txt
./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_2hop_once_end_r25_l100 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 75 100 150 200 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M/2-hop-once-end/2hop_once_end_r25_l100.txt

./apps/build_memory_index --data_path /nvmessd1/fbv4/prec1M.fbin --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_2hop_once_end_r20_l100 -R 20 -L 100 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M/2-hop-once-end/2hop_once_end_r20_l100.txt
./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_2hop_once_end_r20_l100 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 75 100 150 200 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M/2-hop-once-end/2hop_once_end_r20_l100.txt

./apps/build_memory_index --data_path /nvmessd1/fbv4/prec1M.fbin --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_2hop_once_end_r30_l100 -R 30 -L 100 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M/2-hop-once-end/2hop_once_end_r30_l100.txt
./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec1M_memory_index_2hop_once_end_r30_l100 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 75 100 150 300 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M/2-hop-once-end/2hop_once_end_r30_l100.txt

# ./apps/search_memory_index --data_type float --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec_memory_index_r64_l100 --gt_file /nvmessd1/fbv4/prec1M_gt100.bin --query_file /nvmessd1/fbv4/queries.fbin --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 75 100 150 200 -T 48 >> /home/rakri/avarhade/DiskANN/prec1M/2hop_r64_l100.txt