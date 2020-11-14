function [d]= forward_difference(f,x,tol,max)
h=1;
D(1) = (f(x+h)-f(x))/(h);
E(1) = 0;
for n = 1:2
    h=h/10;
    D(n+1)=(f(x+h)-f(x))/(h);
    E(n+1)=abs(D(n+1)-D(n));
end

while((E(n)>E(n+1)) && E(n)>tol && n<max)
    h=h/10;
    D(n+2)=(f(x+h)-f(x))/(h);
    E(n+2)=abs(D(n+2)-D(n+1));
    n=n+1;
end
d=D(n+1);
%f=@(x) exp(x);
%[d] = forward_difference(f,1,.0001,12)