% Mohit Kumar SR No.- 19825
% DSP Assignment 6
% Question 6
% Show that the cascade of following two systems:
% sys1 : y1[n]+0.9y1[n−1]+0.8y1[n−2]=0.3x[n]−0.2x[n−1]+0.4x[n−2]
% sys2 : y2[n]+0.7y2[n−1]+0.85y2[n−2]=0.2y1[n]−0.5y1[n−1]+0.3y1[n−2]
% is identical to the following system:
% y[n]+1.6y[n−1]+2.28y[n−2]+1.325y[n−3]+0.68y[n−4]
% = 0.06x[n]−0.19x[n−1]+0.27x[n−2]−0.26x[n−3]+0.12x[n−4]

clear all; 
close all;
clc;
n = 0:40;
x = 2*cos(2*pi*0.2*n)-4*cos(2*pi*0.4*n); % input signal

num1 = [0.3 -0.2 0.4]; den1 = [1 0.9 0.8];
num2=[0.2 -0.5 0.3];den2=[1 0.7 0.85];
ic = [0 0]; 
y1 = filter(num1,den1,x,ic); 
y2 = filter(num2,den2,y1,ic); % output of cascaded system
num3=[0.06 -0.19 0.27 -0.26 0.12];
den3=[1 1.6 2.28 1.325 0.68];
ic=[0 0 0 0];
y3=filter(num3,den3,x,ic); % output of equivalent system
d=y3-y2; % error signal
% plotting
figure;
subplot(3,1,1); stem(n,y2); xlabel('discrete time');ylabel('Amplitude');
title('Output of cascaded systems'); 
grid;
subplot(3,1,2); stem(n,y3); xlabel('discrete time');ylabel('Amplitude');
title('Output of equivalent system');
grid;
subplot(3,1,3); stem(n,d); xlabel('discrete time');
ylabel('Amplitude');title('Error signal'); 
grid;
