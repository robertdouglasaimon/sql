-- Exercicio 9: Deseja saber as profissões que mais são cadastradas no banco de
-- dados "Cargos".
SELECT cargo, COUNT(*) AS qtd
FROM HistoricoEmprego 
GROUP BY cargo HAVING qtd >= 2;