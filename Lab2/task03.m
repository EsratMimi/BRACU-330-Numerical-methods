clc;
close all;
A=[1 2 3;4 5 6;7 8 9];
B=[3 2 1;6 5 4;9 8 7];
[n,p]=size(A);
[p,m]=size(B);
C=zeros(n,m);

for i=1:1:n
  for j=1:1:m
     C(i,j)=0;
     for k=1:p
        C(i,j) = C(i,j)+A(i,k)*B(k,j);
     end 
   end 
end 
disp('The product of A and B is:'),disp(C);
