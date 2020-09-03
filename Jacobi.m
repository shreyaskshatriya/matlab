%Jacobi Method for Eigen Value and Eigen Vector
clc
clear all

%Given matrix
A=[1 1.7320 4;1.7320 5 1.7320;4 1.7320 1];

%Iteration1
%Largest offdiagonal elemant
a13=4;
a11=1;
a33=1;
theta=atan((2*a13)/(a11-a33))/2

s1=[cos(theta) 0 -sin(theta)
    0 1 0
    sin(theta) 0 cos(theta)]
D1=inv(s1)*A*s1

%Iteration2