clc
clear all
a=input("enter a value");
for x=0:10
    y(x)=a*log((a+sqrt(a^2-x^2)/x))+sqrt(a^2-x^2);
end
