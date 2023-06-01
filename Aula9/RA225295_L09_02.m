function [t,y] = RA225295_L09_02(A0,T,n)
    % seu código aqui
    an = @(n) (4*A0)./((2*n-1)*pi);
    wn = @(n) (2*n-1)*(pi*2)/T;

    fx=@(t,n) sum(an(1:n).*sin(wn(1:n).*t));
    n=linspace(1,n);
    t=-T/2:0.01:T/2;
    for j=1:length(n)
      y=zeros(size(t));
      for i=1:length(t)
        y(i)=fx(t(i),n(j));
      end
    end
end