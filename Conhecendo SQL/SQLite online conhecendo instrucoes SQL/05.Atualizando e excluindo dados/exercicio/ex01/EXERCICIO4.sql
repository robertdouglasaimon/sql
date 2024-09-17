-- Criando a tabela!
CREATE TABLE funcionarios (
	id_funcionario INT PRIMARY KEY,                            
    nome_funcionario VARCHAR(100), 
  	departamento VARCHAR(100),                                   
    salario FLOAT                                                             
)

-- Inserindo os dados nela!
INSERT INTO funcionarios (
  	id_funcionario,                            
    nome_funcionario, 
  	departamento,                                   
    salario 
 )
 
VALUES
('1', 'Heitor Vieira','Financeiro', 4959.22),
('2', 'Daniel Campos','Vendas', 3884.44),
('3', 'Luiza Dias', 'TI',8205.78),
('4', 'Davi Lucas Moraes','Financeiro', 8437.02),
('5', 'Pietro Cavalcanti','TI', 4946.88),
('6', 'Evelyn da Mata','Vendas', 5278.88),
('7', 'Isabella Rocha','Marketing', 4006.03),
('8', 'Sra. Manuela Azevedo','Vendas', 6101.88),
('9', 'Brenda Cardos', 'TI',8853.34),
('10',' Danilo Souza', 'TI', 8242.14)

-- Checando a tabela
SELECT * from funcionarios;


-- Na tabela funcionarios, selecione os nomes dos funcionários que 
-- trabalham no departamento de "Vendas".
SELECT * FROM funcionarios WHERE departamento = 'Vendas';

-- Selecione os funcionários da tabela funcionarios cujo salário seja maior que 5000.
SELECT * FROM funcionarios WHERE salario > 5000;

-- Na tabela funcionarios, selecione todos os departamentos distintos.
SELECT departamento FROM funcionarios;

-- Atualize o salário dos funcionários do departamento de "TI" para 7500 na tabela funcionarios.
UPDATE funcionarios set salario = 7500 WHERE departamento = 'TI'
SELECT * from funcionarios

-- Delete da tabela funcionarios todos os registros de funcionários que ganham menos de 4000.
DELETE FROM funcionarios WHERE salario < 4000
SELECT * FROM funcionarios

-- Selecione os nomes e salários dos funcionários que trabalham no departamento de 
-- "Vendas" e cujo salário seja maior ou igual a 6000.
SELECT * from funcionarios where departamento = 'Vendas' and salario >= 6000

-- Crie uma tabela chamada projetos com as colunas: id_projeto (int, chave primária), 
-- nome_projeto (varchar(100)), id_gerente (int, referência a id na tabela funcionarios). 
-- Insira 3 registros na tabela projetos e, em seguida, selecione todos os projetos cujo 
-- id_gerente seja igual a 2.
CREATE TABLE projetos (
	id_projeto INT PRIMARY KEY,                            
    nome_projeto VARCHAR(100), 
  	id_gerente INT,
  	FOREIGN KEY (id_gerente) REFERENCES funcionarios(id_funcionario)
)

INSERT INTO projetos (
	id_projeto,                            
    nome_projeto, 
  	id_gerente   
 )

VALUES
('1', 'Projeto Fokus', '1'),
('2', 'Projeto Turma de SQL', '2'),
('3', 'Projeto Python - Dados', '3')

SELECT * from projetos where id_gerente = 2

DROP TABLE funcionarios