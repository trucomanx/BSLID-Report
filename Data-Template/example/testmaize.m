%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Using the library: BSL TOOL LIBRARY
%% Download: 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DIRECTORY='~/data/BSLdataMaizeSeed/MaizeSeed'

DATA = datapack(DIRECTORY,'',1,100,'bmp');

GD=gendiff(DATA);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Change the font of the axes
set(gca,'fontsize',16);
%% Redraw current figure
refresh 
%% print eps file
print('testgendiff.eps','-depsc','-tight','-F:16');

