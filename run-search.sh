cd build
./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_KK_1.5_reduce_prune_memory_index_r64_l100 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 10 -L 10 20 30 40 50 60 70 80 90 100 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/KK1.5/KK_1.5_reduce_prune_r64_k10.txt
./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_KK_1.5_reduce_prune_memory_index_r64_l100 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 25 -L 30 40 50 60 70 80 90 100 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/KK1.5/KK_1.5_reduce_prune_r64_k25.txt
./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_KK_1.5_reduce_prune_memory_index_r64_l100 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 50 -L 50 60 70 80 90 100 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/KK1.5/KK_1.5_reduce_prune_r64_k50.txt
./apps/search_memory_index --data_type int8 --dist_fn l2 --index_path_prefix /nvmessd1/fbv4/avarhade/prec40M_KK_1.5_reduce_prune_memory_index_r64_l100 --gt_file /nvmessd1/fbv4/gt100_prec40M --query_file /nvmessd1/fbv4/queries384d.bin  --result_path /home/rakri/avarhade/Dump/tmp -K 100 -L 100 -T 48 > /home/rakri/avarhade/DiskANN/prec40M/KK1.5/KK_1.5_reduce_prune_r64_k100.txt