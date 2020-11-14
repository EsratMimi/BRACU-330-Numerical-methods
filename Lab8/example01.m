clc;
clear all;

f=@(x)(10*exp(-x)*sin(2*pi*x))^2;
x_low=0;
x_up=0.5;
h=0.125;
x=x_low:h:x_up;

for k=1:length(x)
    y(k)=f(x(k));
end

s=0;
for i=1:length(x)-1
    s=s+(y(i)+y(i+1))*h/2;
end
fprintf('Result from manual calculation = %d\n',s);

r=trapz(x,y);
fprintf('Result from MATLAB built-in function = %d\n',s);
