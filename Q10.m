% Mohit Kumar SR No. - 19825
%  DSP Assignment 6
% Question 10: Design IIR lowpass, bandpass, bandstop, highpass filters with 
% parameters of your choice. Examine their frequency responses by varying the 
% order of the filter and the cut-off
Rp=0.4; Rs=50;
Wp=0.1; Ws=0.2;
[N,Wn]=buttord(Wp, Ws, Rp, Rs);
[num,den] = butter(N,Wn,'low');
[g,w]=freqz(num,den);
figure;
plot(w/pi,abs(g));
grid;axis([0 1 -1 2]);
xlabel('frequency in pi units'); ylabel('Gain');
title('Frequency Response of IIR Low Pass Filter');
Ws=0.1; Wp=0.2;
[N,Wn]=buttord(Wp, Ws, Rp, Rs);
[num,den] = butter(N,Wn,'high');
[g,w]=freqz(num,den);
figure;
plot(w/pi,abs(g));
grid;axis([0 1 -1 2]);
xlabel('frequency in pi units'); ylabel('Gain');
title('Frequency Response of IIR High Pass Filter');
Wp = [0.2 0.7]; Ws = [0.1 0.8];
[N,Wn]=buttord(Wp, Ws, Rp, Rs);
[num,den] = butter(N,Wn);
[g,w]=freqz(num,den);
figure;
plot(w/pi,abs(g));
grid;axis([0 1 -1 2]);
xlabel('frequency in pi units'); ylabel('Gain');
title('Frequency Response of IIR Bandpass Filter');
Wp = [0.1 0.8]; Ws = [0.2 0.7];
[N,Wn]=buttord(Wp, Ws, Rp, Rs);
[num,den] = butter(N,Wn,'stop');
[g,w]=freqz(num,den);
figure;
plot(w/pi,abs(g));
grid;axis([0 1 -1 2]);
xlabel('frequency in pi units'); ylabel('Gain');
title('Frequency Response of IIR Bandstop Filter');