classdef mapping < handle
    properties
        y = 0;
        x = 0;
        gpx = 0;
        gpy = 0;
        parentGPSY = 38.546339;
        latitudeIncrementPerPixel = 0.0000133;
        parentGPSX = -121.768097;
        longitudeIncrementPerPixel = 0.0000167;
    end
    methods
        function obj = mapping()
            [file,~] = uigetfile('*.csv');
            data = readtable(file);

            if(table2array(data(3,2)) > 0)
                lat = table2array(data(:,2)); long = table2array(data(:,3));
            else
                lat = table2array(data(:,3)); long = table2array(data(:,2));
            end
            
            obj.gpx2Pixel(long);
            obj.gpy2Pixel(lat);
        end
        
        function gpy2Pixel(obj,lat) 
            obj.y = abs((obj.parentGPSY)-(lat))/ obj.latitudeIncrementPerPixel;
        end
        
        function gpx2Pixel(obj,long)

            obj.x = abs((obj.parentGPSX)-(long))/obj.longitudeIncrementPerPixel;
        end
        
        function pixel2gps(obj)
            obj.gpx = -((obj.x*obj.longitudeIncrementPerPixel) - obj.parentGPSX);
            obj.gpy = -((obj.y*obj.latitudeIncrementPerPixel) - obj.parentGPSY);
        end
        
        function plotMap(obj)   
%             xl = [0,1653];
%             yl = [0,1559];
%             im = imread('CampusMap.png');
%             h = image(xl, yl, im);impixelinfo,
%             ax = gca;
%             ax.YDir = 'reverse';
%             uistack(h, 'bottom');

            hold on;
            plot(obj.x,obj.y, 'o', 'MarkerFaceColor', 'r', 'MarkerSize', 6);
            grid on;
        end
    end
end