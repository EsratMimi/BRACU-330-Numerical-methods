clc;
x=1:.2:2.2;
y=[2.7183 3.3201 4.0552 4.953 6.0496 7.3891 9.025];
d=diff(y)./diff(x);
n=length(x);
xm=(x(1:n-1)+x(2:n))./1.2;
yd=interp1(xm,d,2)