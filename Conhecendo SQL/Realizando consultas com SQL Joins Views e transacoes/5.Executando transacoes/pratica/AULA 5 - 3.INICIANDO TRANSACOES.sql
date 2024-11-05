-- AULA 11 Iniciando transações --
-- Transações: É como seu abrisse um bloco de código e setasse diversos comandos, como por exemplo, vários DELETES
-- e UPDATES. E ai caso um deles falhe, TODOS OS OUTROS FALHARÃO também. É como se vários comandos fossem apenas um.

 -- Demanda 13: Vamos continuar a atualização pendente da aula passada:
 
 -- Agora vamos atualizar o STATUS dos pedidos:
-- UPDATE pedidos SET status = 'Concluido'

 
 -- Vamos iniciar a transacão:
 BEGIN TRANSACTION; -- INICIA o modo transação e te permite usar o ROLLBACK para retornar 
 					-- os dados para o estado anterior caso tenha feito algo errado, e te 
                    -- permite usar o COMMIT para CONFIRMAR a atualização / delete de determinado
                    -- item.
 
 SELECT *  FROM clientes;
 SELECT *  FROM pedidos; 
 
 UPDATE pedidos SET status = 'Concluido' WHERE = 'Em Andamento';
 
 DELETE FROM clientes; -- Usado para apagar TODOS os clientes de uma vez. Foi usado aqui apenas para mostra como
 					   -- o ROLLBACK abaixo funciona. NUNCA faça isso em produção, você perderá TODOS os seus
                       -- dados!
 
 ROLLBACK; -- VOLTA os dados para o estado anterior. Mas atenção, ele só vai funcionar
 		   -- se o BEGIN TRANSACTION tiver sido ativado corretamente, NUNCA ESQUEÇA de
           -- de ativa-lo! KKKKK'
 
 COMMIT; -- CONFIRMA TODA a atualização dos dados;
 