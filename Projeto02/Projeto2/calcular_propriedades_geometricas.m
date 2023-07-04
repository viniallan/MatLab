function [A, Qz, yc, Izz] = calcular_propriedades_geometricas(a, B)
    % a: altura da seção transversal
    % B: largura da seção transversal

    % a) Área da seção transversal
    A = a * B;

    % b) Primeiro momento de área, Qz (cálculo por integral numérica)
    Qz = (a^2 / 2) * integral(@(z) cos(pi * z / B).^2, -B/2, B/2);

    % c) Localização do centroide, yc
    yc = Qz / A;

    % d) Segundo momento de área, Izz
    Izz = ((128 - 9 * pi^2) / (288 * pi)) * B * a^3;
end
