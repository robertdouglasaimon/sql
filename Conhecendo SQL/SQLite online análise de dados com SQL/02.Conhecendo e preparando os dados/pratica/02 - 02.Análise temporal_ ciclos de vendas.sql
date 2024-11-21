-- 02.Entendendo os dados (Continuando a aula anterior.. --

-- Função DISTINCT: Pega todos os valores que ela encontrar de ano e vai trazer
-- só os valores ÚNICOS. Então, só vai aparecer UMA VEZ cada um desses registros.
SELECT DISTINCT(strftime('%Y', data_venda)) as Ano 
FROM vendas 
ORDER BY Ano;

-- Logo concluimos que aquelas 50.000 vendas acontecem nesse periodo de 4 anos.

-- Porém, como ocorrem essas vendas ao longo dos anos? Quantas vendas fizemos por ano? 
-- Será que as vendas estão crescendo?
-- Seria interessante quebrar a informação da quantidade de vendas por ano. Será que conseguimos 
-- criar uma nova consulta que responda essa pergunta? E a resposta é sim, dessa forma:
SELECT strftime('%Y', data_venda) as Ano, COUNT(id_venda) as Total_Vendas
FROM vendas
GROUP BY Ano
ORDER BY Ano;

-- Já que o ano de 2023 está incompleto, será que conseguimos visualizar os meses?
-- Vejamos abaixo:
SELECT strftime('%Y', data_venda) as Ano, strftime('%m', data_venda) AS Mes, COUNT(id_venda) as Total_Vendas
FROM vendas
GROUP BY Ano, Mes
ORDER BY Ano;
