-- AULA 2 Subconsultas com HAVING --

-- Demanda 4: A empresa deseja quais são os produtos que possuem seu preço maior do que 
-- a média de preços de todos os produtos. 
SELECT nome, preco FROM produtos;

-- Tirando a média dos produtos:
SELECT AVG(preco) FROM produtos;



-- Explicando a cláusula HAVING e a resolução dessa demanda:
-- HAVING: Trabalha com valores que já foram agrupados. Nessa caso, having usará  GROUP BY que está agrupando todos os valores
-- e "AVG(preco)" que é a média agrupada para gerar o resultado esperado que são os produtos com preço maior do que 
-- a média de preços de todos os produtos. 

-- Eis a resolução:
SELECT nome, preco FROM produtos
GROUP BY nome, preco
HAVING preco > (
  SELECT AVG(preco) 
  FROM produtos
);
