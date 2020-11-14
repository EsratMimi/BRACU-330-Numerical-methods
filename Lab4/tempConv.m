function [a] = tempConv(ti,tf)
row=1;
for i = ti:tf
    a(row,1)=i;
    a(row,2)= ((9/5)*i)+32;
    row= row+1;
end
end