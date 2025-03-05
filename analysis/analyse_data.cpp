#include <iostream>
#include <vector>
#include <string>
#include <algorithm>
#include <cmath>
#include <fstream>
#include <sstream>
#include <numeric>
#include <limits>
#include <memory>
#include <utility>
#include <atomic>
#include <random>
#include <cassert>
#include <exception>
#include <stdexcept>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>


void read_bin_file(const std::string& file_path, std::vector<std::vector<float>>& data) {
    std::ifstream input(file_path, std::ios::binary | std::ios::in);
    if (!input) {
        throw std::runtime_error("Cannot open file: " + file_path);
    }

    int num_points, dimension;
    input.read(reinterpret_cast<char*>(&num_points), sizeof(int));
    input.read(reinterpret_cast<char*>(&dimension), sizeof(int));

    data.resize(num_points, std::vector<float>(dimension));
    for (int i = 0; i < num_points; ++i) {
        input.read(reinterpret_cast<char*>(data[i].data()), dimension * sizeof(float));
    }
}

int main() {

    //std::string input_file = "/nvmessd2/bigann/wikipedia_cohere/wikipedia_query.bin";
    std::string input_file = "/nvmessd1/fbv4/avarhade/datasets/prec1M_queries_normalized.bin";
    std::vector<std::vector<float>> data;

    try {
        read_bin_file(input_file, data);
        std::cout <<input_file<< std::endl;
        std::cout << "Data read successfully. Number of points: " << data.size() << ", Dimension: " << (data.empty() ? 0 : data[0].size()) << std::endl;
    } catch (const std::exception& e) {
        std::cerr << "Exception: " << e.what() << std::endl;
    }

    for (const auto& vec : data) {
        float l2_norm_squared = 0.0f;
        for (const auto& val : vec) {
            l2_norm_squared += val * val;
        }
        float l2_norm = std::sqrt(l2_norm_squared);
        std::cout << l2_norm << std::endl;
        // output << l2_norm_squared << std::endl;
    }
    return 0;
}