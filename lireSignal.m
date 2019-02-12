
function [y,fs] = lireSignal(fichierAudio)

[y,fs] = audioread(fichierAudio); %y etant le signal retourné 
                                  %et fs la fréquence maximale
subplot(1,1,1);
plot(y)
xlabel('Frequence')
ylabel('Audio Signal')

end

