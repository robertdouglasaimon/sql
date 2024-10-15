-- Exercicio 14: A empresa deseja uma consulta onde separa as pessoas pela faixa salárial. 
-- para que ela tem uma noção de qual é a média de ganho de cada produção, cada cargo.

-- 1º Demanda 
SELECT id_colaborador, cargo, salario, 
CASE WHEN salario < 3000 THEN 'Baixo'
WHEN salario BETWEEN 3000 AND 6000 THEN 'Médio' 
ELSE 'Alto'END AS categoria_salario
FROM HistoricoEmprego;