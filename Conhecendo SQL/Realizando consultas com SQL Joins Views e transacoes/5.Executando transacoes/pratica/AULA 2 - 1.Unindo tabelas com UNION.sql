-- AULA 2 Unindo tabelas com UNION --

-- Demanda 1: Os gestores, querem mandar um "mimo" para cada fornecedor e para cada colaborador.
-- Então, como eles querem fazer de forma surpresa, eles querem enviar para o endereço. Então a
-- empresa solicitou que buscassemos o endereço de cada colaborador e fornecedor.

SELECT rua, bairro, cidade, estado, cep FROM colaboradores;
SELECT rua, bairro, cidade, estado, cep FROM fornecedores;

--Usando o UNION para unir as duas consultas acima e trazer uma consulta só mais robusta
-- e de forma distinta, sem repetição:
SELECT rua, bairro, cidade, estado, cep FROM colaboradores
UNION
SELECT rua, bairro, cidade, estado, cep FROM fornecedores;