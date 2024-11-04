-- AULA 3 LEFT JOIN --

-- Demanda 7: Inserir os novos clientes
-- e identificar quais clientes não tem vendas em um determinado mês, pois dessa forma os gestores conseguem
-- identificar quais clientes são mais frequentes, quais não tem tanta frequencia, oferecer promoções, etc:

-- Inserindo novos clientes:
SELECT * FROM clientes;

INSERT INTO clientes (
  id,
  nome, 
  telefone, 
  email, 
  endereco
)
VALUES 
(28, 'João Santos', '215555678', 'joao.santos@email.com', 'Avenida Principal, 456, Cidade B'),
(29, 'Carla Ferreira', '315557890', 'carla.ferreira@email.com', 'Travessa das Ruas, 789, Cidade C');

  -- Identificando quais clientes não tem vendas/possuem pedidos em um determinado mês usando a cláusula LEFT JOIN:
  SELECT * FROM clientes;
  SELECT * FROM pedidos;
  
  SELECT c.nome, x.ID
  FROM clientes c
  LEFT JOIN
    (SELECT p.id, p.IDCliente 
  	 FROM pedidos p 
 	 WHERE strftime('%m', p.DataHoraPedido) = '10') AS x
 ON c.id = x.IDCliente
 WHERE x.idcliente IS NULL;
  
