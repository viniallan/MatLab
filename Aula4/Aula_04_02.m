clc;clear;close all force;
A=[3+2i 4;-i 1]
B=[2+i;3]
Z1=A\B
Z2=Z1'

% for i=1:size(A,1)
[m,n]=size(A);
At=zeros(n,m);
for i=1:m
    for j=1:n
        At(i,j)=A(j,i);
    end
end

At
A' 	%Conjugado transposto
A.'  %transposto da matriz