-- Desafio --

-- Consulta 1: Retornar a média de Notas dos Alunos em história.
Select * FROM Notas;
SELECT * FROM Disciplinas;

SELECT AVG(Nota) AS media_historia 
FROM Notas 
WHERE id_disciplina = (SELECT id_disciplina FROM Disciplinas WHERE 
                       nome_disciplina = 'História');

-- Consulta 2: Retornar as informações dos alunos cujo Nome começa com 'A'.
SELECT * FROM Alunos;
SELECT * FROM Alunos WHERE ( nome_aluno LIKE 'A%');

-- Consulta 3: Buscar apenas os alunos que fazem aniversário em fevereiro.
SELECT * FROM Alunos;
SELECT * FROM Alunos WHERE ( data_nascimento LIKE '%02%'); 

-- Consulta 4: Realizar uma consulta que calcula a idade dos Alunos.
SELECT * FROM Alunos;

--Para o SQLite:
SELECT nome_aluno, 
       (strftime('%Y', 'now') - strftime('%Y', data_nascimento)) - 
       (strftime('%m-%d', 'now') < strftime('%m-%d', data_nascimento)) AS idade
FROM Alunos;

-- Explicação:
-- strftime('%Y', 'now') - strftime('%Y', data_nascimento): Calcula a diferença entre 
-- o ano atual e o ano de nascimento.

-- (strftime('%m-%d', 'now') < strftime('%m-%d', data_nascimento)): Subtrai 1 da idade 
-- se a data de nascimento ainda não passou neste ano (ajusta para o caso de a pessoa 
-- ainda não ter feito aniversário).

-- ---------------------------------------------------------------------------------- --
-- A cláusula strftime em SQL é usada para formatar e extrair partes de uma data e hora. 
-- Ela é especialmente útil em SQLite, onde funções nativas para manipulação de datas e 
-- horas são limitadas. O strftime() permite que você extraia informações como ano, mês, 
-- dia, hora, minuto, etc., de uma coluna de data, ou mesmo da data atual.


-- Sintaxe Básica:
-- strftime(format, date/time_value)

-- format: Define o que você deseja extrair ou formatar da data. Pode ser ano, mês, dia, 
-- hora, etc.

-- date/time_value: A data ou hora que você está manipulando. Pode ser uma coluna com 
-- valores de data ou a função 'now', que retorna a data e hora atuais.


-- Exemplos de Formatação:
-- %Y: Retorna o ano em quatro dígitos (ex: 2024).
-- %m: Retorna o mês em dois dígitos (ex: 10 para outubro).
-- %d: Retorna o dia do mês em dois dígitos (ex: 16 para o dia 16).
-- %H: Retorna a hora (00-23).
-- %M: Retorna os minutos.
-- %S: Retorna os segundos.


-- Exemplo Prático:
-- Extrair o ano da coluna data_nascimento:
-- SELECT strftime('%Y', data_nascimento) AS ano_nascimento
-- FROM Alunos;
-- ---------------------------------------------------------------------------------- --

--Para o MySQL WorkBench:
SELECT nome_aluno, TIMESTAMPDIFF(YEAR, data_nascimento, CURRENT_DATE())
FROM Alunos;

-- Explicação:
-- TIMESTAMPDIFF(YEAR, data_nascimento, CURDATE()) AS idade: Calcula a diferença 
-- em anos entre a data de nascimento e a data atual (CURDATE()), retornando a idade.
-- FROM Alunos: Puxa os dados da tabela Alunos.



-- Consulta 5: Retornar se o aluno está ou não aprovado. Aluno é considerado aprovado 
-- se a sua nota foi igual ou maior que 6.
SELECT * FROM Alunos;
SELECT * FROM Notas;

SELECT nome_aluno,
       (SELECT nota FROM Notas WHERE id_aluno = id_aluno) AS nota,
       CASE 
           WHEN (SELECT nota FROM Notas WHERE id_aluno = id_aluno) IS NULL THEN 'Sem Nota'
           WHEN (SELECT nota FROM Notas WHERE id_aluno = id_aluno) < 6.00 THEN 'Recuperação'
           WHEN (SELECT nota FROM Notas WHERE id_aluno = id_aluno) >= 6.00 THEN 'Aprovado'
       END AS Status_Aprovação
FROM Alunos;

/*
Esta consulta recupera informações sobre alunos, suas notas e status de aprovação.

1. SELECT nome_aluno: 
   - Seleciona a coluna nome_aluno da tabela Alunos para que os nomes dos alunos apareçam na saída.

2. Subconsulta para Nota: 
   - (SELECT nota FROM Notas WHERE id_aluno = id_aluno) AS nota:
     - Esta subconsulta busca a nota do aluno na tabela Notas.
     - Verifica se o id_aluno da tabela Notas corresponde ao id_aluno da tabela Alunos na linha atual.
     - O resultado é atribuído a uma nova coluna chamada nota na saída.

3. Estrutura CASE:
   - Permite definir condições e retornar valores com base nelas.
   
   - CASE WHEN (SELECT nota FROM Notas WHERE id_aluno = id_aluno) IS NULL THEN 'Sem Nota':
     - Se a nota do aluno for NULL (ou seja, não há nota registrada), retorna 'Sem Nota'.
     
   - WHEN (SELECT nota FROM Notas WHERE id_aluno = id_aluno) < 6.00 THEN 'Recuperação':
     - Se a nota do aluno for menor que 6.00, retorna 'Recuperação'.
     
   - WHEN (SELECT nota FROM Notas WHERE id_aluno = id_aluno) >= 6.00 THEN 'Aprovado':
     - Se a nota do aluno for maior ou igual a 6.00, retorna 'Aprovado'.

4. Nome da Coluna de Status:
   - END AS Status_Aprovação: 
     - Finaliza a estrutura CASE e nomeia a coluna resultante como Status_Aprovação.

5. FROM Alunos:
   - Indica que a consulta está obtendo dados da tabela Alunos.
   - Para cada aluno na tabela, as subconsultas e a lógica do CASE são aplicadas.

Resultado da Consulta:
A consulta resultará em uma tabela com as colunas:
- nome_aluno: O nome do aluno.
- nota: A nota do aluno obtida da tabela Notas.
- Status_Aprovação: O status de aprovação baseado na nota do aluno ('Sem Nota', 'Recuperação' ou 'Aprovado').

Exemplo de Resultado:
| nome_aluno | nota | Status_Aprovação |
|------------|------|------------------|
| João       | 8.50 | Aprovado         |
| Maria      | 5.75 | Recuperação      |
| Pedro      | NULL | Sem Nota         |

Considerações Finais:
- Sem Ambiguidade: É importante estar ciente de que, se existirem colunas com nomes semelhantes em outras tabelas, 
isso pode causar ambiguidade e erros.

- Eficiência: Este tipo de subconsulta pode ser menos eficiente em grandes conjuntos de dados, pois a subconsulta é 
executada para cada linha retornada da tabela Alunos.

*/
