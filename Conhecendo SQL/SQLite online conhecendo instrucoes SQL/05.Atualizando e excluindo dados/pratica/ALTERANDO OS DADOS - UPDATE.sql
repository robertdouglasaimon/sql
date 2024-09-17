-- Clausula de update: Altera os dados do banco de dados.
-- A Cláusula Update está sempre acompanhado de WHERE nunca esquecer!

-- Exercicio: Alterar o status de processando -> enviados (de processando para enviados).
UPDATE tabelapedidos set status = 'Enviado' WHERE status = 'Processando';
SELECT * FROM tabelapedidos
-- OBS: Deixar claro qual o local da mudança, sempre.



-- Modificando mais de uma coluna ao mesmo tempo, mas só de UMA LINHA

-- Exercicio: Empresa pediu para atualizar a informação de um cliente, o cliente de ID numero 2
-- mudou de endereço e de email.
UPDATE tabelaclientes set informacoes_de_contato = 'j.santos@email.com', endereço_cliente = 'Rua dos paralelepipedos, 30'
where id_cliente = 2;
SELECT * from tabelaclientes