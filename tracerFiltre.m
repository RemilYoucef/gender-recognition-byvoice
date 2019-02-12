
function [ Y ] = tracerFiltre()
t1 = 0:1:5 ;
X=[5.2 5 8 5 4.3 5.1]; % Le vecteur d'entrée
hDen = [0.5 0.5];
hNum = [1 0] ;
Y=filter(hDen,hNum,X);
subplot(1,4,1)
stem(t1,X);
title('Entrée X');
subplot(1,4,2)
stem(t1,Y)
title('Sortie Y');
[h,t2] = impz(hDen,hNum,6);
subplot(1,4,3)
stem(t2,h);
title('Réponse impulsionnelle');
subplot(1,4,4)
[H,t3]=freqz(hDen,hNum);
stem(t3,H)
title('H(Z)');
end

