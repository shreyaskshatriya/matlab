Bta=1;
m=100;
n=100;
itr=0;
T=zeros([m,n]);
To=zeros([m,n]);
err=zeros([m,n]);

T(1:n,1)=30;
T(1:n,m)=30;
T(1,1:m)=30;
T(n,1:m)=500;
err=abs(To-T);
while max(err,[],'all')>0.00001
    To=T;
        for i=2:n-1
            for j=2:m-1
                T(i,j)=((T(i+1,j)+T(i-1,j))+Bta*(T(i,j+1)+T(i,j-1)))/(2*(1+Bta));
            end
        end
    err=abs(To-T);
    itr=itr+1;
end
disp(itr);
imagesc(T);
