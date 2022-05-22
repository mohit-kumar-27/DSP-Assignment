% Mohit Kumar SR No. - 19825
%  DSP Assignment 6
% Question 11: Add white Gaussian noise (at 3dB) to a signal comprising two sinusoids 
% at 1000 and 1800Hz sampled at 10000Hz. Design a filter only to filter out signal  
% around the two frequencies so that the noise is reduced in the filtered signal
clear all;
close all;
clc;
f1=1000;f2=1800;
fs=10000;
n=0:100;
x=4*sin(2*pi*(f1/fs)*n)+2*sin(2*pi*(f2/fs)*n); % input signal
xn=awgn(x,3); % adding gaussian noise  
N = 20;                                             % Order
F = [0 0.18 0.19 0.21 0.22 0.34 0.35 0.37 0.38 1];  % Frequency Vector
A = [0 0 1 1 0 0 1 1 0 0];                          % Amplitude Vector
W = [1 1 1 1 1];                                    % Weight Vector

% calculating the coefficients using the FIRPM function
num  = firpm(N, F, A, W);
den=[1];
y = filter(num,den,xn); % filtering the noisy signal
% plotting
figure;
subplot(3,1,1); stem(n,x); xlabel('discrete time');ylabel('Amplitude');
title('input signal'); 
grid;
subplot(3,1,2); stem(n,xn); xlabel('discrete time');ylabel('Amplitude');
title('signal added with noise');
grid;
subplot(3,1,3); stem(n,y); xlabel('discrete time');ylabel('Amplitude');
title('filtered signal');
grid;


