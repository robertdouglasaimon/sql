-- 04 - 02.Comparando fornecedor --
-- Demanda 4: Conseguimos atender à demanda do time de negócios e construir um gráfico que facilitará o estudo desse fornecedor e 
-- a argumentação baseada no número de vendas. No entanto, percebemos que seria mais interessante não ter apenas um fornecedor em análise.
-- Estamos trabalhando com um fornecedor que teve a venda de produtos pior na última Black Friday. Seria interessante ter um comparativo.

-- * Dica de boa prática: Trazer dados comparativos.
-- Trazendo a query modificada com as 3 empresas e os 3 anos respectivos das mesmas para o gráfico comparativo:
SELECT strftime('%Y/%m', v.data_venda) AS "Ano/Mes", f.nome AS Nome_Fornecedor, COUNT(iv.produto_id) AS Qtd_Vendas
FROM itens_venda iv
JOIN vendas v ON v.id_venda = iv.venda_id
JOIN produtos p ON p.id_produto = iv.produto_id
JOIN fornecedores f ON f.id_fornecedor = p.fornecedor_id
WHERE Nome_Fornecedor = 'AstroSupply' OR Nome_Fornecedor ='HorizonDistributors' OR Nome_Fornecedor ='NebulaNetworks'
GROUP BY Nome_Fornecedor, "Ano/Mes"
ORDER BY "Ano/Mes", Qtd_Vendas 
;

-- Modificamos um pouco a query pois, para gerar o gráfico corretamente, precisamos do ANO, MES e a Qtd de vendas  de cada um para gerar
-- o gráfico comparativo corretamente. Logo, vamos a query corretamente modificada:
select "Ano/Mes",
SUM(CASE WHEN Nome_Fornecedor == 'NebulaNetworks' THEN Qtd_Vendas ELSE 0 END) AS Qtd_Vendas_NebulaNetworks,
SUM(CASE WHEN Nome_Fornecedor == 'HorizonDistributors' THEN Qtd_Vendas ELSE 0 END) AS Qtd_Vendas_HorizonDistributors,
SUM(CASE WHEN Nome_Fornecedor == 'AstroSupply' THEN Qtd_Vendas ELSE 0 END) AS Qtd_Vendas_AstroSupply
FROM(
  SELECT strftime('%Y/%m', v.data_venda) AS "Ano/Mes", f.nome AS Nome_Fornecedor, COUNT(iv.produto_id) AS Qtd_Vendas
  FROM itens_venda iv
  JOIN vendas v ON v.id_venda = iv.venda_id
  JOIN produtos p ON p.id_produto = iv.produto_id
  JOIN fornecedores f ON f.id_fornecedor = p.fornecedor_id
  WHERE Nome_Fornecedor = 'AstroSupply' OR Nome_Fornecedor ='HorizonDistributors' OR Nome_Fornecedor ='NebulaNetworks'
  GROUP BY Nome_Fornecedor, "Ano/Mes"
  ORDER BY "Ano/Mes", Qtd_Vendas 
)
GROUP BY "Ano/Mes"
;

-- Link do gráfico comparativo pronto no Google Sheets
-- https://docs.google.com/spreadsheets/d/1pwvBjukCNFFUTPRiQSTr3E4zF5xGk16b4ArtvmoFoFQ/edit?usp=sharing
