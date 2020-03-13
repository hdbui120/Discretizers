%interp to increase sample size

xl = [0 1653];
yl = [0 1559]
im = imread('CampusMap.png');
h = image(xl, yl, im); 
ax = gca;
ax.YDir = 'reverse';
uistack(h, 'bottom');
hold on;

c = gradient(y);
scatter(x, y, 8, c, 'filled');

            value = app.Slider.Value;
            if(app.map == 0)
                app.status.Value = "Please choose csv data!";
                imshow('meme.jpeg','parent',app.UIAxes)
           else
                curve = animatedline(app.UIAxes,'o','MarkerFaceColor', 'r');
                app.Slider.Limits = 2:length(app.map.x); 
                 for i = 1:app.Slider.Value
                    if(i <= length(app.map.x))
                        addpoints(curve, app.map.x(i), app.map.y(i)); 
                        drawnow;
                    else
                        app.Slider.Value = 0;
                    end                   
                  end
            end