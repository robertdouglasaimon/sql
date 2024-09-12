--Exercicio tabela_funcionarios

-- Primeiro eu crio a tabela onde será inserido os dados propostos pelo exercicio,
-- já que o exercicio não me entregou nenhuma tabela para adição de dados.
-- Então a estrutura fica assim:
CREATE table tabela_funcionarios (
  	ID_Funcionario INT PRIMARY KEY,
  	Nome VARCHAR (30),
  	Cargo VARCHAR (20),
  	Departamento VARCHAR (20),
  	Data_de_Contratacao DATE,
  	Salario FLOAT
  )
  
-- Por fim, como proposto eu venho com o INSERT para atualizar os dados do funcionario
-- na tabela:

INSERT OR REPLACE INTO tabela_funcionarios (
  	ID_Funcionario,
    Nome,
    Cargo,
    Departamento,
   	Data_de_Contratacao,
  	Salario
)

VALUES
('32D', 'João Silva', 'Desenvolvedor de Software', 'TI', '2023-10-24', '6000.00' )

SELECT * FROM tabela_funcionarios