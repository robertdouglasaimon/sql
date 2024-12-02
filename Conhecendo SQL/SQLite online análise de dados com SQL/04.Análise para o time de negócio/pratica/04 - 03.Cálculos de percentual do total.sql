-- 04 - 03.Cálculos de percentual do total --

-- Demanda 5: Queremos saber qual é a porcentagem de representação de cada categoria nas nossas vendas. 
-- Acreditamos que essa é uma informação que pode guiar muito bem as decisões do time de negócio.

-- Adaptando a QUERY para pegar as categorias e obter as porcentagens de cada uma:
SELECT Nome_Categoria, Qtd_Vendas, ROUND(100.0 * Qtd_Vendas/(SELECT COUNT(*) FROM itens_venda),2) || '%' AS Porcentagem
FROM(
    SELECT c.nome_categoria AS Nome_Categoria, COUNT(iv.produto_id) AS Qtd_Vendas
    FROM itens_venda iv
    JOIN vendas AS v ON v.id_venda = iv.venda_id
    JOIN produtos AS p ON p.id_produto = iv.produto_id
    JOIN categorias AS c ON c.id_categoria = p.categoria_id
    GROUP BY Nome_Categoria
    ORDER BY Qtd_Vendas DESC
    );
