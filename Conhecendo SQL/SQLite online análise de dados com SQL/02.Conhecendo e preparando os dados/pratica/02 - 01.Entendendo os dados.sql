-- 02.Entendendo os dados --

-- Demanda 1: 
--   * Existem tabelas que não conseguimos explorar devido a alta quantidade de linhas (tabela "vendas" por exemplo),
-- 	   precisamos arrumar uma forma de contornar isso:

-- Solução: Função LIMIT: Permite que você pegue uma certa quantidade de registros da tabela, nesse caso aqui
-- pegaremos só 5.
SELECT * FROM vendas LIMIT 5;

--	 * Temos 50000 vendas, mas em que periodo? Será que são os periodos que a empresa tem interesse 
-- (Que é a BlackFriday)? 
--   Solução: Precisamos encontrar a informação de tempo, periodo de data na nossa tabela.
--   ps: A resposta está na próxima aula -->