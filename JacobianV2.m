% Wannabe Jacobians
longitudeIncrementPerPixel = 0.0000167; % This needs to be rounded up
latitudeIncrementPerPixel = 0.0000133; % This value was truncated

parentGPSX = -121.768097;
parentGPSY = 38.546339;

xPixelList = [];
yPixelList = [];


%%%%%%%%%%%%%%%%%%%
kemperLongitudeLocation = -121.754806;
kemperLatitudeLocation = 38.537083;
%%%%%%%%%%%%%%%%%%%%
meyerLongitudeLocation = -121.754806;
meyerLatitudeLocation = 38.534611;
%%%%%%%%%%%%%%%%%
arboretumLongitudeLocation = -121.754838;
arboretumLatitudeLocation = 38.532998;
%%%%%%%%%%%%%%%%%%%%%%
lot53LongitudeLocation = -121.765616;
lot53LatitudeLocation = 38.534355;
%%%%%%%%%%%%%%%%%%%%%%%
dairyLongitudeLocation = -121.759028;
dairyLatitudeLocation = 38.534390;
%%%%%%%%%%%%%%%%%%%%%%%
roundAboutLongitudeLocation = -121.760743;
roundAboutLatitudeLocation = 38.546080;
%%%%%%%%%%%%%%%%
environmentalLongitudeLocation = -121.749833;
environmentalLatitudeLocation = 38.537167;
%%%%%%%%%%%%%%%%
primeroLongitudeLocation = -121.755667;
primeroLatitudeLocation = 38.546056;



% Kemper Computation
kemperPixelLocationX = abs((parentGPSX)-(kemperLongitudeLocation))/longitudeIncrementPerPixel
xPixelList = [xPixelList, kemperPixelLocationX];
kemperPixelLocationY = abs((parentGPSY)-(kemperLatitudeLocation))/ latitudeIncrementPerPixel
yPixelList = [yPixelList, kemperPixelLocationY];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Meyer Computation
meyerPixelLocationX = abs((parentGPSX)-(meyerLongitudeLocation))/longitudeIncrementPerPixel
xPixelList = [xPixelList, meyerPixelLocationX];
meyerPixelLocationY = abs((parentGPSY)-(meyerLatitudeLocation))/ latitudeIncrementPerPixel
yPixelList = [yPixelList, meyerPixelLocationY];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Arboretum Computation
arboretumPixelLocationX = abs((parentGPSX)-(arboretumLongitudeLocation))/longitudeIncrementPerPixel
xPixelList = [xPixelList, arboretumPixelLocationX];
arboretumPixelLocationY = abs((parentGPSY)-(arboretumLatitudeLocation))/ latitudeIncrementPerPixel
yPixelList = [yPixelList, arboretumPixelLocationY];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Lot53 Computation
lot53PixelLocationX = abs((parentGPSX)-(lot53LongitudeLocation))/longitudeIncrementPerPixel
xPixelList = [xPixelList, lot53PixelLocationX];
lot53PixelLocationY = abs((parentGPSY)-(lot53LatitudeLocation))/ latitudeIncrementPerPixel
yPixelList = [yPixelList, lot53PixelLocationY];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% dairy Computation
dairyPixelLocationX = abs((parentGPSX)-(dairyLongitudeLocation))/longitudeIncrementPerPixel

dairyPixelLocationY = abs((parentGPSY)-(dairyLatitudeLocation))/ latitudeIncrementPerPixel

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% roundAbout Computation
roundAboutPixelLocationX = abs((parentGPSX)-(roundAboutLongitudeLocation))/longitudeIncrementPerPixel
roundAboutPixelLocationY = abs((parentGPSY)-(roundAboutLatitudeLocation))/ latitudeIncrementPerPixel
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% environmental Computation
environmentalPixelLocationX = abs((parentGPSX)-(environmentalLongitudeLocation))/longitudeIncrementPerPixel
environmentalPixelLocationY = abs((parentGPSY)-(environmentalLatitudeLocation))/ latitudeIncrementPerPixel
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% primero Computation
primeroPixelLocationX = abs((parentGPSX)-(primeroLongitudeLocation))/longitudeIncrementPerPixel
primeroPixelLocationY = abs((parentGPSY)-(primeroLatitudeLocation))/ latitudeIncrementPerPixel

gpX2Pixel(38.537083)
gpY2Pixel(-121.754806)

function [y] = gpX2Pixel(gpX)
parentGPSY = 38.546339; % This needs to be rounded up
latitudeIncrementPerPixel = 0.0000133;
    x = abs((parentGPSY)-(gpX))/ latitudeIncrementPerPixel;
end

function [x] = gpY2Pixel(gpY)
parentGPSX = -121.768097;
longitudeIncrementPerPixel = 0.0000167;
    x = abs((parentGPSX)-(gpY))/longitudeIncrementPerPixel;
end