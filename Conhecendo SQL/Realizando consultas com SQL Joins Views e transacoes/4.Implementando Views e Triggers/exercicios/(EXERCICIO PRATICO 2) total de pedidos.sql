-- Mão na massa: total de pedidos (EXERCICIO PRATICO 2)

-- Utilizando as tabelas de clientes, pedidos e itensPedidos do Serenatto, crie 
-- consulta que busque o total dos pedidos feitos por cada cliente. 

-- A tabela "Clientes" contém informações sobre os clientes, enquanto a tabela "Pedidos" 
-- registra informações sobre os pedidos feitos por esses clientes. Em ItensPedidos, 
-- você encontra as informações de quantidade vendida de cada produto e o preço unitário.

-- Seu desafio é criar uma consulta SQL que retorne o nome de cada cliente e o 
-- valor total dos pedidos que cada um deles comprou.

SELECT * FROM Pedidos;
SELECT * FROM ItensPedidos;
SELECT * FROM Clientes;

SELECT c.id, c.nome, SUM(ip.quantidade * ip.precounitario) AS valor_total_pedidos
FROM Clientes AS c

JOIN Pedidos AS p 
ON c.id = p.IDCliente

JOIN ItensPedidos AS ip 
ON p.id = ip.IDPedido

GROUP BY 
    c.id, c.nome
ORDER BY 
    valor_total_pedidos DESC; -- opcional, ordena por valor total dos pedidos em ordem decrescente

