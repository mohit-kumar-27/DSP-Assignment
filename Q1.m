% Mohit Kumar SR No.- 19825
% DSP Assignment 6
% Question 1
% Generate sinusoid of a given frequency and sample at two different sampling rate
% to show discrete signal is periodic in one case and it is not in another case
 
clear all;
close all;
clc;

fs=15e3; % sampling frequency
t=0:1/fs:5e-3;
n=0:length(t)-1; % discrete time

figure;
stem(10*sin(2*pi*1200/fs*n+pi/4));
xlabel('discrete time');
ylabel('amplitude');
title('Discrete-time periodic signal');

figure;
stem(10*sin(2*pi*4*pi*n+pi/4));
xlabel('discrete time');
ylabel('amplitude');
title('Discrete-time aperiodic signal');