-- AULA 5 Criando Views --
-- Encontrar formas de otimizar a função da aula anterior: 
SELECT * FROM pedidos;
SELECT * FROM itenspedidos;

SELECT p.id, c.nome, p.DataHoraPedido, SUM(ip.precounitario) AS valor_total_pedido
FROM clientes AS c 
JOIN pedidos as p ON c.id = p.IDCliente
JOIN itenspedidos AS ip ON p.id = ip.idpedido
GROUP BY p.id, c.nome;

-- CRIANDO UMA VIEW PARA EXEMPLIFICAR COMO ELA FUNCIONA --
CREATE VIEW ViewCliente AS 
SELECT nome, endereco FROM clientes;

SELECT * FROM ViewCliente;

-- ---------------------------------------------------- --

-- Resolvendo a demanda que pede formas de otimizar a função da aula anterior: 
CREATE VIEW ViewValorTotalPedido AS
SELECT p.id, c.nome, p.DataHoraPedido, SUM(ip.precounitario) AS valor_total_pedido
FROM clientes AS c 
JOIN pedidos as p ON c.id = p.IDCliente
JOIN itenspedidos AS ip ON p.id = ip.idpedido
GROUP BY p.id, c.nome;

SELECT * FROM ViewValorTotalPedido;