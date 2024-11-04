-- AULA 2 Executando subconsultas --

-- Demanda 2: Buscar qual foi o primeiro cliente que fez pedidos na Serenatto Café neste ano (Ano de 2023):
SELECT * FROM clientes;
SELECT * FROM pedidos;

-- Vamos usar subconsultas para unir as informações tanto da tabela clientes quanto da tabela pedidos:
SELECT nome, telefone FROM clientes 
WHERE id = (
  SELECT idcliente 
  FROM pedidos 
  WHERE datahorapedido = '2023-01-02 08:15:00'
);


