#include <iostream>
#include <fstream>
#include <vector>
#include <tuple>
#include <string>

void load_graph(const std::string &filename, size_t expected_num_points, const std::string &outfile) {
    
    std::vector<std::vector<uint32_t>> graph;
    uint32_t max_observed_degree = 0;
    uint32_t max_range_of_graph = 0;
    size_t expected_file_size;
    size_t file_frozen_pts;
    uint32_t start;
    
    size_t file_offset = 0;
    std::ifstream in;
    std::ofstream out;

    try {
        in.exceptions(std::ios::badbit | std::ios::failbit);
        in.open(filename, std::ios::binary);
        in.seekg(file_offset, in.beg);
        in.read((char *)&expected_file_size, sizeof(size_t));
        in.read((char *)&max_observed_degree, sizeof(uint32_t));
        in.read((char *)&start, sizeof(uint32_t));
        in.read((char *)&file_frozen_pts, sizeof(size_t));

        out.exceptions(std::ios::badbit | std::ios::failbit);
        out.open(outfile);
    } catch (const std::ios_base::failure &e) {
        out << "Error opening or reading from file: " << e.what() << std::endl;
        return;
    }

    size_t vamana_metadata_size = sizeof(size_t) + sizeof(uint32_t) + sizeof(uint32_t) + sizeof(size_t);

    out << "From graph header, expected_file_size: " << expected_file_size
        << ", max_observed_degree: " << max_observed_degree << ", start: " << start
        << ", file_frozen_pts: " << file_frozen_pts << std::endl;

    out << "Loading vamana graph " << filename << "..." << std::flush;

    if (graph.size() < expected_num_points) {
        out << "resizing graph to " << expected_num_points << std::endl;
        graph.resize(expected_num_points);
    }

    size_t bytes_read = vamana_metadata_size;
    size_t cc = 0;
    uint32_t nodes_read = 0, graph_points = 0;
    try {
        while (bytes_read != expected_file_size) {
            uint32_t k;
            in.read((char *)&k, sizeof(uint32_t));
            out << "Node: " << nodes_read << " Deg: " << k << std::endl;

            if (k != 0) {
                graph_points++;
                //out << "Node ID: " << nodes_read << std::endl;
            }

            cc += k;
            ++nodes_read;
            std::vector<uint32_t> tmp(k);
            tmp.reserve(k);
            in.read((char *)tmp.data(), k * sizeof(uint32_t));
            //out << "Read " << k << " edges for node: " << nodes_read - 1 << std::endl;

            graph[nodes_read - 1].swap(tmp);
            bytes_read += sizeof(uint32_t) * ((size_t)k + 1);
            //out << "Total bytes read: " << bytes_read << std::endl;

            if (nodes_read % 10000000 == 0)
                out << "." << std::flush;
            if (k > max_range_of_graph) {
                max_range_of_graph = k;
            }
        }
    } catch (const std::ios_base::failure &e) {
        out << "Error reading graph data from file: " << e.what() << std::endl;
        return;
    }

    out << "done. Index has " << graph_points << " nodes/clusters and " << cc << " out-edges, start is set to " << start
        << std::endl;
    out << "Nodes read: " << nodes_read << ", Start: " << start << ", Frozen points: " << file_frozen_pts << std::endl;
}

int main() {
    load_graph("/nvmessd1/fbv4/avarhade/clustering/wiki_memory_index_clustering_r16_l50_mcs100_pm50_t0.3", 1000000, "read_index.txt");
    return 0;
}
