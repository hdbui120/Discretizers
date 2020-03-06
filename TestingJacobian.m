% Wannabe Jacobians
longitudeIncrementPerPixel = 0.000017; % This needs to be rounded up
latitudeIncrementPerPixel = 0.000013; % This value was truncated



% Kemper Pixel Coordinates
kemperPixelLocationX = 790; % approximate
kemperPixelLocationY = 710; % approximate
% Kemper Long & Lat Coordinates
kemperLongitudeLocation = -121.754806;
kemperLatitudeLocation = 38.537083;

% Dairy Pixel Coordinates
dairyPixelLocationX = 553; % approximate
dairyPixelLocationY = 906; % approximate
% Diary Long & Lat Coordinates
dairyLongitudeLocation = -121.759028;
dairyLatitudeLocation = 38.534390;

% Lot 53 Pixel Location
lot53PixelLocationX = 143; % approximate
lot53PixelLocationY = 918; % approximate
% Lot 53 Long & Lat Coordinates
lot53LongitudeLocation = -121.765616;
lot53LatitudeLocation = 38.534355;

% Meyer Pixel Location
meyerPixelLocationX = 809; % approximate
meyerPixelLocationY = 882; % approximate
% Meyer Long & Lat Coordinates
meyerLongitudeLocation = -121.754806;
meyerLatitudeLocation = 38.534611;

% Arboretum Pixel Location
arboretumPixelLocationX = 809; % approximate
arboretumPixelLocationY = 1000; % approximate
% Meyer Long & Lat Coordinates
arboretumLongitudeLocation = -121.754838;
arboretumLatitudeLocation = 38.532998;




% Kemper Computation
calculatedLongitude = (kemperLongitudeLocation)+(((longitudeIncrementPerPixel * kemperPixelLocationX))/70);
calculatedlatitude = (kemperLatitudeLocation)-(((latitudeIncrementPerPixel * kemperPixelLocationY))/70);
kemperCoordinate = [calculatedlatitude, calculatedLongitude];

% Dairy Computation
dairyCalculatedLongitude = (dairyLongitudeLocation)+(((longitudeIncrementPerPixel * dairyPixelLocationX))/70);
dairyCalculatedlatitude = (dairyLatitudeLocation)-(((latitudeIncrementPerPixel * dairyPixelLocationY))/70);
dairyRoadCoordinate = [dairyCalculatedlatitude, dairyCalculatedLongitude];

% Lot 53 Computation
lot53CalculatedLongitude = (lot53LongitudeLocation)+(((longitudeIncrementPerPixel * lot53PixelLocationX))/70);
lot53Calculatedlatitude = (lot53LatitudeLocation)-(((latitudeIncrementPerPixel * lot53PixelLocationY))/70);
lot53Coordinate = [lot53Calculatedlatitude, lot53CalculatedLongitude];

% Meyer Computation
meyerCalculatedLongitude = (meyerLongitudeLocation)+(((longitudeIncrementPerPixel * meyerPixelLocationX))/70);
meyerCalculatedlatitude = (meyerLatitudeLocation)-(((latitudeIncrementPerPixel * meyerPixelLocationY))/70);
meyerCoordinate = [meyerCalculatedlatitude, meyerCalculatedLongitude];

% Meyer Computation
arboretumCalculatedLongitude = (arboretumLongitudeLocation)+(((longitudeIncrementPerPixel * arboretumPixelLocationX))/70);
arboretumCalculatedlatitude = (arboretumLatitudeLocation)-(((latitudeIncrementPerPixel * arboretumPixelLocationY))/70);
arboretumCoordinate = [arboretumCalculatedlatitude, arboretumCalculatedLongitude];



% Coordinate Outputs
display(kemperCoordinate); % Google Maps Format (lat, long)
display(dairyRoadCoordinate); % Google Maps Format (lat, long)
display(lot53Coordinate); % Google Maps Format (lat, long)
display(meyerCoordinate); % Google Maps Format (lat, long)
display(arboretumCoordinate); % Google Maps Format (lat, long)