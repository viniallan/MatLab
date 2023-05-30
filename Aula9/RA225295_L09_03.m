function [dt, tn, df, fmin, fmax, h] = RA225295_L09_03()
    h = figure;
    % seu código aqui
    fs=128;
    dt=1/fs; 
    n=64;
    t=(0:n-1)*dt;
    tn=t(end);
    fmax=0.5*fs;
    fmin=1/tn;
    y=1.5+1.8*cos(2*pi*12*t)+0.8*sin(2*pi*20*t)-1.25*cos(2*pi*28*t); 
    Y = fft(y)/n;
    f = linspace(fmin,fmax,n/2);
    df=n/2;

    a0 = Y(1);
    subplot(2,1,1);
    stem(f,abs(Y(1:n/2)));
    subplot(2,1,2);
    stem(f,angle(Y(1:n/2)));
end