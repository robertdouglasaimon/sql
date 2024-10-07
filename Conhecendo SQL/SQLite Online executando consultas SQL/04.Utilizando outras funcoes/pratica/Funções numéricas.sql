-- Exercicio 12: Trazer os dados de faturamentos mais "arredondados", pois, os dados vieram com várias 
-- casas decimais depois da virgula. E como é um valor financeiro, para ela só interessa duas casas 
-- após a virgula.

-- 1º Demanda: Consulta usando o ROUND (ROUND gera um valor financeiro bem próximo do real, arredondando para 
-- duas casas decimais) pois é exatamente o que a empresa precisa.
SELECT AVG(faturamento_bruto), ROUND(AVG(faturamento_bruto),2) 
FROM faturamento;


--EXTRA: Consulta usando CEIL e FLOOR
SELECT CEIL(faturamento_bruto), CEIL(despesas) FROM faturamento; -- Arredonda para o inteiro MAIOR

SELECT CEIL(faturamento_bruto), FLOOR(despesas) FROM faturamento; -- Arredonda para o inteiro MENOR