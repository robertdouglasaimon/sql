-- AULA 3 RIGHT JOIN --


-- Demanda 6: Inserindo um novo registro, os gestores vão vender um novo produto. Sabendo que o novo produto inserido tem zero vendas,
-- eles desejam saber se todos os outros produtos da Serenatto já foram pedidos por algum cliente. 

--Objetivo: Identificar quais produtos foram vendidos ou não:

SELECT * FROM produtos;

-- Iserindo o novo produto:
INSERT INTO produtos (
  id, 
  nome,
  descricao, 
  preco, 
  categoria
 )
VALUES 
  (31, 'Lasanha à Bolonhesa', 'Deliciosa lasanha caseira com molho bolonhesa', 12.50, 'Almoço');
  
  -- Identificando quais produtos foram vendidos usando a cláusula RIGHT JOIN:
  SELECT * FROM produtos;
  SELECT * FROM itenspedidos;
  SELECT * FROM pedidos;
  
  SELECT pr.nome, x.idproduto, x.idpedido
  FROM(
  	   SELECT ip.idpedido, ip.idproduto
       FROM pedidos as p
       JOIN itenspedidos as ip
       ON p.id = ip.idpedido
  		WHERE strftime('%m', p.DataHoraPedido) = '10') as x

  RIGHT JOIN produtos pr
  ON pr.id = x.idproduto; 