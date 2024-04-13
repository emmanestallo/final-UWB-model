function [gaussianKernel, gaussianPulse, gaussianPulse_ps] = gaussianPulseGenerator(centerFrequency)
    t = 0:1/1000e+9:4e-9;

    % Recreate the signal
    carrier = sin(2*pi*centerFrequency*t);

    % Gaussian kernel
    t0 = 2e-9;
    amplitude = 16;
    sigma = 1000e-12;
    second_term = exp(-1*(t-t0).^2/(2*sigma^2));
    gaussianKernel = amplitude.*second_term;

    % Main signal
    gaussianPulse_ps = carrier.*gaussianKernel;
    padBefore = zeros(100, 1);
    padAfter = zeros(1000000, 1);
    gaussianPulse = [padBefore; gaussianPulse_ps'; padAfter];
end