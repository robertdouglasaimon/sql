-- 03.Separando dados da Black Friday --

-- Demanda 2: Filtrando os meses que mais vendem:
-- A equipe de negócios informou que os meses de interesse não são apenas o da Black Friday. 
-- O time quer uma análise mais completa, incluindo os meses que acreditam ser os que mais vendem.
-- Esses meses seriam: janeiro, novembro da Black Friday e dezembro, o período do Natal.

SELECT strftime('%Y', data_venda) as Ano, strftime('%m', data_venda) AS Mes, COUNT(id_venda) as Total_Vendas
FROM vendas
WHERE Mes = '01' OR Mes = '11' OR Mes = '12'
GROUP BY Ano, Mes
ORDER BY Ano;

-- Temos as informações de ano, mês e total de venda. No ano de 2020, tivemos mais de 1000 vendas no primeiro mês. 
-- Também em 2020, tivemos mais de 1600 vendas no décimo primeiro mês. Por fim, mais de 1100 vendas no décimo segundo 
-- mês de 2020. Isso se repete para os outros anos.

-- Fazendo uma análise rápida, descobrimos que em novembro de 2020, tivemos 1.600 vendas. Em 2021, tivemos 2.400 vendas 
-- nesse mesmo mês. E em 2022, tivemos 3.200 vendas também no décimo primeiro mês.

-- Isso significa que as vendas na Black Friday estão aumentando ao longo do tempo. É uma análise que já conseguimos fazer
-- utilizando apenas a tabela. Quanto mais conseguimos reduzir a informação, mais fácil será fazer a análise via tabela.

-- Por exemplo, na consulta que fizemos antes do WHERE, tínhamos 12 meses para cada um dos anos, com exceção do último. Não 
-- conseguiríamos fazer a análise nessa tabela.
-- Foi preciso reduzir a informação para os 3 meses de interesse. Assim, conseguimos tirar alguns insights, transformando aquele 
-- dado em informação.

-- Atenção: Em um relatório, evite trazer muita informação em uma tabela.
-- Se for preciso trazer muitos dados, o ideal é encontrar outra maneira de 
-- apresentá-los (Pesquisar um gráfico seria a melhor opção).
