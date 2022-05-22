% Mohit Kumar SR No. - 19825
%  DSP Assignment 6
% Question 8 : Design FIR lowpass, bandpass, bandstop, highpass filters with parameters 
% of your choice. Examine their frequency responses by varying the order of the filter 
% and the cut-off frequencies.
Wn =0.2;
N=48;
B = fir1(N,Wn,'high');
[g,w]=freqz(B);
figure;
plot(w/pi,abs(g));
grid;
axis([0 1 -1 2]);
xlabel('frequency in pi units'); ylabel('Gain');
title('Frequency Response of FIR High Pass Filter');
B = fir1(N,Wn,'low');
[g,w]=freqz(B);
figure;
plot(w/pi,abs(g));
grid;
axis([0 1 -1 2]);
xlabel('frequency in pi units'); ylabel('Gain');
title('Frequency Response of FIR Low Pass Filter');
Wn=[0.4 0.6];
B = fir1(N,Wn,'stop');
[g,w]=freqz(B);
figure;
plot(w/pi,abs(g));
grid;
axis([0 1 -1 2]);
xlabel('frequency in pi units'); ylabel('Gain');
title('Frequency Response of FIR Bandstop Filter');
B = fir1(N,Wn,'bandpass');
[g,w]=freqz(B);
figure;
plot(w/pi,abs(g));
grid;
axis([0 1 -1 2]);
xlabel('frequency in pi units'); ylabel('Gain');
title('Frequency Response of FIR Bandpass Filter');
