disp("Made by MUHAMMAD HAMZA 21I-0869 USMAN ISHRAT 21I-2981  MUHAMMAD UZAIR 21I-0625") %This will display the student id's
start=input('Press any key to continue :','s'); %The  user will input any key to further run the program
disp("Do you want to run the program or terminate the program") %this will ask user if he wants to run or terminte the prog
disp("1:Run the silo optimization Program")
disp("2:Terminate the program")
program_decision=input('Enter your choice :');  %this is the input variable that will take the users decision
if(program_decision == 1);           %if decison is true then program will run
fprintf("For  silo PROGRAM \n There are 3 OPTIONS given:\n Optimal cost for 1:V1=2000m^3 \n 2:Optimal Cost for V2=4000m^3\n3.Silo Cost Calculator  ") %this will tell about the 2 silo volumes and ask user whether he chooses the volume 1 or 2
volume_decision=input('\nPlease enter your choice (1 or 2 or 3):');  %this will take the volume ddecision
if (volume_decision==1);      %this condition is true then silo program will run with 2000 units
fprintf("\nFOR VOLUME =2000M^3\n")  %this will display the cost function
disp("COST FUNCTION IS: (2*pi*r*(2000-0.66*pi*r^3)/(pi*r^2))+(7*pi*r^2)")
syms r;
syms cost;
cost=(4000/r)+(17.83*r^2);
diff(cost,r);
vpa(solve(diff(cost),r))
fprintf("THERE ARE 3 ANSWERS OF RADIUS BUT WE WILL TAKE ONLY THE FIRST VALUE as Imaginary numbers cannot be the solution \n OPTIMAL Radius=4.822\nOPTIMAL ")
Height=(2000-(0.666*pi*4.822^3))/(3.14159*4.822^2)
fprintf("\nThe optimal cost for volume 2000 will be:")
optimal_cost=(4000/4.822)+(17.83*4.822^2)

r=4.822;
h=24.16;
%above are optimal radius and height
[X,Y,Z] = cylinder(r);
Z = Z*h;
surf(X,Y,Z)
hold on
%this is the 3d plot of hemisphere
[x,y,z] = sphere;      
x = x(11:21,:);       %# we just removed the end point to plot half
y = y(11:21,:);       %# of sphere
z = z(11:21,:);      
surf(r.*x,r.*y,r.*z+h);  %here we added height to z so that the hemisphere appers on top  
axis equal;%  x, y, and z axes equal

% PLOTTING base of silo
angle = 0:0.04:2*pi; % CALCULATING ANGLE OF CIRCLE for plot
x = r*cos(angle); % X 
y = r*sin(angle); % Y 
y(end) = 0;
z2 = h;  %this is defining height
z1 = 0;  % definig Z COORDINATE
patch(x,y,z1*ones(size(x)),'b'); % 
set(gca,'NextPlot','Add');
surf([x;x],[y;y],[z1*ones(size(x));z2*ones(size(x))],'parent',gca) % PLOTTING CIRCLE
hold off






elseif volume_decision==2
fprintf("\nFOR VOLUME =4000M^3\n")  %this will display the cost function
syms r2 ;                       %this syms is used to define radius as a symbol

syms cost2;
cost2=(8000/r2)+(17.83*r2^2);
diff(cost2);
vpa(solve(diff(cost2),r2))
fprintf("THERE ARE 3 ANSWERS OF RADIUS BUT WE WILL TAKE ONLY THE FIRST VALUE as Imaginary numbers cannot be the solution \n OPTIMAL Radius=6.076\nOPTIMAL ")
Height=(4000-(0.666*pi*6.076^3))/(3.14159*6.076^2)
fprintf("\nThe optimal cost for volume 4000 will be:")
optimal_cost=(8000/6.076)+(17.83*6.076^2)


r=6.076;
h=30.435;
%above are optimal radius and height
[X,Y,Z] = cylinder(r);
Z = Z*h;
surf(X,Y,Z)
hold on
%this is the 3d plot of hemisphere
[x,y,z] = sphere;      
x = x(11:21,:);       %# we just removed the end point to plot half
y = y(11:21,:);       %# of sphere
z = z(11:21,:);      
surf(r.*x,r.*y,r.*z+h);  %here we added height to z so that the hemisphere appers on top  
axis equal;%  x, y, and z axes equal

% PLOTTING base of silo
angle = 0:0.04:2*pi; % CALCULATING ANGLE OF CIRCLE for plot
x = r*cos(angle); % X COORDINATE
y = r*sin(angle); % Y COORDINATE
y(end) = 0;
z2 = h;  %this is defining height
z1 = 0;  % definig Z COORDINATE
patch(x,y,z1*ones(size(x)),'b'); % 
set(gca,'NextPlot','Add');
surf([x;x],[y;y],[z1*ones(size(x));z2*ones(size(x))],'parent',gca) % PLOTTING CIRCLE
hold off













elseif(volume_decision==3)
    syms height ;                       %this syms is used to define height as a symbol
syms radius ;                       %this syms is used to define radius as a symbol
syms cost_user;
syms quantity;
radius=input('\nPlease Enter the radius :')                     %this is the input variable that will take the users decision    
height=input('Please Enter the height :')                       %this is the input variable that will take the users decision
quantity=input('Enter the number of silos for construction:')
syms cost;
disp("The cost of the silo would be:")
cost=((2*pi*radius*height) +(7*pi*radius^2))*quantity

%above are optimal radius and height
[X,Y,Z] = cylinder(radius);
Z = Z*height;
surf(X,Y,Z)
hold on
%this is the 3d plot of hemisphere
[x,y,z] = sphere;      
x = x(11:21,:);       %# we just removed the end point to plot half
y = y(11:21,:);       %# of sphere
z = z(11:21,:);      
surf(radius.*x,radius.*y,radius.*z+height);  %here we added height to z so that the hemisphere appers on top  
axis equal;%  x, y, and z axes equal

% PLOTTING base of silo
angle = 0:0.04:2*pi; % CALCULATING ANGLE OF CIRCLE for plot
x = radius*cos(angle); % X 
y = radius*sin(angle); % Y 
y(end) = 0;
z2 = height;  %this is defining height
z1 = 0;  % definig Z COORDINATE
patch(x,y,z1*ones(size(x)),'b'); % 
set(gca,'NextPlot','Add');
surf([x;x],[y;y],[z1*ones(size(x));z2*ones(size(x))],'parent',gca) % PLOTTING CIRCLE
hold off








else
    disp("Wrong choice")
end



elseif (program_decision==2);
disp("!!program terminated!!")
else
end



