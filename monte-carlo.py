import numpy as np 
import pandas as pd 
from scipy.interpolate import interp1d
from scipy import signal as signal 
from scipy import fft as fft 
from scipy import integrate as integ 
import matplotlib.pyplot as plt 
import seaborn as sns 

import sys
import glob 
import os 

global fs 



def approximate_frequency_at_minus_3(power, frequency, center_index):

    index_before_minus3_lc = np.max(np.where(power[:center_index] < -3)[0])
    index_after_minus3_lc = index_before_minus3_lc + 1 

    index_before_minus3_rc = center_index + np.max(np.where(power[center_index:] > -3)[0])
    index_after_minus3_rc = index_before_minus3_rc + 1


    interp_func_before = interp1d(power[index_before_minus3_lc:index_after_minus3_lc+1], frequency[index_before_minus3_lc:index_after_minus3_lc+1], kind='linear')
    interp_func_after = interp1d(power[index_before_minus3_rc:index_after_minus3_rc+1], frequency[index_before_minus3_rc:index_after_minus3_rc+1], kind='linear')

    freq_at_minus_3_before = interp_func_before(-3)
    freq_at_minus_3_after = interp_func_after(-3) 

    bandWid = np.round(freq_at_minus_3_after, 5) - np.round(freq_at_minus_3_before, 5)

    return bandWid


def process_data(freqz,valz):
    frequency = freqz
    power = valz

    center_index = np.argmin(np.abs(power))
    center_frequency = frequency[center_index]
    bandwidth = approximate_frequency_at_minus_3(power, frequency, center_index)

    return center_frequency, bandwidth

###########################END OF FUNCTIONS#################DO NOT MODIFY###########################

# to run this, first specify the working directory 
# after specifying the working directory, specify the number of runs (this should be same as your matlab num_runs)
# if you want to increase the resolution or the range of sigma values, you can change sigma_vals 
# the sigma_vals should have the same values as h*(0.n)*e-12 for some range h and n that you like in matlab

directory = 'delay_to_router_mismatch'

num_runs = 440

# h*n is the maximum sigma delta_td
h = 10 #number of points (not including 0)
n = 0.25 #spacing between each point 


sigma_vals = np.arange(0,(h+1)*n,n)
output_fCenter_sd = list()
output_bandWidth_sd = list()
output_fCenter_mean = list()
output_bandWidth_mean = list()

for h in range(len(sigma_vals)):
    fCenter_data = list()
    bandWidth_data = list()

    for i in range(1,num_runs+1):
        matlabData = pd.read_csv(f'{directory}/matlabData_{h}_{i}.csv')
        tempFreq = matlabData['Frequency']
        tempVals = matlabData['Power']

        f_center, BW = process_data(tempFreq,tempVals)

        fCenter_data.append(f_center*1e+9)
        bandWidth_data.append(BW*1e+9)

    fCenter_data, bandWidth_data = np.array(fCenter_data), np.array(bandWidth_data)

    mean_fCenter = np.mean(fCenter_data)
    mean_bandWidth = np.mean(bandWidth_data)
    std_fCenter = np.std(fCenter_data)
    std_bandWidth = np.std(bandWidth_data) 

    output_fCenter_sd.append(std_fCenter)
    output_bandWidth_sd.append(std_bandWidth)

    output_fCenter_mean.append(mean_fCenter)
    output_bandWidth_mean.append(mean_bandWidth)


output_fCenter_sd = np.array(output_fCenter_sd)
output_bandWidth_sd = np.array(output_bandWidth_sd)

x_values = sigma_vals
y_values_bandWidth = output_bandWidth_sd / 1e+6
y_values_fCenter = output_fCenter_sd / 1e+9


#############################################PLOTTING################################################
sns.set(style="whitegrid", palette="deep")

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 5))

ax1.plot(x_values, y_values_bandWidth, marker='o', linestyle='-', color=sns.color_palette("deep")[2])
ax1.set_title(f'Output Bandwidth Variation (mean: {round(np.mean(output_bandWidth_mean)/1E+6,4)} MHz)')
ax1.set_ylabel('$\sigma_f$ [MHz]')
ax1.set_xlabel('$\sigma \Delta_t$ [ps]')
ax1.grid(True)

ax2.plot(x_values, y_values_fCenter, marker='o', linestyle='-', color=sns.color_palette("deep")[3])
ax2.set_title(f'Output Center Frequency Variation (mean: {round(np.mean(output_fCenter_mean)/1E+9,4)} GHz)')
ax2.set_ylabel('$\sigma_f$ [GHz]')
ax2.set_xlabel('$\sigma \Delta_t$ [ps]')
ax2.grid(True)

plt.tight_layout()
#####################################################################################################


###########################################SAVE DATA#################################################
if len(sys.argv) > 1 and sys.argv[1].lower() == 'save':
    os.makedirs(directory, exist_ok=True)

    fCenter_data_file = pd.DataFrame({'sigma_td': x_values, 'sigma_fc': y_values_fCenter})
    bandWidth_data_file = pd.DataFrame({'sigma_td': x_values, 'sigma_fc': y_values_bandWidth})

    fCenter_file_path = os.path.join(directory, 'FC_data.xlsx')
    bandWidth_file_path = os.path.join(directory, 'BW_data.xlsx')

    fCenter_data_file.to_excel(fCenter_file_path, index=False)
    bandWidth_data_file.to_excel(bandWidth_file_path, index=False)

    plot_file_path = os.path.join(directory, 'dataPlots.png')
    plt.savefig(plot_file_path)
#####################################################################################################


#############################################DELETE##################################################
if len(sys.argv) > 2 and sys.argv[2].lower() == 'delete':
    folder_to_delete = directory  # Change this to the actual folder name
    csv_files = glob.glob(os.path.join(folder_to_delete, '*.csv'))

    if csv_files:
        for csv_file in csv_files:
            os.remove(csv_file)
        print(f'CSV files in "{folder_to_delete}" have been deleted.')
    else:
        print(f'No CSV files found in "{folder_to_delete}".')
#####################################################################################################
        
plt.show()