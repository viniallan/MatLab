function [t,y] = RA225295_L09_02(A0,T,n)
    an_1 = @(n) (4*A0)./((2*n-1)*pi);
%     an_2 = @(n) (-4*A0)./((2*n-1)*pi);
    wn = @(n) (2*n-1)*(pi*2)/T;

    fx_1=@(t,n) sum(an_1(1:n).*sin(wn(1:n).*t));
%     fx_2=@(t,n) sum(an_2(1:n).*sin(wn(1:n).*t));
    n=linspace(1,n);
    t=0:0.1:4*T;
    tam=length(t);
    for j=1:length(n)
      y=zeros(size(t));
      for i=1:tam
         y(i)=fx_1(t(i),n(j));
      end
    end 
end