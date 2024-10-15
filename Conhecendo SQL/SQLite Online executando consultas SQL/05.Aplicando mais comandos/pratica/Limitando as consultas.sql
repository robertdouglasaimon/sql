-- EXERCÍCIO 1 - Trazer as 5 pessoas colaboradoras que têm as melhores remunerações


SELECT * FROM HistoricoEmprego  -- Seleciona todos os registros da tabela 'HistoricoEmprego' onde as pessoas ainda estão empregadas
								-- (ou seja, o campo 'datatermino' é NULL), indicando que o emprego ainda não terminou.

WHERE datatermino ISNULL  -- Filtra apenas os registros onde 'datatermino' é nulo (emprego atual)


ORDER BY salario DESC   -- Ordena os resultados pela coluna 'salario' em ordem decrescente, para que os maiores salários
						-- apareçam no topo da lista


LIMIT 5; -- Limita o resultado aos 5 primeiros registros, trazendo assim as 5 pessoas colaboradoras com
		 -- os maiores salários
