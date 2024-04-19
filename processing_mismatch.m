num_runs = 440;

%to run this, first edit the number of runs
%change the export folder to your running directory
%on the blockConf file, comment out the stdev value of the block under test
%run processing.m

setting_folder = 'delay_period_setting';
export_folder = 'delay_period_mismatch';  

    if ~exist(export_folder, 'dir')
        mkdir(export_folder);
    elseif exist(export_folder, 'dir')
        rmdir(export_folder, 's');
        mkdir(export_folder);
    end

    if ~exist(setting_folder, 'dir')
        mkdir(setting_folder);
    elseif exist(setting_folder, 'dir')
        rmdir(setting_folder, 's');
        mkdir(setting_folder);
    end


for h = 0:10    
    for i = 1:num_runs

        %% Initialization of Variables
        %stdev here has the form h*(0.n*e-12) 
        %h = number of points in the graph 
        %n = spacing between each point 
        %h*n = maximum sweep value 
        
        stdev_delay = h*0.25e-12;
        run('blockConf.m');

        %% Exporting Values

        %Combine variables into a table
        variable_names = cell(31, 1); % Cell array to store variable names
        variable_values = cell(31, 1); % Cell array to store variable values
        
        %Assign variable names and values to cell arrays
        for j = 1:31
            variable_names{j} = sprintf('tp_delay_b%d', j);
            variable_values{j} = eval(variable_names{j}); % Get variable value using eval
        end
        
        %Create table
        T = table(variable_values{:}, 'VariableNames', variable_names);
        
        %Export table to CSV
        folder_path = setting_folder; % Specify the folder path
        file_name = sprintf('setting_data_%d_%d.csv', h, i); % Specify the file name
        
        
        %Combine folder path and file name
        file_path = fullfile(folder_path, file_name);
        
        %Write table to CSV file
        writetable(T, file_path);

        
        %% Simulation
        out = sim('sub32_4n_model_run.slx');
        
        pulse = out.gpulse; 
        
        gaussianPulse = timeseries2timetable(pulse);
        
        t = gaussianPulse.Time;
        vals_pre = gaussianPulse.output';
        vals = [vals_pre zeros(1,10000)]';
        N = length(vals); 
        
        time = time2num(t);
        time = time/1E-9;
        
        half = floor(N/2);
        Fs = 1/10e-12;
        df = Fs/N; 
        vect = 0:1:N-1; 
        freqs = df*vect/1e9;
        n_freq = length(freqs);
        
        fvals = fft(vals); 
        fvals = abs(fvals)/N; 
        
        psdvals = fft(vals); 
        psdvals = abs(psdvals).^2 / (Fs*N); 
        max_psdval = max(psdvals);
        psdvals=psdvals/max_psdval;
        
        %psdvals = psdvals/max_psdval;
        psdvals = 10*log10(psdvals);
        
        threshold = 15; %in GHz
        time_th = 3; %in ns
        
        desired_f = freqs(freqs<threshold);
        desired_psd = psdvals(freqs<threshold);
        desired_fft = fvals(freqs<threshold);
        
        tempFreq = freqs(freqs<threshold)';
        tempVals = psdvals(freqs<threshold);
        
        %csvwrite('matlabData.csv', [tempFreq, tempVals]);
        filename = fullfile(export_folder, sprintf('matlabData_%d_%d.csv', h,i));
        tableData = table(tempFreq, tempVals, 'VariableNames', {'Frequency', 'Power'});
        writetable(tableData, filename);
        
        %plot(freqs(freqs<threshold),psdvals(freqs<threshold))
        %title('Power Spectral Density') 
        %xlabel('Frequency (GHz)')
        %ylabel('Magnitude (dBm/MHz)')
        %grid on
    end
end
%%
%subplot(1,3,3)
%plot(desired_f,desired_fft)
%title('Frequency Domain')
%xlabel('Frequency (GHz)')
%ylabel('Magnitude (V/Hz)')
%grid on
%%