%Householder Method to tri-diagonal
clc
clear all

A=[1 3 4;3 1 2;4 2 1]

I=[1 0 0;0 1 0;0 0 1];
q=sqrt(A(1,2)^2+A(1,3)^2)
s2=sqrt((1+(A(1,2)/q))/2)
s3=((A(1,3)/(s2*q))/2)
V=[0;s2;s3]
s=I-2*(V*transpose(V))
B=inv(s)*A*s