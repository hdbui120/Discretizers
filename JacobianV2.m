classdef mapping
    properties
        xPixelList
        yPixelList
        parentGPSX
        parentGPSY
        longitudeIncrementPerPixel
        latitudeIncrementPerPixel
    end
    
    format long

% Wannabe Jacobians
longitudeIncrementPerPixel = 0.0000167; % This needs to be rounded up
latitudeIncrementPerPixel = 0.0000133; % This value was truncated

parentGPSX = -121.768097;
parentGPSY = 38.546339;

xPixelList = gpX2Pixel(locations.longitude);
yPixelList = gpY2Pixel(locations.latitude);

locations = readtable('discretizersGpsData.txt', private);

latitude = locations.latitude(private);
longitude = locations.longitude;
    
    methods
        function [y] = gpY2Pixel(obj,lat)
            obj.parentGPSY  % This needs to be rounded up
            obj.latitudeIncrementPerPixel 
            y = abs((obj.parentGPSY)-(lat))/ obj.latitudeIncrementPerPixel;
        end

        function [x] = gpX2Pixel(obj,long)
            obj.parentGPSX 
            obj.longitudeIncrementPerPixel 
            x = abs((obj.parentGPSX)-(long))/obj.longitudeIncrementPerPixel;
        end
    end
end



% %%%%%%%%%%%%%%%%%%%
% kemperLongitudeLocation = -121.754806;
% kemperLatitudeLocation = 38.537083;
% %%%%%%%%%%%%%%%%%%%%
% meyerLongitudeLocation = -121.754806;
% meyerLatitudeLocation = 38.534611;
% %%%%%%%%%%%%%%%%%
% arboretumLongitudeLocation = -121.754838;
% arboretumLatitudeLocation = 38.532998;
% %%%%%%%%%%%%%%%%%%%%%%
% lot53LongitudeLocation = -121.765616;
% lot53LatitudeLocation = 38.534355;
% %%%%%%%%%%%%%%%%%%%%%%%
% dairyLongitudeLocation = -121.759028;
% dairyLatitudeLocation = 38.534390;
% %%%%%%%%%%%%%%%%%%%%%%%
% roundAboutLongitudeLocation = -121.760743;
% roundAboutLatitudeLocation = 38.546080;
% %%%%%%%%%%%%%%%%
% environmentalLongitudeLocation = -121.749833;
% environmentalLatitudeLocation = 38.537167;
% %%%%%%%%%%%%%%%%
% primeroLongitudeLocation = -121.755667;
% primeroLatitudeLocation = 38.546056;
% 
% 
% 
% % Kemper Computation
% kemperPixelLocationX = abs((parentGPSX)-(kemperLongitudeLocation))/longitudeIncrementPerPixel
% kemperPixelLocationY = abs((parentGPSY)-(kemperLatitudeLocation))/ latitudeIncrementPerPixel
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % Meyer Computation
% meyerPixelLocationX = abs((parentGPSX)-(meyerLongitudeLocation))/longitudeIncrementPerPixel
% xPixelList = [xPixelList, meyerPixelLocationX];
% meyerPixelLocationY = abs((parentGPSY)-(meyerLatitudeLocation))/ latitudeIncrementPerPixel
% yPixelList = [yPixelList, meyerPixelLocationY];
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % Arboretum Computation
% arboretumPixelLocationX = abs((parentGPSX)-(arboretumLongitudeLocation))/longitudeIncrementPerPixel
% xPixelList = [xPixelList, arboretumPixelLocationX];
% arboretumPixelLocationY = abs((parentGPSY)-(arboretumLatitudeLocation))/ latitudeIncrementPerPixel
% yPixelList = [yPixelList, arboretumPixelLocationY];
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % Lot53 Computation
% lot53PixelLocationX = abs((parentGPSX)-(lot53LongitudeLocation))/longitudeIncrementPerPixel
% xPixelList = [xPixelList, lot53PixelLocationX];
% lot53PixelLocationY = abs((parentGPSY)-(lot53LatitudeLocation))/ latitudeIncrementPerPixel
% yPixelList = [yPixelList, lot53PixelLocationY];
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % dairy Computation
% dairyPixelLocationX = abs((parentGPSX)-(dairyLongitudeLocation))/longitudeIncrementPerPixel
% 
% dairyPixelLocationY = abs((parentGPSY)-(dairyLatitudeLocation))/ latitudeIncrementPerPixel
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % roundAbout Computation
% roundAboutPixelLocationX = abs((parentGPSX)-(roundAboutLongitudeLocation))/longitudeIncrementPerPixel
% roundAboutPixelLocationY = abs((parentGPSY)-(roundAboutLatitudeLocation))/ latitudeIncrementPerPixel
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % environmental Computation
% environmentalPixelLocationX = abs((parentGPSX)-(environmentalLongitudeLocation))/longitudeIncrementPerPixel
% environmentalPixelLocationY = abs((parentGPSY)-(environmentalLatitudeLocation))/ latitudeIncrementPerPixel
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % primero Computation
% primeroPixelLocationX = abs((parentGPSX)-(primeroLongitudeLocation))/longitudeIncrementPerPixel
% primeroPixelLocationY = abs((parentGPSY)-(primeroLatitudeLocation))/ latitudeIncrementPerPixel
