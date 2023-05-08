function [S]=calcula_S(y)
    B=54e-3;
    H=75e-3;
    a=B*(H-y)/H;
    b=(B-a)/2;
    A=(B+a)*y/2;
    Qx=((a*y)*y/2)+(2*b*y/2)*y/3;
    d=Qx/A;
    c=y-d;
    Ix=a*(y^3)/3+(2*b*(y^3)/12);
    Ixm=Ix-A*d^(2);
    S=Ixm/c;
end