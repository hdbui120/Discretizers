classdef mapping < handle

    properties (Access = private)
        parentGPSY = 38.546339; 
        parentGPSX = -121.768097;
        latitudeIncrementPerPixel = 0.0000133;
        longitudeIncrementPerPixel = 0.0000167;   
    end
    
    properties
        y = 0;
        x = 0;
    end
    
    methods

        function gpy2Pixel(obj,lat)            
            obj.y = abs((obj.parentGPSY)-(lat))/ obj.latitudeIncrementPerPixel;
            obj.y = round(obj.y);
        end
        
        function gpx2Pixel(obj,long)
            obj.x = abs((obj.parentGPSX)-(long))/obj.longitudeIncrementPerPixel;
            obj.x = round(obj.x); 
        end
        
    end
end