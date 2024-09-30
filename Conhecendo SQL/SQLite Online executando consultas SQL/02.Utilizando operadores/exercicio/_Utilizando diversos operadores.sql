-- Exercicio 5: Buscar dois cursos específicos da tabela de treinamento.
-- 1º Demanda: A empresa deseja encontrar 2 cursos específicos da tabela de Treinamento, e esses cursos
-- precisam ser de uma instituição especifica. Ela não tem os dados completos de cada curso, então, ela tem
-- os termos que eles começam ali no inicio do nome de cada curso, e ela tem o nome da instituição que ela 
-- deveria trazer.
SELECT * FROM Treinamento 
where (curso LIKE 'O direito%' AND instituicao = 'da Rocha') 
OR (curso LIKE 'O conforto%' AND instituicao = 'das Neves');