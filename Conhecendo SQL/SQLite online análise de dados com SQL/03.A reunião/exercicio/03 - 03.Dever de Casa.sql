-- 03.Dever de Casa --

-- Demanda 2: Eles querem a informação desse fornecedor ao longo de todo o tempo que temos registrado, 
-- para poderem argumentar junto ao fornecedor sobre sua performance e negociar preços melhores. 
-- Então, queremos fornecer esse recurso de dados para os argumentos do time de negócios.

SELECT strftime('%Y/%m', v.data_venda) AS "Ano/Mes", COUNT(iv.produto_id) AS Qtd_Vendas
FROM itens_venda iv
JOIN vendas v ON v.id_venda = iv.venda_id
JOIN produtos p ON p.id_produto = iv.produto_id
JOIN fornecedores f ON f.id_fornecedor = p.fornecedor_id
WHERE f.nome = 'NebulaNetworks'
GROUP BY f.nome, "Ano/Mes"
ORDER BY "Ano/Mes", Qtd_Vendas ;