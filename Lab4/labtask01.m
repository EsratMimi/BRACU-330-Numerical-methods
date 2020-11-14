function [x] = labtask01(r, n) %geosum

sum=0;

for i=0:n
    sum=sum+r^i;
end

x=sum;