% Start of function
GPA = 3
function chanceHired = Chance2BHired( GPA )
if (GPA > 4) | (GPA < 0)
    fprintf('GPA value out of bonds\n');

  
elseif (3 <= GPA) && (GPA < 3.5)
    chanceHired = 80;
  
elseif (2.5 <= GPA) && (GPA < 3)
    chanceHired = 70;
  
elseif (2 <= GPA) && (GPA < 2.5)
    chanceHired = 60;
  
elseif (1.5 <= GPA) && (GPA < 2)
    chanceHired = 50;
  
else
    chanceHired = 40;
  
end
