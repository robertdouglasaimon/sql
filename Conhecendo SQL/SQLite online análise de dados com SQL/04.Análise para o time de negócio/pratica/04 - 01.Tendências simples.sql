-- 04 - 01.Tendências simples --

-- Demanda 3: Melhorar a visualização pois, a chefia não soube lidar de maneira fácil com
-- os dados que foram extraidos e pediram uma solução visual para a planilha abaixo:

SELECT strftime('%Y/%m', v.data_venda) AS "Ano/Mes", COUNT(iv.produto_id) AS Qtd_Vendas
FROM itens_venda iv
JOIN vendas v ON v.id_venda = iv.venda_id
JOIN produtos p ON p.id_produto = iv.produto_id
JOIN fornecedores f ON f.id_fornecedor = p.fornecedor_id
WHERE f.nome = 'NebulaNetworks'
GROUP BY f.nome, "Ano/Mes"
ORDER BY "Ano/Mes", Qtd_Vendas ;



-- RESOLUÇÃO:
-- Geramos um gráfico no Google Sheets para facilitar a visualização dos dados.
-- Link para a planilha da resolução: https://docs.google.com/spreadsheets/d/1pwvBjukCNFFUTPRiQSTr3E4zF5xGk16b4ArtvmoFoFQ/edit?usp=sharing
