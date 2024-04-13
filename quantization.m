signal = desired_gauss_values;  % Example signal with 100 random values between 0 and 1

% Determine the minimum and maximum values
signal_min = min(signal);
signal_max = max(signal);

% Define the quantization levels
num_levels = 16;  % 4-bit quantization
quantization_levels = linspace(signal_min, signal_max, num_levels);

% Quantize the signal
quantized_signal = zeros(size(signal));
for i = 1:length(signal)
    [~, level_index] = min(abs(signal(i) - quantization_levels));
    quantized_signal(i) = quantization_levels(level_index);
end

% Plot the original and quantized signals
figure;
subplot(2, 1, 1);
plot(signal);
title('Original Signal');
xlabel('Sample Index');
ylabel('Amplitude');

subplot(2, 1, 2);
stairs(1:length(signal), quantized_signal);
title('Quantized Signal');
xlabel('Sample Index');
ylabel('Amplitude');