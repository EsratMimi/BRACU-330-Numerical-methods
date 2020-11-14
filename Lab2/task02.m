clc;
close all;
in=input('Enter row number: ');
for i=1:1:in
    for j=1:1:in-i
        fprintf(' ');
    end
    for k=0:1:i-1
        fprintf('%d',k);
        fprintf(' ');
        %disp(k);
    end
    fprintf('\n');
end