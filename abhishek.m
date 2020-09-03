%rotation in two dimensions in homogenous cordinates
x=input('enter column matrix x = ')
theta=input('theta = ');
theta_rad= theta*pi/180;
y=[cos(theta_rad),-sin(theta_rad),0;sin(theta_rad),cos(theta_rad),0;0,0,1];
b=y*x

%translation in two dimensions in homogenous cordinates
x=input('enter column matrix x = ')
p=input('shift in x direction = ');
q=input('shift in y direction = ');
y=[1,0,p;0,1,q;0,0,1];
b=y*x

%scaling in two dimensions in homogenous cordinates
x=input('enter column matrix x = ')
mu1=input('scaling factor mu1 = ');
mu2=input('scaling factor mu2 = ');
y=[mu1,0,0;0,mu2,0;0,0,1];
b=y*x

%rotation followed by translation 
x=input('enter column matrix x = ')
theta=input('theta = ');
theta_rad= theta*pi/180;
p=input('shift in x direction = ');
q=input('shift in y direction = ');
y=[cos(theta_rad),-sin(theta_rad),0;sin(theta_rad),cos(theta_rad),0;0,0,1];
z=[1,0,p;0,1,q;0,0,1];
b=z*(y*x)


%translation followed by rotation
x=input('enter column matrix x = ')
theta=input('theta = ');
theta_rad= theta*pi/180;
p=input('shift in x direction = ');
q=input('shift in y direction = ');
y=[cos(theta_rad),-sin(theta_rad),0;sin(theta_rad),cos(theta_rad),0;0,0,1];
z=[1,0,p;0,1,q;0,0,1];
b=y*(z*x)
