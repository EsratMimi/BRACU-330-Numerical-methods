function [root, ea, iter]= bisect (func, xi, xf, es, maxit)

if func(xi)*func(xf)>0 %if01
    disp('CHOOSE Different RANGE');
    
else
    xmold=xi;
    
    for iter=1:maxit    %for
        xm=(xi+xf)/2;
        
        if func(xi)*func(xf) < 0 %if02
            xi=xi;
            xf=xm;
        else
            xi=xm;
            xf=xf;
        end   %if02
        
        if xm ~=0   %if03
            ea=abs((xm-xmold)/xm)*100;
        end   %if03
        
        if ea<=es || iter>=maxit   %if04
            break;
        end   %if04
    end  %for
    root=xm;
end   %if01

%[root,error,iter]=bisect (@(x)(x^2-9), -2, 15, .0001, 100)