%Inverse Power Method for smallest eigen value
clc
clear all
Ao=[2 -1 0;-1 2 -1;0 -1 2];
Itr=7;
Initial=[1;1;1];
A=inv(Ao)
for i=1:Itr
    AX=A*Initial;
    [Lambda, index] = max(abs(AX(:)));
    Lambda = Lambda * sign(AX(index))
    EVector=AX/Lambda
    Initial=EVector;
end
EigenVal=1/Lambda