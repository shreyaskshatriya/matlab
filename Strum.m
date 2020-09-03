%Strum sequence
clc
clear all

%Question Matrix
A=[2 3 0;1 3 1;0 1 2]
Seq=zeros(6,4+1);

for i=-1:4
    Seq(i+2,1)=i;
    
    p0=1;
    Seq(i+2,2)=p0;
    
    p1=A(1,1)-i;
    Seq(i+2,3)=p1;
    
    p2=((A(2,2)-i)*p1)-((A(1,2)^2)*p0);
    Seq(i+2,4)=p2;
    
    p3=((A(3,3)-i)*p2)-((A(2,3)^2)*p1);
    Seq(i+2,5)=p3;
    
    
end
Seq