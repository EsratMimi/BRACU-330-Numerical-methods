clc;
x=1:.2:2.2;
y=[2.7183 3.3201 4.0552 4.953 6.0496 7.3891 9.025];

d1=diff(y)./diff(x);
n1=length(x);
xm=(x(1:n1-1)+x(2:n1))./2;
yd=interp1(xm,d1,1.2);

d2=diff(d1)./diff(xm);
n2=length(xm);
xm2=(xm(1:n2-1)+xm(2:n2))./2;
yd2=interp1(xm2,d2,1.2)