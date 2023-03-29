function [saida] = pertence_ao_circulo(xy)
  tam=[0 0];
  tam=size(xy);
  tam=tam(2);
  saida=[];
  for i=1:tam
    x=xy(1,i);
    y=xy(2,i);
    if  (sqrt(x^2+y^2)<=1)
      saida(i)=1;
    else
      saida(i)=0;
    end
    sqrt(x^2+y^2);
  end
end