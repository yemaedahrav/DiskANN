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


void change_datatype(const std::string& input_file, const std::string& output_file, std::vector<std::vector<float>>& data) {
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
        std::vector<uint16_t> fp16_vec(dimension);
        std::memcpy(fp16_vec.data(), data[i].data(), dimension * sizeof(uint16_t));
        std::vector<float> fp32_vec(dimension);
        for (int j = 0; j < dimension; ++j) {
            uint16_t h = fp16_vec[j];
            uint32_t sign = (h & 0x8000) << 16;
            uint32_t exp = (h & 0x7C00) >> 10;
            uint32_t mant = h & 0x03FF;
            uint32_t f;
            if (exp == 0) {
                if (mant == 0) {
                    f = sign;
                } else {
                    exp = 1;
                    while ((mant & 0x0400) == 0) {
                        mant <<= 1;
                        exp--;
                    }
                    mant &= 0x03FF;
                    exp = exp + (127 - 15);
                    f = sign | (exp << 23) | (mant << 13);
                }
            } else if (exp == 0x1F) {
                f = sign | 0x7F800000 | (mant << 13);
            } else {
                exp = exp + (127 - 15);
                f = sign | (exp << 23) | (mant << 13);
            }
            float val;
            std::memcpy(&val, &f, sizeof(float));
            fp32_vec[j] = val;
        }
        data[i] = std::move(fp32_vec);
    }

    // Write the converted vectors to a new file
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
            change_datatype(input_file, output_file, data);
            std::cout << input_file << " " << output_file << std::endl; 
            std::cout << "Datatype changed successfully "<<input_file<<"\nNumber of points: " << data.size() << ", Dimension: " << (data.empty() ? 0 : data[0].size()) << std::endl;
        } catch (const std::exception& e) {
            std::cout << "Error processing file " << input_file << ": " << e.what() << std::endl;
            std::cerr << "Exception: " << e.what() << std::endl;
        }
    }

    return 0;
}