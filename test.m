[file,path] = uigetfile('*.csv');
data = readtable(file);

if(table2array(data(3,2)) > 0)
    latitude = table2array(data(:,2)); longitude = table2array(data(:,3));
else
    latitude = table2array(data(:,3)); longitude = table2array(data(:,2));
end

pixelLong = gpX2Pixel(longitude);
pixelLat = gpY2Pixel(latitude);

xl = [0,1653];
yl = [0,1559];
im = imread('CampusMap.png');
h = image(xl, yl, im);impixelinfo,
ax = gca;
ax.YDir = 'reverse';
uistack(h, 'bottom');


x = pixelLong;
y = pixelLat;

hold on;
plot(x,y, 'o', 'MarkerFaceColor', 'r', 'MarkerSize', 6);
grid on;

function [y] = gpY2Pixel(lat) 
    parentGPSY = 38.546339;
    latitudeIncrementPerPixel = 0.0000133;
    y = abs((parentGPSY)-(lat))/ latitudeIncrementPerPixel;
end

function [x] = gpX2Pixel(long)
    parentGPSX = -121.768097;
    longitudeIncrementPerPixel = 0.0000167;
    x = abs((parentGPSX)-(long))/longitudeIncrementPerPixel;
end