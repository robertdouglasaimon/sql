-- Mão na massa: gerenciamento escolar com banco de dados relacional (DESAFIO FINAL) - 
-- Consulta 1: Buscar o nome do professor e a turma que ele é orientador.--------------------------------------------------------------------

SELECT * FROM Professores;
SELECT * FROM Turmas;
SELECT * FROM Disciplinas;

SELECT p.Nome_Professor, d.Nome_Disciplina, t.Nome_Turma
FROM Professores AS p
JOIN Disciplinas as d 
ON  p.ID_Professor = d.ID_Professor 
JOIN Turmas AS t
ON  p.id_professor = t.ID_Professor_Orientador;

-- Consulta 2: Retornar o nome e a nota do aluno que possui a melhor nota na disciplina de Matemática. -------------------------------------
SELECT * FROM Aluno;
SELECT * FROM Disciplinas;
SELECT * FROM Notas;

SELECT a.Nome_Aluno, d.Nome_Disciplina, n.Nota
FROM Alunos AS a
JOIN Notas AS n
ON  a.ID_Aluno = n.ID_Aluno
JOIN Disciplinas AS d
ON n.ID_Disciplina = d.ID_Disciplina
WHERE d.Nome_Disciplina = 'Matemática'
ORDER BY n.Nota DESC
LIMIT 1;

-- Consulta 3: Identificar o total de alunos por turma. ------------------------------------------------------------------------------------
SELECT * FROM Turmas;
SELECT * FROM Turma_Alunos;

SELECT t.Nome_Turma, COUNT(ta.ID_Aluno) AS Total_Alunos
FROM Turmas AS t
JOIN Turma_Alunos AS ta
ON t.ID_Turma = ta.ID_Turma
GROUP BY t.Nome_Turma;

-- Consulta 4: Listar os Alunos e as disciplinas em que estão matriculados. ---------------------------------------------------------------
SELECT * FROM Alunos;
SELECT * FROM Turma_Alunos;
SELECT * FROM Turma_Disciplinas;

SELECT a.Nome_Aluno, d.Nome_Disciplina
FROM Alunos AS a
JOIN Turma_Alunos AS ta
ON a.ID_Aluno = ta.ID_Aluno
JOIN Turma_Disciplinas AS td
ON ta.ID_Turma = td.ID_Turma
JOIN Disciplinas AS d
ON td.ID_Disciplina = d.ID_Disciplina;

-- Consulta 5: Criar uma view que apresenta o nome, a disciplina e a nota dos alunos --------------------------------------------------------
SELECT * FROM Turma_Alunos;
SELECT * FROM Turma_Disciplinas;
SELECT * FROM Notas;

SELECT a.Nome_Aluno, d.Nome_Disciplina, n.Nota
FROM Alunos AS a
JOIN Notas AS n
ON a.ID_Aluno = n.ID_Aluno
JOIN Disciplinas AS d
ON n.ID_Disciplina = d.ID_Disciplina;

-- Criando a VIEW x_x kkk'
CREATE VIEW nome_aluno_disciplina AS
SELECT a.Nome_Aluno, d.Nome_Disciplina, n.Nota
FROM Alunos AS a
JOIN Notas AS n
ON a.ID_Aluno = n.ID_Aluno
JOIN Disciplinas AS d
ON n.ID_Disciplina = d.ID_Disciplina;

SELECT * FROM nome_aluno_disciplina;


