-- EXERCÍCIO 2 - Filtrar apenas as pessoas cujo campo 'datatermino' esteja NULL (ou seja, que ainda estão empregadas)

SELECT * FROM HistoricoEmprego 

WHERE datatermino ISNULL  -- Filtra os registros onde 'datatermino' é NULL (a pessoa ainda está empregada)
ORDER BY salario DESC     -- Ordena os resultados pelos maiores salários em ordem decrescente
LIMIT 5;                  -- Limita o resultado aos 5 primeiros registros (as 5 pessoas com maiores salários)

-- Se quisermos trazer apenas os colaboradores que não estão empregados no momento (ou seja, que têm alguma data no campo 'datatermino')
SELECT * 
FROM HistoricoEmprego
WHERE datatermino NOTNULL  -- Filtra os registros onde 'datatermino' tem uma data (a pessoa não está mais empregada)
ORDER BY salario DESC      -- Ordena os resultados pelos maiores salários em ordem decrescente
LIMIT 5;                   -- Limita o resultado aos 5 primeiros registros (as 5 pessoas com maiores salários, mesmo fora da empresa)
