-- AULA 9 Atualizando dados --
 -- Demanda 11: Atualizar os dados.
 
  SELECT * FROM produtos;
  
-- Obs: Importante o SQLITE NÃO VÁLIDA às chaves estrangeiras. Isso é algo o próprio 
-- SQLITE Online, do seu parâmetro infelizmente. Então precisamos indicar para ele que
-- essas chaves precisam ser válidadas.
 
 -- Validando as chaves usando PRAGMA (Atenção, PRAGMA é uma clausula propria do SQLITE
 -- Online, essa cláusula não existe em outros DBA's por ai):
 PRAGMA FOREIGN_KEYS = ON
 
 -- Com as chaves válidadas, agora sim vamos à atualização dos dados:
SELECT * FROM produtos;
 
SELECT * FROM produtos WHERE id = 31;

UPDATE produtos SET preco = 13.0 WHERE id = 31;

SELECT * FROM produtos WHERE nome LIKE 'croissant%';

UPDATE produtos SET descricao = 'Croissant reacheado com amêndoas.' WHERE id = 28;

