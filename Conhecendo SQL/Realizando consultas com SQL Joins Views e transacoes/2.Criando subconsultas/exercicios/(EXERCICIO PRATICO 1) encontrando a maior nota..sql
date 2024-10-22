-- Mão na massa: encontrando a maior nota (EXERCICIO PRATICO 1)PRATICO 1
-- Você é um professor e deseja identificar o aluno que obteve a maior nota em sua disciplina. 
-- Você tem duas tabelas em seu banco de dados: "Alunos" e "Notas". A tabela "Notas" registra as notas dos alunos em sua disciplina. 
-- Seu desafio é encontrar o aluno com a maior nota.

-- Tabela "Alunos":

--ID_aluno (chave primária)
-- Nome
-- Curso
-- Tabela "Notas":

-- ID_nota (chave primária)
-- ID_aluno (chave estrangeira)
-- Nota
-- Seu desafio é criar uma consulta SQL que retorne o nome do aluno que obteve a maior nota em sua disciplina.



-- RESPOSTA DO EXERCICIO:
-- Criar a tabela Alunos
CREATE TABLE Alunos (
    ID_aluno INT PRIMARY KEY,
    Nome VARCHAR(50),
    Curso VARCHAR(50)
);

-- Criar a tabela Notas
CREATE TABLE Notas (
    ID_nota INT PRIMARY KEY,
    ID_aluno INT,
    Nota DECIMAL(3, 2),
    FOREIGN KEY (ID_aluno) REFERENCES Alunos(ID_aluno)
);

-- Inserir dados na tabela Alunos
INSERT INTO Alunos (ID_aluno, Nome, Curso) VALUES
(1, 'Maria', 'Matemática'),
(2, 'João', 'Física'),
(3, 'Ana', 'Química'),
(4, 'Carlos', 'Biologia');

-- Inserir dados na tabela Notas
INSERT INTO Notas (ID_nota, ID_aluno, Nota) VALUES
(1, 1, 9.5),
(2, 2, 7.8),
(3, 3, 8.2),
(4, 4, 9.7);

-- Consulta para Encontrar o Aluno com a Maior Nota:
SELECT Nome FROM Alunos 
WHERE ID_aluno = (SELECT ID_aluno 
                  FROM Notas 
                  WHERE Nota = (SELECT MAX(Nota) FROM Notas));
