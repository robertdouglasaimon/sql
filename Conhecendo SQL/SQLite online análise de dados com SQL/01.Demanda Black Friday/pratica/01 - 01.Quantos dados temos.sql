-- 01.Quantos dados temos? --
-- Demanda 0: Verificando através do SELECT os campos que serão interessantes para a nossa 
-- analise no decorrer do curso, para gerar insights para o RH e a tomada de decisões da empresa:

SELECT COUNT(*) AS Total_produtos FROM produtos; -- Para sabermos a quantidade GERAL de produtos.
SELECT COUNT(*) AS Vendas_totais FROM vendas; -- Para... Geral de vendas.
