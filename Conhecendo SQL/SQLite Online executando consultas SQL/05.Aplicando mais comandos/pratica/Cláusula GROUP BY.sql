-- Exercicio 8: Quais os tipos de parentescos diferentes as pessoas colaboradoras
-- tem com os dependentes.

-- 1º Demanda: Tipos de parentescos diferentes entre os colaboradores
-- e os dependentes da empresa.
SELECT parentesco from Dependentes 
GROUP by parentesco;

-- 2º Demanda: Buscar o número de cada tipo de parentesco que tem.
SELECT parentesco, COUNT(*) AS 'Número de dependentes' from Dependentes 
GROUP by parentesco;

-- EXTRA: Praticando GROUP BY:
-- 3º Demanda: Quantidade de cursos por instituição.
SELECT instituicao, COUNT(curso) FROM Treinamento GROUP BY instituicao;