% 

% Download biospeckle data of:
% http://repositorio.ufla.br/jspui/handle/1/10619
IMAGESDIR='/home/fernando/data/cafe-biospeckle/sem1';

DATA=datapack(IMAGESDIR,'',1,128,'bmp');
[THSP POINTS]=thsp_gaussian(DATA,200,25,[250,250],'on');


imagesc(THSP);
colormap gray;

