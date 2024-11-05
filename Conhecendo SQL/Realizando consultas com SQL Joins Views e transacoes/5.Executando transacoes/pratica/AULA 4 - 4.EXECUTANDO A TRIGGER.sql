-- AULA 8 Criando Trigger --
 -- Continuando a aula passada de Trigger..
 
 -- Como ter certeza que a Trigger foi criada? Basta abrir a área na qual a Trigger foi associada
 -- e ela aparecerá em uma aba separada com o titulo "Trigger" e abaixo, conterá todas as triggers
 -- criadas para aquela tabela especifica. No nosso exemplo aqui, a trigger foi criada para a tabela
 -- "itensitenspedidos", confira do lado ESQUERDO onde fica as tabelas (Isso no SQLITE).
 
 -- Verificando a tabela faturamfaturamentodiario para ter certeza que os valores foram repassados
 -- pela Trigger:
 
INSERT INTO Pedidos (
  ID, 
  IDCliente, 
  DataHoraPedido, 
  Status
)
VALUES 
(451, 27, '2023-10-07 14:30:00', 'Em Andamento');

INSERT INTO ItensPedidos(
  IDPedido, 
  IDProduto, 
  Quantidade, 
  PrecoUnitario
)
VALUES 
  (451, 14, 1, 6.0),
  (451, 13, 1, 7.0);

INSERT INTO Pedidos (
  ID, 
  IDCliente, 
  DataHoraPedido, 
  Status
) 
VALUES 
(452, 28, '2023-10-07 14:35:00', 'Em Andamento');

INSERT INTO ItensPedidos (
  IDPedido, 
  IDProduto, 
  Quantidade, 
  PrecoUnitario) 
VALUES 
(452, 10, 1, 5.0),
(452, 31, 1, 12.50);

SELECT * FROM faturamentodiario;
SELECT * FROM pedidos;
SELECT * FROM itenspedidos;