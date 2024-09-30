-- Exercicio 7: Como saber a média do lucro e das despesas da empresa?

-- 1º Demanda: Saber a média do lucro e despesas.
SELECT AVG(despesas) FROM faturamento;

-- 2º Demanda: Média de lucro liquido da empresa.
SELECT AVG(lucro_liquido) FROM faturamento;

-- 3º Demanda: Quantidade exata de colaboradores que estão desempregados.
SELECT COUNT (*) FROM HistoricoEmprego 
WHERE DataTermino NOT NULL;



-- EXTRA: Praticando COUNT em outras situações:
-- 4º Demanda: Sabe a quantidade de colaboradores de férias.
SELECT COUNT (*) FROM Licencas
WHERE tipolicenca = 'férias';
