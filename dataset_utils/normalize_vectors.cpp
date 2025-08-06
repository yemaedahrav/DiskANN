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

void process_bin_file(const std::string& input_file, const std::string& output_file, std::vector<std::vector<float>>& data) {
    std::ifstream input(input_file, std::ios::binary | std::ios::in);
    if (!input) {
        throw std::runtime_error("Cannot open file: " + input_file);
    }

    int num_points, dimension;
    input.read(reinterpret_cast<char*>(&num_points), sizeof(int));
    input.read(reinterpret_cast<char*>(&dimension), sizeof(int));

    data.resize(num_points, std::vector<float>(dimension));
    for (int i = 0; i < num_points; ++i) {
        input.read(reinterpret_cast<char*>(data[i].data()), dimension * sizeof(float));
    }

    // Compute the norm of each vector and normalize the vectors
    for (auto& vec : data) {
        float sum = 0.0f;
        for (const auto& val : vec) {
            sum += val * val;
        }
        float norm = std::sqrt(sum);
        if (norm > 0) {
            for (auto& val : vec) {
                val /= norm;
            }
        }
    }

    // Write the normalized vectors to a new file
    std::ofstream output(output_file, std::ios::binary | std::ios::out);
    if (!output) {
        throw std::runtime_error("Cannot open file for writing: " + output_file);
    }

    output.write(reinterpret_cast<const char*>(&num_points), sizeof(int));
    output.write(reinterpret_cast<const char*>(&dimension), sizeof(int));
    for (const auto& vec : data) {
        output.write(reinterpret_cast<const char*>(vec.data()), dimension * sizeof(float));
    }
}

int main(int argc, char* argv[]) {

    // std::vector<std::pair<std::string, std::string>> file_pairs = {
    //     {"/nvmessd2/bigann/wikipedia_cohere/wikipedia_base.bin.crop_nb_1000000", "/nvmessd1/fbv4/avarhade/datasets/wiki1M_normalized.bin"},
    //     {"/nvmessd2/bigann/wikipedia_cohere/wikipedia_query.bin", "/nvmessd1/fbv4/avarhade/datasets/wiki1M_queries_normalized.bin"}
    // };

    if (argc != 5) {
        std::cerr << "Usage: " << argv[0] << " <input_base> <output_base> <input_query> <output_query>" << std::endl;
        return 1;
    }
    std::vector<std::pair<std::string, std::string>> file_pairs = {
        {argv[1], argv[2]},
        {argv[3], argv[4]}
    };

    for (const auto& pair : file_pairs) {
        const std::string& input_file = pair.first;
        const std::string& output_file = pair.second;

        std::vector<std::vector<float>> data;

        try {
            process_bin_file(input_file, output_file, data);
            std::cout << input_file << " " << output_file << std::endl; 
            std::cout << "Data normalized successfully "<<input_file<<"\nNumber of points: " << data.size() << ", Dimension: " << (data.empty() ? 0 : data[0].size()) << std::endl;
        } catch (const std::exception& e) {
            std::cout << "Error processing file " << input_file << ": " << e.what() << std::endl;
            std::cerr << "Exception: " << e.what() << std::endl;
        }
    }

    return 0;
}