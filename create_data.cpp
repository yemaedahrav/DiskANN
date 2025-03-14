#include <iostream>
#include <fstream>
#include <unordered_map>
#include <map>
#include <vector>
#include <string>
#include <algorithm>

void readClusterFile(const std::string& cluster_path, const std::string& data_in, const std::string& data_out, const std::string& output_path) {
    
    std::ofstream out(output_path);
    if (!out.is_open()) {
        out << "Error opening output file: " << output_path << std::endl;
        return;
    }
    
    std::ifstream in;
    in.exceptions(std::ios::badbit | std::ios::failbit);
    in.open(cluster_path, std::ios::binary | std::ios::in);
    if (!in.is_open()) {
        out << "Error opening file: " << cluster_path << std::endl;
        return;
    } else {
        std::cout << "Opened cluster file: " << cluster_path << std::endl;
    }

    size_t file_offset = 0;
    size_t _max_cluster_size, _num_clusters;
    in.seekg(file_offset, in.beg);
    in.read((char *)&_num_clusters, sizeof(size_t));
    in.read((char *)&_max_cluster_size, sizeof(size_t));

    std::vector<uint32_t> cluster_ids;
    for (uint32_t i = 0; i < _num_clusters; i++) {
        uint32_t cluster_size, cluster_id;
        in.read((char *)&cluster_id, sizeof(uint32_t));
        in.seekg(sizeof(uint32_t), std::ios::cur); // Skip the cluster size
        in.seekg(cluster_size * sizeof(uint32_t), std::ios::cur); // Skip the nodes data
        cluster_ids.push_back(cluster_id);
    }
    in.close();


    std::ifstream data_in_file(data_in, std::ios::binary);
    if (!data_in_file.is_open()) {
        out << "Error opening data input file: " << data_in << std::endl;
        return;
    }

    uint32_t N, d;
    data_in_file.read((char *)&N, sizeof(uint32_t));
    data_in_file.read((char *)&d, sizeof(uint32_t));

    std::ofstream data_out_file(data_out, std::ios::binary);
    if (!data_out_file.is_open()) {
        out << "Error opening data output file: " << data_out << std::endl;
        return;
    }

    uint32_t new_N = cluster_ids.size();
    data_out_file.write((char *)&new_N, sizeof(uint32_t));
    data_out_file.write((char *)&d, sizeof(uint32_t));

    for (const auto& id : cluster_ids) {
        if (id < N) {
            data_in_file.seekg(8 + id * d * sizeof(float), std::ios::beg);
            std::vector<float> buffer(d);
            data_in_file.read((char *)buffer.data(), d * sizeof(float));
            data_out_file.write((char *)buffer.data(), d * sizeof(float));
        } else {
            out << "Cluster ID " << id << " is out of range." << std::endl;
        }
    }
    out << "Data written to " << data_out << std::endl; 

    data_in_file.close();
    data_out_file.close();

    out.close();
}


int main() {
    std::string cluster_path = "/nvmessd1/fbv4/avarhade/clustering/wiki_cluster_mapping_r16_l50_mcs100_pm50_t0.3.bin";
    std::string data_in = "/nvmessd1/fbv4/avarhade/datasets/wiki1M_normalized.bin";
    std::string data_out = "/nvmessd1/fbv4/avarhade/datasets/wiki1M_normalized_data_clusters_r16_l50_mcs100_pm50_t0.3_out.bin";
    std::string output_path = "create_data.txt";
    readClusterFile(cluster_path, data_in, data_out, output_path);
    return 0;
}