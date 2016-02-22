% 

% Download biospeckle data of:
% http://repositorio.ufla.br/jspui/handle/1/10619
IMAGESDIR='/home/fernando/data/cafe-biospeckle/sem1';

DATA=datapack(IMAGESDIR,'',1,128,'bmp');

ORDER=32;

H0 = fir1(ORDER,0.5,'low');
[DATA0 DATA1] = firfilterbank(DATA,H0,'mode0');

G0 = fir1(ORDER,0.25,'low');
[DATA00 DATA01] = firfilterbank(DATA0,G0,'mode0');

W0 = fir1(ORDER,0.125,'low');
[DATA000 DATA001] = firfilterbank(DATA00,W0,'mode0');

GAVD   =graphavd(DATA,'off');
GAVD_  =graphavd(DATA1+DATA01+DATA001+DATA000,'off');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

GAVD1  =graphavd(DATA1,'off');
GAVD01 =graphavd(DATA01,'off');
GAVD001=graphavd(DATA001,'off');
GAVD000=graphavd(DATA000,'off');

figure(1);
imagesc(GAVD,[0 36]);colorbar;
title('Graphic AVD method');

figure(2);
imagesc(GAVD_,[0 36]);colorbar;
title('Graphic AVD method');

figure(3);
imagesc(GAVD1,[0 36]);colorbar;
title('Graphic AVD method');

figure(4);
imagesc(GAVD01,[0 36]);colorbar;
title('Graphic AVD method');

figure(5);
imagesc(GAVD001,[0 36]);colorbar;
title('Graphic AVD method');

figure(6);
imagesc(GAVD000,[0 36]);colorbar;
title('Graphic AVD method');
