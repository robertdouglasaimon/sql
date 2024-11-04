-- AULA 2 Utilizando o UNION ALL --

-- Continuando a Demanda 1 aula anterior de "Unindo tabelas com UNION", nossa missão é retornar todos os endereços
-- , mesmo que seja iguais. Pois houve colaboradores que dividiam o mesmo endereço e usando UNION meio que 
-- JUNTOU os dois em um só e possivelmente um dele não receberá o "mimo' proposto pela empresa:

-- Verificanndo colaboradores que dividem o mesmo endereço
SELECT * FROM colaboradores WHERE rua = 'Rua das flores - 210';

-- Resolvendo o problema usando UNION ALL para retornar TODOS os enderços, mesmo que sejam do mesmo local
SELECT nome, rua, bairro, cidade, estado, cep FROM colaboradores
UNION ALL
SELECT nome, rua, bairro, cidade, estado, cep FROM fornecedores;

