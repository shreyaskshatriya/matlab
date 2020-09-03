A=opt1;
A(A>60) = [60];
A(A<0) = [60];
a=medfilt1(A);
b=medfilt1(a);
c=medfilt1(b);
d=medfilt1(c);
e=medfilt1(d);
B = smoothdata(e,2,'movmean',5);
C = smoothdata(B,'gaussian');
surf(C)