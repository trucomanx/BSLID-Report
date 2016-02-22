% 

% Download biospeckle data of:
% http://repositorio.ufla.br/jspui/handle/1/10619
IMAGESDIR='/home/fernando/data/cafe-biospeckle/sem1';

SIDEPOINTS=16;          % Side points of mother wavelet.

PSI0 = morlet(-3.5,3.5, 2*SIDEPOINTS+1);		
PSI1 = morlet(-3.5,3.5, 4*SIDEPOINTS+1);		
PSI2 = morlet(-3.5,3.5, 8*SIDEPOINTS+1);		

PSI0=PSI0/sum(PSI0.^2);
PSI1=PSI1/sum(PSI1.^2);
PSI2=PSI2/sum(PSI2.^2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

RESOLUTION = 256;   % Graphic resolution.

[FR0 F0]=freqmod(PSI0,RESOLUTION);
[FR1 F1]=freqmod(PSI1,RESOLUTION);
[FR2 F2]=freqmod(PSI2,RESOLUTION);


figure(1);
plot(F0,FR0,'-o',F1,FR1,'-s',F2,FR2,'->');
legend( 'Freq. response of PSI0', ...
		'Freq. response of PSI1', ...
		'Freq. response of PSI2');
ylabel('|Magnitude|');
xlabel('W/\pi normalized frequency');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

DATA=datapack(IMAGESDIR,'',1,128,'bmp');

DATA0 = datapack_conv(DATA,PSI0);
DATA1 = datapack_conv(DATA,PSI1);
DATA2 = datapack_conv(DATA,PSI2);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

GAVD0 = graphavd(DATA0);
GAVD1 = graphavd(DATA1);
GAVD2 = graphavd(DATA2);


figure(2);
imagesc(GAVD0,[0 18.226]);colorbar;
title('Graphic AVD method');

figure(3);
imagesc(GAVD1,[0 18.226]);colorbar;
title('Graphic AVD method');

figure(4);
imagesc(GAVD2,[0 18.226]);colorbar;
title('Graphic AVD method');
