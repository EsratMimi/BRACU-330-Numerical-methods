function [root, ea, iter]=newtraph(f,df,xr,es,maxit)

iter=0;

while(1)
    xrold=xr;
    %part01
    if df(xr) == 0;
        disp('ERROR: deriv(x) = 0; can''t divide by zero');
        break;
    end
    %part01
    %part02
    xr=xr-f(xr)/df(xr);
    %part02
    iter=iter+1;
    %part03
    if xr~=0
        ea=abs((xr-xrold)/xr)*100;
    end
    %part03
    %part04
    if ea<=es || iter>=maxit
        break;
    end
    %part04
end    %while

root=xr;

%[root,error,iter]=newtraph (@(x)x^2-9, @(x)2*x, 5, .0001, 50)