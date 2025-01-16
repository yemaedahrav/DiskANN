import os
import numpy as np
import matplotlib.pyplot as plt

# Directory containing the files
directory = 'prec1M/2-hop-mid'

# Initialize a dictionary to store data
data = {}

data['r_baseline'] = ([3225.56, 4412.96, 5571.20, 7833.11, 10031.86], [65.21, 72.18, 76.64, 82.22, 85.65])
data['r_25'] = ([1538.13, 2056.97, 2555.96, 3530.51, 6356.54], [44.59, 51.97, 57.17, 64.30, 75.11])
data['r_30'] = ([1789.28, 2404.75, 3004.91, 4178.26, 7586.54], [48.86, 56.40, 61.67, 68.75, 79.37])
data['r_40'] = ([2278.53, 3091.32, 3885.61, 5450.21, 9986.52], [55.24, 62.99, 68.24, 75.16, 85.08])
data['r_48'] = ([2642.09, 3608.20, 4557.79, 6418.77, 11804.92], [59.20, 67.03, 72.25, 78.93, 88.12])
data['r_50'] = ([2732.09, 3732.09, 4716.74, 6652.96, 12246.16], [60.25, 67.92, 73.09, 79.71, 88.74])
data['r_60'] = ([3152.08, 4331.33, 5494.03, 7773.73, 14341.74], [64.31, 71.77, 76.69, 82.92, 91.08])
data['r_64'] = ([3334.17, 4584.24, 5811.05, 8223.64, 15158.29], [65.65, 73.05, 77.86, 83.95, 91.82])

# Plot the data
plt.figure(figsize=(10, 6))
colors = ['black', 'g', 'b', 'c', 'm', 'y', 'k', 'r']
for (r_value, (distances, recalls)), color in zip(data.items(), colors):
    plt.plot(distances, recalls, label=f'r = {r_value}', color=color)

plt.xlabel('Distance Comparisons')
plt.ylabel('Recall')
plt.title('Distance Comparisons vs Recall')
plt.legend()
plt.grid(True)
plt.savefig('distance_comparisons_vs_recall.png')