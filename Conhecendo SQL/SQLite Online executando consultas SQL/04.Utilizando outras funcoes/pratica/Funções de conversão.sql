-- Exercicio 13: A empresa deseja ver a informação do faturamento bruto médio, como uma linha
-- de texto, uma oração. Mas dessa vez, precisam vir os dados númericos. Então ela quer o texto
-- mais os dados númericos juntos.

-- 1º Demanda: Usando a função CAST para converter dados de um tipo para outro tipo.
SELECT('O faturamento bruto médio foi ' || CAST(ROUND (AVG(faturamento_bruto),2) AS TEXT))
FROM faturamento;