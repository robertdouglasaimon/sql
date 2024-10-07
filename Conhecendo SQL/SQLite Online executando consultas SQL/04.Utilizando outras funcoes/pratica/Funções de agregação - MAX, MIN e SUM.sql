-- Exercicio 6: Como descobrir os meses de maior e menor faturamento na história
-- da empresa?


-- 1º Demanda: Descobrir os meses de maior e menor faturamento

-- Exibe todas as informações da tabela 'faturamento'
SELECT * FROM faturamento;

-- Seleciona o mês e o maior valor de faturamento bruto da tabela
SELECT mes, MAX(faturamento_bruto) FROM faturamento;

-- Seleciona o mês e o menor valor de faturamento bruto da tabela
SELECT mes, MIN(faturamento_bruto) FROM faturamento;


-- 2º Demanda: A soma dos novos clientes do último ano (2023)

-- Soma o total de novos clientes do ano de 2023 na tabela 'faturamento'
SELECT SUM(numero_novos_clientes) as 'Novos clientes 2023' 
FROM faturamento
-- Filtra os registros que contenham '2023' no campo 'mes'
WHERE mes LIKE '%2023';


