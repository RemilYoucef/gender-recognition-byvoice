
function [S] = filtrerVoix(signal,fs,fc)

X = fir1(100,fc/fs,'low');
S = filter(X,1,signal);
sound(S,fs) % Pour ecouter le signal 
subplot(1,1,1);
plot(S)
xlabel('fréquence'),title('Signal filtré')
end

