fs = 10;
t = 0:1/fs:20; 
y = sin(1.8*2*pi*t) + (2.1*2*pi*t); 
plot (t,y);
yfft = fft(y);
n = numel(y); 
f = 0:fs/n:fs*(n-1)/2;
plot (f, abs(yfft)); 
%This creates a plot to demostrate Nyquist Theorem
%So there are two high peaks which shows that you need to sample at least twice
