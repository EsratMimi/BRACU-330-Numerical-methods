clc;
clear all;

y=@(x)(x.^3)/exp(x)-1;

x_low=-1;
x_up=2;

i=quad(y,x_low,x_up)

%incomplete
