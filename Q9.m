% Mohit Kumar SR No. - 19825
%  DSP Assignment 6
% Question 9 :Can we design a bandpass filter using only lowpass and highpass filters?
% Answer: Yes, it is possible to design a bandpass filter using only lowpass and 
% highpass filters by cascading the low pass filter with the high pass filter 
% and appropriately choosing the cut off frequencies of the two filters

clear all;
close all;
clc;
N=30;
Wn=[0.3 0.7];
lp=fir1(N,Wn(2)); % low pass filter
[g1,w1]=freqz(lp,1);
hp=fir1(N,Wn(1),'high'); % high pass filter
[g2,w2]=freqz(hp,1);
bp=conv(hp,lp);
[g3,w3]=freqz(bp,1); % band pass filter by cascading high pass and low pass filters

% plotting
subplot(311);
plot(w1/pi,abs(g1));
xlabel('frequency in pi units');
ylabel('gain');
title('low pass filter');
subplot(312);
plot(w2/pi,abs(g2));
xlabel('frequency in pi units');
ylabel('gain');
title('high pass filter');
subplot(313);
plot(w3/pi,abs(g3));
xlabel('frequency in pi units');
ylabel('gain');
title('band pass filter');

