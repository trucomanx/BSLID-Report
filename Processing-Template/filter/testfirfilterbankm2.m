% 

% Download biospeckle data of:
% http://repositorio.ufla.br/jspui/handle/1/10619
IMAGESDIR='/home/fernando/data/cafe-biospeckle/sem1';

DATA=datapack(IMAGESDIR,'',1,128,'bmp');

ORDER=33;
H0=qmfmaker(ORDER);

[DATA0  DATA1 ] = firfilterbank(DATA ,H0,'mode2');
[DATA10 DATA11] = firfilterbank(DATA1,H0,'mode2');
[DATA00 DATA01] = firfilterbank(DATA0,H0,'mode2');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

DATA0_ =firsynthesisbank(DATA00,DATA01,H0);
DATA1_ =firsynthesisbank(DATA10,DATA11,H0);
DATA_  =firsynthesisbank(DATA0_,DATA1_,H0);

GPTD   =graphptd(DATA ,0.8);
GPTD_  =graphptd(DATA_,0.8);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

DATA00_ = firsynthesispath(DATA00,H0,[0 0]);
DATA01_ = firsynthesispath(DATA01,H0,[0 1]);
DATA10_ = firsynthesispath(DATA10,H0,[1 0]);
DATA11_ = firsynthesispath(DATA11,H0,[1 1]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

GAVD11_   = graphavd(DATA11_);
GAVD10_   = graphavd(DATA10_);
GAVD01_   = graphavd(DATA01_);
GAVD00_   = graphavd(DATA00_);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(3);
imagesc(GAVD11_,[0 27.062]);colorbar;
title('Graphic AVD method');

figure(4);
imagesc(GAVD10_,[0 27.062]);colorbar;
title('Graphic AVD method');

figure(5);
imagesc(GAVD01_,[0 27.062]);colorbar;
title('Graphic AVD method');

figure(6);
imagesc(GAVD00_,[0 27.062]);colorbar;
title('Graphic AVD method');
