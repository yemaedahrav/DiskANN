import numpy as np
from scipy.spatial.distance import pdist

def compute_min_max_distances_gt(filename):
    with open(filename, "rb") as f:
        n = int.from_bytes(f.read(4), byteorder='little')
        d = int.from_bytes(f.read(4), byteorder='little')
        # Skip IDs
        f.read(4 * n * d)
        # Read distances
        distances = np.frombuffer(f.read(4 * n * d), dtype=np.float32)
        min_dist = np.min(distances)
        max_dist = np.max(distances)
        # Bucket edges
        buckets = [0, 0.3, 0.5, 1, 1.5, 100000]
        counts = [0] * (len(buckets) - 1)
        for dist in distances:
            for i in range(len(buckets) - 1):
                if buckets[i] <= dist < buckets[i + 1]:
                    counts[i] += 1
                    break
        total = len(distances)
        print(f"Ground Truth: {n}, #GT: {d}")
        print(f"Bucket percentages: 0-0.3: {counts[0]/total:.2%}, 0.3-0.5: {counts[1]/total:.2%}, 0.5-1: {counts[2]/total:.2%}, >1: {counts[3]/total:.2%}\n")
    return min_dist, max_dist



def compute_min_max_distances_data(filename):
    with open(filename, "rb") as f:
        n = int.from_bytes(f.read(4), byteorder='little')
        d = int.from_bytes(f.read(4), byteorder='little')
        # Read data points
        data = np.frombuffer(f.read(n * d * 4), dtype=np.float32).reshape(n, d)
        # Compute pairwise distances
        distances = pdist(data, metric='euclidean')
        min_dist = np.min(distances)
        max_dist = np.max(distances)
        buckets = [0, 0.3, 0.5, 1, 1.5, 100000]
        counts = [0] * (len(buckets) - 1)
        for dist in distances:
            for i in range(len(buckets) - 1):
                if buckets[i] <= dist < buckets[i + 1]:
                    counts[i] += 1
                    break
        total = len(distances)
        print(f"Data points: {n}, Dimension: {d}")
        print(f"Bucket percentages: 0-0.3: {counts[0]/total:.2%}, 0.3-0.5: {counts[1]/total:.2%}, 0.5-1: {counts[2]/total:.2%}, >1: {counts[3]/total:.2%}")
    return min_dist, max_dist


if __name__ == "__main__":
    data_file = "/home/t-avarhade/test_generated_data/embeddings_10k_data_pert_eps1.62e-05_normalized.bin"
    gt_file = "/home/t-avarhade/test_generated_data/embeddings_10k_normalized_gt200.bin"
    compute_min_max_distances_gt(gt_file)
    print(f"Data file: {data_file}")
    min_dist, max_dist = compute_min_max_distances_data(data_file)
    print(f"Min distance: {min_dist}")
    print(f"Max distance: {max_dist}")