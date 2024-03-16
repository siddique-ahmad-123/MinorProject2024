clc
clear all
close all
Fs = 100;         % Sampling frequency
t = 0:1/Fs:5;       % Time vector
f_signal = 1.5;      % Signal frequency
signal = sin(2*pi*f_signal*t);

% Add noise to the signal
SNR_target = 200;    % Target SNR in dB
noise = randn(size(t));  % Gaussian white noise with zero mean and unit variance

% Adjust the noise amplitude to achieve the target SNR
signal_power = rms(signal)^2;
noise_power = rms(noise)^2;
desired_noise_power = signal_power / (10^(SNR_target/10));
noise = noise * sqrt(desired_noise_power / noise_power);

10*log10(sum(signal.^2)/sum((noise.^2)))
% Add noise to the signal
noisy_signal = signal + noise;
plot(t,noisy_signal);
str=['noisy_signal_',num2str(SNR_target),'dB'];
xlswrite('sinwave_snr200dB_1.5Hz_Fs100Hz.xlsx',noisy_signal')