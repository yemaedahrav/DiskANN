import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import glob
import string

# Define the data
data1 = {
    'Ls': [50, 100, 150, 200, 250, 300, 500],
    'QPS': [4459.45, 3710.13, 3179.57, 3064.50, 3517.98, 3137.77, 2180.18],
    'Avg_dist_cmps': [1217.99, 2141.01, 3031.08, 3896.41, 4744.15, 5575.71, 8779.04],
    'Exp_dist_cmps': [233.28, 560.30, 938.49, 1320.49, 1692.89, 2102.82, 2966.35],
    'Dist_%': [19.15, 26.17, 30.96, 33.89, 35.68, 37.71, 33.79],
    'Avg_hops': [62.95, 111.49, 160.26, 209.29, 258.46, 307.92, 506.19],
    'Mean_Latency': [10694.82, 12890.67, 15038.70, 15602.95, 13575.03, 15226.29, 21893.97],
    'Latency_99.9': [32810.58, 29722.16, 33310.87, 33123.41, 38130.00, 33568.16, 50789.36],
    'Search_Latency': [3735.73, 6066.35, 7717.38, 8574.03, 8224.41, 8348.53, 9795.36],
    'Exp_Latency': [1245.31, 2597.94, 3815.98, 4565.87, 4695.74, 5313.20, 7165.39],
    'Latency_%': [25.00, 29.98, 33.09, 34.75, 36.34, 38.89, 42.25],
    'Recall_50': [71.76, 82.27, 86.79, 89.38, 91.06, 92.30, 94.87]
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
plt.savefig('/home/rakri/avarhade/DiskANN/recall_qps_plots_updated.png')
