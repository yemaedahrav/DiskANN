import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import glob
import string

# Define the data
data1 = {
    'Ls': [50, 100, 150, 200, 250, 300, 500],
    'QPS': [4687.20, 3793.17, 3672.05, 3382.15, 3143.32, 3017.34, 2144.13],
    'Avg_dist_cmps': [1287.31, 2304.56, 3301.14, 4282.09, 5253.63, 6213.68, 9975.24],
    'Avg_hops': [62.99, 111.47, 160.24, 209.22, 258.53, 307.86, 506.19],
    'Mean_Latency': [10175.06, 12609.50, 13027.15, 14133.75, 15214.76, 15837.23, 22284.30],
    'Latency_99.9': [30883.00, 34762.89, 31922.22, 30042.30, 30946.24, 34460.11, 45120.93],
    'Recall_50': [71.67, 82.14, 86.69, 89.35, 91.08, 92.29, 94.90]
}

data2 = {
    'Ls': [50, 100, 150, 200, 250, 300, 500],
    'QPS': [15520.52, 9589.27, 7458.95, 7251.40, 6668.74, 6073.31, 4211.93],
    'Avg_dist_cmps': [763.07, 1258.95, 1737.40, 2205.49, 2666.79, 3120.90, 4880.53],
    'Avg_hops': [63.27, 111.75, 160.46, 209.39, 258.63, 308.03, 506.39],
    'Mean_Latency': [3052.96, 4979.41, 6401.56, 6596.22, 7167.70, 7865.65, 11355.15],
    'Latency_99.9': [19792.87, 9678.75, 18581.68, 16323.71, 13040.60, 16585.73, 21858.98],
    'Recall_50': [72.72, 83.03, 87.51, 90.04, 91.72, 92.94, 95.52]
}
data3 = {
    'Ls': [50, 100, 150, 200, 250, 300, 500],
    'QPS': [5229.63, 4717.29, 4236.71, 3809.47, 3805.18, 4237.32, 3050.45],
    'Avg_dist_cmps': [916.96, 1613.04, 2279.54, 2932.02, 3574.77, 4207.21, 6657.38],
    'Avg_hops': [59.97, 108.32, 157.08, 206.21, 255.69, 305.21, 503.99],
    'Mean_Latency': [9124.17, 10137.99, 11287.93, 12560.90, 12573.91, 11293.54, 15627.65],
    'Latency_99.9': [34802.71, 17683.38, 20795.71, 21532.43, 32592.34, 17710.46, 26072.87],
    'Recall_50': [48.59, 59.83, 65.13, 68.52, 71.00, 72.94, 77.75]
}
data4 = {
    'Ls': [50, 100, 150, 200, 250, 300, 500],
    'QPS': [5031.02, 4515.97, 4022.53, 3718.67, 3594.38, 3577.67, 2761.97],
    'Avg_dist_cmps': [1099.66, 1934.30, 2745.07, 3535.64, 4312.16, 5078.18, 8050.69],
    'Avg_hops': [60.70, 107.90, 156.37, 205.32, 254.57, 304.08, 502.85],
    'Mean_Latency': [9483.57, 10591.27, 11893.83, 12865.52, 13319.95, 13368.69, 17326.32],
    'Latency_99.9': [34470.12, 20940.90, 21139.69, 21899.01, 24422.27, 20774.77, 26233.03],
    'Recall_50': [21.28, 27.81, 31.81, 34.69, 36.92, 38.80, 44.09]
}

# Convert to DataFrame
df1 = pd.DataFrame(data1)
df2 = pd.DataFrame(data2)
df3 = pd.DataFrame(data3)
df4 = pd.DataFrame(data4)

# Create a 1x2 grid for the plots
fig, axs = plt.subplots(1, 2, figsize=(15, 5))

# Plot recall vs dist comps
axs[0].plot(df1['Avg_dist_cmps'].to_numpy(), df1['Recall_50'].to_numpy(), label='m20_reverse_t0.4')
axs[0].plot(df2['Avg_dist_cmps'].to_numpy(), df2['Recall_50'].to_numpy(), label='Baseline')
axs[0].plot(df3['Avg_dist_cmps'].to_numpy(), df3['Recall_50'].to_numpy(), label='m20_t0.2')
axs[0].plot(df4['Avg_dist_cmps'].to_numpy(), df4['Recall_50'].to_numpy(), label='m10_t0.3')
axs[0].set_xlabel('Avg dist cmps')
axs[0].set_ylabel('Recall@50')
axs[0].set_title('Recall vs Avg dist cmps')
axs[0].legend()
axs[0].grid(True)

# Plot recall vs qps
axs[1].plot(df1['QPS'].to_numpy(), df1['Recall_50'].to_numpy(), label='m20_reverse_t0.4')
axs[1].plot(df2['QPS'].to_numpy(), df2['Recall_50'].to_numpy(), label='Baseline')
axs[1].plot(df3['QPS'].to_numpy(), df3['Recall_50'].to_numpy(), label='m20_t0.2')
axs[1].plot(df4['QPS'].to_numpy(), df4['Recall_50'].to_numpy(), label='m10_t0.3')
axs[1].set_xlabel('QPS')
axs[1].set_ylabel('Recall@50')
axs[1].set_title('Recall vs QPS')
axs[1].legend()
axs[1].grid(True)

# Adjust layout and save the figure
plt.tight_layout()
plt.savefig('/home/rakri/avarhade/DiskANN/recall_qps_plots.png')
