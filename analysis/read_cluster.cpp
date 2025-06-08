#include <iostream>
#include <fstream>
#include <unordered_map>
#include <map>
#include <vector>
#include <string>
#include <algorithm>

void readClusterFile(const std::string& cluster_path, const std::string& output_path) {
    std::ifstream in;
    in.exceptions(std::ios::badbit | std::ios::failbit);
    in.open(cluster_path, std::ios::binary | std::ios::in);
    if (!in.is_open()) {
        std::cerr << "Error opening file: " << cluster_path << std::endl;
        return;
    } else {
        std::cout << "Opened cluster file: " << cluster_path << std::endl;
    }

    size_t file_offset = 0;
    size_t _max_cluster_size, _num_clusters;
    in.seekg(file_offset, in.beg);
    in.read((char *)&_num_clusters, sizeof(size_t));
    in.read((char *)&_max_cluster_size, sizeof(size_t));

    std::map<uint32_t, std::vector<uint32_t>> _cluster_to_node;
    std::map<size_t, size_t> cluster_size_frequency;
    for (uint32_t i = 0; i < _num_clusters; i++) {
        uint32_t cluster_size, cluster_id;
        in.read((char *)&cluster_id, sizeof(uint32_t));
        in.read((char *)&cluster_size, sizeof(uint32_t));
        std::vector<uint32_t> nodes(cluster_size);
        in.read((char *)nodes.data(), cluster_size * sizeof(uint32_t));
        _cluster_to_node[cluster_id] = std::move(nodes);
        cluster_size_frequency[cluster_size]++;
    }
    in.close();

    std::ofstream out(output_path);
    if (!out.is_open()) {
        std::cerr << "Error opening output file: " << output_path << std::endl;
        return;
    }

    size_t non_empty_clusters = 0;
    for (const auto& pair : _cluster_to_node) {
        size_t cluster_size = pair.second.size();
        out << "Cluster ID: " << pair.first << " Size: " << cluster_size << "\nNodes: ";
        if (cluster_size > 0) {
            non_empty_clusters++;
        }
        for (const auto& node : pair.second) {
            out << node << " ";
        }
        out << "\n";
    }
    out << "Number of non-empty clusters: " << non_empty_clusters << "\n";

    out << "\nCluster Size Frequency:\n";
    for (const auto& pair : cluster_size_frequency) {
        out << "Cluster Size: " << pair.first << " Frequency: " << pair.second << "\n";
    }
    out.close();
}


int main() {
    std::string cluster_path = "/nvmessd1/fbv4/avarhade/clustering/wiki_cluster_mapping_r16_l50_mcs100_pm50_t0.3.bin";
    std::string output_path = "read_cluster.txt";
    readClusterFile(cluster_path, output_path);
    return 0;
}