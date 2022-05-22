% Mohit Kumar SR No.- 19825
% DSP Assignment 6
% Question 4
% Demonstrate that the following system is linear and time invariant:
% y[n]−0.4y[n−1]+0.75y[n−2]=2.2403x[n]+2.4908x[n−1]+2.2403x[n−2]

clear all;
close all;
clc;

% linearity
n = 0:40; a = 2;b = -4;
x1 = cos(2*pi*0.2*n); x2 = cos(2*pi*0.4*n); x = a*x1 + b*x2;
num = [2.2403 2.4908 2.2403]; den = [1 -0.4 0.75];
ic = [0 0]; % setting the initial conditions to zero
y1 = filter(num,den,x1,ic); %calculation of the output signal y1[n]
y2 = filter(num,den,x2,ic); %calculation of the output signal y2[n]
y = filter(num,den,x,ic); %calculation of the output signal y[n]
yt = a*y1 + b*y2; d = y - yt; %calculation of the error signal d[n]
% plotting the error and the output signals
subplot(3,1,1); stem(n,y); ylabel('Amplitude');
title('Output corresponding to: a\cdot x_{1}[n] + b\cdot x_{2}[n]');
subplot(3,1,2); stem(n,yt); ylabel('Amplitude');
title('Output calculated as: a\cdot y_{1}[n] + b\cdot y_{2}[n]');
subplot(3,1,3); stem(n,d); xlabel('Time index n');
ylabel('Amplitude'); title('Error signal');

% time invariance
n = 0:40; D = 5; a = 2;b = -4;
x = a*cos(2*pi*0.2*n) + b*cos(2*pi*0.4*n); xd = [zeros(1,D) x];
num = [2.2403 2.4908 2.2403]; den = [1 -0.4 0.75];
ic = [0 0]; % setting the initial conditions to zero
% calculation of the output y[n]
y = filter(num,den,x,ic);
% calculation of the output yd[n]
yd = filter(num,den,xd,ic);
% Calculation of the error signal d[n]
d = y - yd(1+D:41+D);
% plotting the outputs
figure;
subplot(3,1,1); stem(n,y); ylabel('Amplitude');
title('Output y[n]'); grid;
subplot(3,1,2); stem(n,yd(1:41)); ylabel('Amplitude');
title(['Output corresponding to the shifted input x[n -', num2str(D),']']);
grid;
subplot(3,1,3); stem(n,d); xlabel('time index n');
ylabel('Amplitude');title('Error signal'); grid;