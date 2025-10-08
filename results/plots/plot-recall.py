import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import glob
import string

# Read all files starting with 'recall' in the specified directory
file_list = glob.glob('prec40M/variable-alpha-baseline/recall*.txt')

# Initialize an empty list to store data
data = []

# Loop through each file and read the data
for file in file_list:
    df = pd.read_csv(file, header=None)
    data.extend(df[0].values)

# Convert the list to a numpy array
data = np.array(data)
# Create a figure with 6 subplots
fig, axs = plt.subplots(5, 1, figsize=(15, 60))

axs = axs.flatten()
# Set the number of bins for the histogram
num_bins = 100
# Set uniform X-axis limits for all subplots
for ax in axs:
    ax.set_xlim(0, 100)
# Loop through each file and plot in a subplot
for i, file in enumerate(file_list):
    df = pd.read_csv(file, header=None)
    ax = axs[i]
    ax.hist(df[0].values, bins=50, alpha=0.75)
    ax.set_xlabel('Values')
    ax.set_ylabel('Frequency')
    ax.set_title(f'Distribution of Recall Values {file}')
    ax.grid(True)

# Adjust layout and save the figure
#plt.tight_layout()
plt.savefig('prec40M/variable-alpha-baseline/combined_recall_distributions.png')
plt.close()

