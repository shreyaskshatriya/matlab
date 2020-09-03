clc
clear all

%Defining the dimensions of the matrix to be transformed
Dim=input("Enter the dimension of the operation:\nEnter 2 for 2 Dimensional\nEnter 3 for 3 Dimensional\n")+1;
j=input("Enter the number of point to transform\n");

%Matrix input from user
fprintf("Enter the matrix to be operated\n")
A=zeros(4,j);
for j=1:j
    for i=1:Dim-1
        fprintf("Enter (%d,%d)\t",i,j)
        A(i,j)=input('');
    end
end

%defining z
if Dim==3
    for j=1:j
        for i=3
        A(i,j)=0;
        end
    end
end

%defining end of the matrix 1
for j=1:j
    for i=4
        A(i,j)=1;
    end
end

%Input from the user for operation to be performed
oper=input('\nEnter the operation in the sequence to be performed with space in between in square brackets:\n1.Translation\n2.Rotation arount x-axis\n3.Rotation around y-axis\n4.Rotation around z-axis(enter this if in 2D around origin)\n5.Scaling\n');
for j=1:size(oper,2)
    if oper(1,j)==1
        tx=input("Enter translation in x-axis  ");
        ty=input("Enter translation in y-axis  ");
        if Dim==3
            tz=0;
        elseif Dim==4
            tz=input("Enter translation in z-axis  ");
        end
        Tx=[1 0 0 tx;0 1 0 ty;0 0 1 tz;0 0 0 1];
    elseif oper(1,j)==2
        thx=input("Enter value of theta about x-axis  ");
        Rx=[1 0 0 0;0 cosd(thx) -sind(thx) 0;0 sind(thx) cosd(thx) 0;0 0 0 1];
    elseif oper(1,j)==3
        thy=input("Enter value of theta about y-axis  ");
        Ry=[cosd(thy) 0 sind(thy) 0;0 1 0 0;-sind(thy) 0 cosd(thy) 0;0 0 0 1];
    elseif oper(1,j)==4
        thz=input("Enter value of theta about z-axis  ");
        Rz=[cosd(thz) -sind(thz) 0 0;sind(thz) cosd(thz) 0 0;0 0 1 0;0 0 0 1];
    elseif oper(1,j)==5
        sx=input("Enter scale value in x-direction  ");
        sy=input("Enter scale value in y-direction  ");
        sz=input("Enter scale value in z-direction  ");
        Sc=[sx 0 0 0;0 sy 0 0;0 0 sz 0;0 0 0 1];
    end
end

Conct=zeros(4,4);
for j2=size(oper,2):-1:1
    if oper(1,j2)==1
        a=Tx;
    elseif oper(1,j2)==2
        a=Rx;
    elseif oper(1,j2)==3
        a=Ry;
    elseif oper(1,j2)==4
        a=Rz;
    elseif oper(1,j2)==5
        a=Sc;
    end
    if j2==size(oper,2)
        Conct=a;
    end
    if j2~=size(oper,2)
        Conct=Conct*a;
    end
end
Final=Conct*A;
disp(Final);
scatter(A(1,:),A(2,:));
hold on;
scatter(Final(1,:),Final(2,:),'filled');