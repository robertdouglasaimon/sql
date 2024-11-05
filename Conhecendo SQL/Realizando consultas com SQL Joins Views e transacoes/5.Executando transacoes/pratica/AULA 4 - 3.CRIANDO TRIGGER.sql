-- AULA 7 Criando Trigger --

 -- Demanda 10: Calcular o valor do faturamento diário da empresa, valor dos pedidos feitos
 -- por dia:
 
 SELECT * FROM pedidos;
 SELECT * FROM itenspedidos;
 
 SELECT DATE(datahorapedido) AS Dia, SUM(ip.precounitario) AS faturamentodiario
 FROM pedidos AS p
 JOIN itenspedidos AS ip 
 ON p.id = ip.idpedido
 
 GROUP BY Dia
 ORDER BY Dia;
 
 -- INTRODUÇÃO AO TRIGGER ---------------------------------------------------------------------------------------------------
 
 -- Trigger (gatilho): Automatiza as etapas. Procedimento armazenado que é acionado através de uma ação.
 -- Ele é utilizado para automatizar algumas etapas, como inserção de dados, exclusão, atualização.
 -- Nesse caso usaremos ele para calcular um valor e inserir de volta em uma tabela.
 
 -- Utilizando o trigger em uma nova tabela chamada "faturamentodiario": 
 
 CREATE TABLE faturamentodiario (
 	dia DATE,
   	faturamentototal DECIMA(10,2)
 )
 
 -- CRIANDO A TRIGGER:
 CREATE TRIGGER CalculaFaturamentoDiario
 AFTER INSERT ON itenspedidos
 FOR EACH ROW
 
 BEGIN
 DELETE FROM faturamentodiario;
 
 INSERT INTO faturamentodiario (Dia, faturamentototal)
 SELECT DATE(datahorapedido) AS Dia, SUM(ip.precounitario) AS faturamentodiario
 FROM pedidos AS p
 JOIN itenspedidos AS ip 
 ON p.id = ip.idpedido
  GROUP BY Dia
 ORDER BY Dia;
 
 END;
 
 
 SELECT * FROM faturamentodiario;
 