cd build
cmake -DCMAKE_BUILD_TYPE=Release .. && make -Bj
./apps/utils/compute_groundtruth --data_type float --dist_fn l2 --base_file $data_out --query_file  $query_file --gt_file "${data_out}_gt200" --K 200
