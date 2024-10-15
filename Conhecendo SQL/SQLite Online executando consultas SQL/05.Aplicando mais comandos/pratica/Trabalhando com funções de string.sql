-- Exercicio 10: Saber se os campos de CPF estão preenchidos com 11 digitos.

-- 1º Demanda: Contar o comprimento/caracteres de um campo especifico usando LENGTH:
SELECT nome, LENGTH(cpf) AS qtd 
FROM Colaboradores Where qtd = 11;

-- 1.1 º Demanda: Melhorando a pesquisa, pois, precisamos ter certeza que a pesquisa
-- trará TODOS os colaboradores, logo, usaremos "COUNT" para puxar TODOS os valores
-- com 11 digitos para ter mais certeza sobre a eficácia da nossa demanda:
SELECT COUNT (*), LENGTH(cpf) AS qtd 
FROM Colaboradores WHERE qtd = 11;

-- 2º Demanda: A empresa gostaria de ver os dados dos colaboradores.
-- Mas, mostrar isso de uma forma mais dinâmica, mais integrada
-- que não pareça uma tabela (Que pareça um mini texto ou algo do genero)
-- usando CONCAT:
SELECT ('A pessoa colaboradora ' || nome || ' de CPF ' || cpf || ' possui
        o seguinte endereço: ' || endereco) AS texto
        FROM Colaboradores;
        
 -- Agora o mesmo resultado acima, só que usando UPPER para deixar todos
 -- os caracteres MAIUSCULOS:
 SELECT UPPER('A pessoa colaboradora ' || nome || ' de CPF ' || cpf || ' possui
        o seguinte endereço: ' || endereco) AS texto
        FROM Colaboradores;
        
  -- Agora o mesmo resultado acima, só que todos
 -- os caracteres MINUSCULOS:
  SELECT LOWER('A pessoa colaboradora ' || nome || ' de CPF ' || cpf || ' possui
        o seguinte endereço: ' || endereco) AS texto
        FROM Colaboradores;
 