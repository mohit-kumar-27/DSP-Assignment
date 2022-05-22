% Mohit Kumar SR No.- 19825
% DSP Assignment 6
% Question 7
% Analyze the frequency response of the following two systems:
% sys1 : y[n]=0.5x[n]+0.27x[n−1]+0.77x[n−2],
% sys2 : y[n]=0.45x[n]+0.5x[n−1]+0.45x[n−2]+0.53y[n−1]−0.46y[n−2].
% Compute the output of these two systems when input is a sum of two cosine signals
% with frequency 10Hz and 100Hz at a sampling rate of 256Hz.

clear all;
close all;
clc;

fs=256;
f1=10;f2=100;
n=0:100;
x=4*cos(2*pi*(f1/fs)*n)+2*cos(2*pi*(f2/fs)*n); % input signal
num1 = [0.5 0.27 0.77]; den1 = [1];
num2=[0.45 0.5 0.45];den2=[1 -0.53 0.46];
ic = [0 0]; 
y1 = filter(num1,den1,x,ic); % output of system 1
y2 = filter(num2,den2,x,ic); % output of system 2
[g1,w1]=freqz(num1,den1); % frequency response of system 1
[g2,w2]=freqz(num2,den2); % frequency response of system 2
% plotting
figure;
subplot(2,1,1);
plot(w1/pi,abs(g1));
grid;axis([0 1 -1 2]);
xlabel('frequency in pi units'); ylabel('Gain');
title('Frequency Response of system 1');
subplot(2,1,2);
plot(w2/pi,abs(g2));
grid;axis([0 1 -1 2]);
xlabel('frequency in pi units'); ylabel('Gain');
title('Frequency Response of system 2');
figure;
subplot(2,1,1); stem(n,y1); xlabel('discrete time');ylabel('Amplitude');
title('Output of system 1'); 
grid;
subplot(2,1,2); stem(n,y2); xlabel('discrete time');ylabel('Amplitude');
title('Output of system 2');
grid;