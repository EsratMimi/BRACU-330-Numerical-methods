clc;
close all;
max_iteration=100;
tolerance=.00001;
x=0;
p(1)=0;
for k=1:max_iteration
    p(k+1)=(p(k))^2-sin(p(k)+0.15);
    error=abs((p(k+1)-p(k))/p(k+1));
    if(error<tolerance)
        sol=p(k+1);
        break;
    end
end
sol=p(k+1)