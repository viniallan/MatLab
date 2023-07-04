function [L, B, a, w0, E] = dados_de_entrada(RA, T)
    % Buscar linha correspondente ao RA na tabela
    linha = find(strcmp(T.RA, RA));

    % Extrair os valores dos parâmetros
    L = T.Comprimento(linha);
    B = T.Largura(linha);
    a = T.Altura(linha);
    w0 = T.Carregamento(linha);
    E = T.ModElasticidade(linha);
end
