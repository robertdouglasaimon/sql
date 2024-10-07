-- CONTINUANDO A DEMANDA 3º do exercicio anterior: Praticando HAVING.
-- 3º Demanda: Quantidade de cursos por instituição.
SELECT instituicao, COUNT(curso) FROM Treinamento 
GROUP BY instituicao HAVING COUNT(curso) > 2;