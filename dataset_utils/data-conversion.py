import numpy as np



def convert_fp16_to_fp32(filename: str):
    """
    Convert a numpy array of FP16 values to FP32.
    
    Parameters:
    fp16_array (numpy.ndarray): Input array with dtype np.float16.
    
    Returns:
    numpy.ndarray: Converted array with dtype np.float32.
    """
    with open(filename, "rb") as f:
        num_points = int.from_bytes(f.read(4), byteorder="little")
        dim = int.from_bytes(f.read(4), byteorder="little")
        data = np.frombuffer(f.read(num_points * dim * 2), dtype=np.float16)
        data = data.reshape((num_points, dim))
        data_fp32 = data.astype(np.float32)
    out_filename = filename + "_fp32"
    with open(out_filename, "wb") as f:
        f.write(num_points.to_bytes(4, byteorder="little"))
        f.write(dim.to_bytes(4, byteorder="little"))
        f.write(data_fp32.astype(np.float32).tobytes())
    return


convert_fp16_to_fp32("/home/t-avarhade/ann-datasets/SentenceChunk_OAILarge_1M_normalized_1000000.bin")
print("Conversion complete. Output saved as '/home/t-avarhade/ann-datasets/SentenceChunk_OAILarge_1M_normalized_1000000.bin_fp32'\n")
convert_fp16_to_fp32("/home/t-avarhade/ann-datasets/SentenceChunk_OAILarge_query_normalized_6809.bin")
print("Conversion complete. Output saved as 'home/t-avarhade/ann-datasets/SentenceChunk_OAILarge_query_normalized_6809.bin_fp32'\n")