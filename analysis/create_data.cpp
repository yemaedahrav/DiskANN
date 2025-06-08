#include <iostream>
#include <fstream>
#include <unordered_map>
#include <map>
#include <vector>
#include <string>
#include <algorithm>



void readClusterFile(const std::string& cluster_path, const std::string& data_in, const std::string& data_out) {
    
    std::ifstream in;
    in.exceptions(std::ios::badbit | std::ios::failbit);
    in.open(cluster_path, std::ios::binary | std::ios::in);
    if (!in.is_open()) {
        std::cout<< "Error opening file: " << cluster_path << std::endl;
        return;
    } else {
        std::cout << "Opened cluster file: " << cluster_path << std::endl;
    }

    size_t file_offset = 0;
    size_t _max_cluster_size, _num_clusters;
    in.seekg(file_offset, in.beg);
    in.read((char *)&_num_clusters, sizeof(size_t));
    in.read((char *)&_max_cluster_size, sizeof(size_t));
    std::cout << "Number of clusters: " << _num_clusters << std::endl;

    std::vector<uint32_t> cluster_ids;
    for (uint32_t i = 0; i < _num_clusters; i++) {
        uint32_t cluster_size, cluster_id;
        in.read((char *)&cluster_id, sizeof(uint32_t));
        in.read((char *)&cluster_size, sizeof(uint32_t));
        in.seekg(cluster_size * sizeof(uint32_t), std::ios::cur); // Skip the nodes data
        cluster_ids.push_back(cluster_id);
    }
    in.close();


    std::ifstream data_in_file(data_in, std::ios::binary);
    if (!data_in_file.is_open()) {
        std::cout<< "Error opening data input file: " << data_in << std::endl;
        return;
    }

    uint32_t N, d;
    data_in_file.read((char *)&N, sizeof(uint32_t));
    data_in_file.read((char *)&d, sizeof(uint32_t));

    std::ofstream data_out_file(data_out, std::ios::binary);
    if (!data_out_file.is_open()) {
        std::cout<< "Error opening data output file: " << data_out << std::endl;
        return;
    }

    uint32_t new_N = cluster_ids.size();
    data_out_file.write((char *)&new_N, sizeof(uint32_t));
    data_out_file.write((char *)&d, sizeof(uint32_t));

    for (const auto& id : cluster_ids) {
        if (id >= N) {
            std::cout<< "Cluster ID " << id << " is out of range." << std::endl;
        }
        data_in_file.seekg(8 + id * d * sizeof(float), std::ios::beg);
        std::vector<float> buffer(d);
        data_in_file.read((char *)buffer.data(), d * sizeof(float));
        data_out_file.write((char *)buffer.data(), d * sizeof(float));
    }
    std::cout<<"Number of cluster centres/data points in new graph: " << cluster_ids.size() << std::endl;
    std::cout<< "Data written to " << data_out << std::endl;

    data_in_file.close();
    data_out_file.close();
    return;
}


int main(int argc, char* argv[]) {
    if (argc != 4) {
        std::cerr << "Usage: " << argv[0] << " <cluster_path> <data_in_path> <data_out_path>" << std::endl;
        return 1;
    }
    std::string cluster_path = argv[1];  // The path of the cluster to node mappings (id mappings only)
    std::string data_in = argv[2];       // The path of the input data file, needed for id to vector mappings
    std::string data_out = argv[3];      // The path of the output data file, where the cluster centre vectors will be written (new data)
    readClusterFile(cluster_path, data_in, data_out);
    return 0;
}