clc;
clear all;

y=@(x)sqrt(1+x.^2);
x_low=0;
x_up=3;
i=quad(y,x_low,x_up)