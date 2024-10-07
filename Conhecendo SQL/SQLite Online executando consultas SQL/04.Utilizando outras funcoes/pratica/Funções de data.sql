-- Exercicio 11: Consultar a data de inicio de licenca dos colaboradores com o formato diferente do que ta 
-- na tabela.

-- 1º Demanda: Trazer só o ano e o mês que cada pessoa colaboradora iniciou/tirou alguma licenca.
-- Utilizando a ferramenta STRFTIME para realizar essa demanada:
SELECT id_colaborador, STRFTIME('%Y/%m', datainicio) FROM Licencas;

--2º Demanda: A empresa deseja saber, qual pessoa colaboradora ficou cadastrada na base de dados.
-- Para resolver essa demanda, usaremos a ferramenta JULIANDAY para calcular o intervalo entre 
-- duas colunas (DataContratacao e DataTermino) de uma tabela para saber qual foi esse intervalo 
-- e entrega-lo em dias aos responsáveis dá empresa que o solicitaram.
SELECT id_colaborador, JULIANDAY (datatermino) - JULIANDAY (datacontratacao)
FROM HistoricoEmprego
WHERE datatermino IS NOT NULL; -- Retirando os registros onde a data termino é NULL (Empregado), pois o objetivo aqui é 
							   -- somente aqueles que tiraram a licença/foram afastados por algum motivo e não os ativos.