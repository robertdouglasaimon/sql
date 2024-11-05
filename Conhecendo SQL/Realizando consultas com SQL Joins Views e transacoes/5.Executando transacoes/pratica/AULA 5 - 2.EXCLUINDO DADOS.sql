-- AULA 10 Excluindo dados --
 -- Demanda 12: Excluindo  alguns dados que não fazem mais sentido:
 
-- Utilizando a cláusula DELETE: 
-- Deletando o colaborador Pedro que possui o ID = 3: 
SELECT * FROM colaboradores WHERE id = 3;
DELETE FROM colaboradores WHERE id = 3;


-- Vamos excluir agora o cliente com ID = 27, que só fez uma compra especifica e 
-- não retornou mais, então, vamos deleta-lo:
SELECT * FROM clientes;
SELECT * FROM clientes WHERE id = 27;

-- Como ele já realizou um pedido, precisamos verificar e remove-lo também das outras
-- tabelas pedido e itenspedidos, vamos lá:
SELECT * FROM pedidos WHERE idcliente = 27;
SELECT * FROM itenspedidos WHERE idpedido = 451;

DELETE FROM clientes WHERE id = 27;

-- Obs: Cuidado ao usar o DELETE, pois, se ele tiver chaves estrageiras ligadas ao item delatado
-- e o "ON DELETE CASCADE" estiver ativo, você perderá não só o que está deletado mas TUDO que estará,
-- ligado a ele. Então é inteligente analisar se compensa ou não ativar o ON DELETE CASCADE quando se 
-- está estruturando as tabelas. No nosso exemplo aqui, ao deletar o cliente com id = 27, perdemos todos
-- os dados sobre ele que continham em pedidos, e itenspedidos pois estavam relacionados através da chave
-- estrangeira.


-- Agora vamos atualizar o STATUS dos pedidos:
UPDATE pedidos SET status = 'Concluido'
