-- AULA 3 INNER JOIN --

-- Demanda 5: Fazer junção de colunas de tabelas distintas usando a cláusula INNER JOIN.
-- Nesse exemplo iremos fundir as tabelas abaixo:
SELECT * FROM clientes;
SELECT * FROM pedidos;

-- Comando para "Fusionar" as tabelas:
SELECT c.nome, p.id, p.datahorapedido FROM 
clientes c
INNER JOIN pedidos p
ON c.id = p.IDCliente