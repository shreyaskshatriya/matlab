%Power Method for largest eigen value
clc
clear all
A=[4 1 0;1 40 -7;0 1 4]
Itr=3;
Initial=[1;1;1]
for i=1:Itr
    AX=A*Initial
    [Lambda, index] = max(abs(AX(:)));
    Lambda = Lambda * sign(AX(index))
    EVector=AX/Lambda
    Initial=EVector;
end