% Mohit Kumar SR No.- 19825
% DSP Assignment 6
% Question 2
% Generate sinusoid of a given frequency and compute its frequency (in Hz) from its
% samples when sampling rate is given

clear all;
close all;
clc;

fs=15e3; % sampling frequency
t=0:1/fs:5e-3;
n=0:length(t)-1; % discrete time
w=0.2*pi; % frequency of discrete time sinusoidal signal
figure;
stem(10*sin(w*n+pi/4));
xlabel('discrete time');
ylabel('amplitude');
title('Discrete-time sinusoidal signal');

f=(fs*w)/2*pi; % frequency in Hz of the sinusoidal signal

fprintf('Frequency in (Hz) :  %f Hz\n', f);

