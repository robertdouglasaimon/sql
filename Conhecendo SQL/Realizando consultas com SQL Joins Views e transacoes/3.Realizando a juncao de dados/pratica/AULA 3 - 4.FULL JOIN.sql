-- AULA 3 FULL JOIN --
-- Retorna todas as informações, desde que haja uma correspondencia entre as duas tabelas.

-- Demanda 8: Mostrando como a cláusula FULL JOIN funciona:
SELECT c.nome, p.id
FROM clientes AS c
FULL JOIN pedidos AS p
ON c.id = p.idcliente
WHERE p.id IS NULL
