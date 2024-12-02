-- Mão na massa: calculando a participação de mercado de marcas e fornecedores

-- Calculando a Participação de Mercado de Marcas e Fornecedores Usando SQL

-- Contexto
-- Na aula, aprendemos a calcular a porcentagem de vendas de cada categoria de produtos, uma técnica valiosa para entender a participação de mercado de diferentes categorias. Agora, vamos expandir essa abordagem para obter insights semelhantes sobre marcas e fornecedores.

-- Objetivo:
-- O objetivo deste desafio é aplicar a mesma lógica que usamos para categorias, mas agora para calcular a porcentagem de vendas de cada marca e cada fornecedor. Isso nos ajudará a entender melhor quais marcas e fornecedores são mais significativos em termos de volume de vendas.

-- Consulta de Exemplo para Categorias:
SELECT Nome_Categoria, Qtd_Vendas, ROUND(100.0 * Qtd_Vendas / (SELECT COUNT(*) FROM itens_venda), 2) || "%" AS Porcentagem
FROM (
    SELECT c.nome_categoria AS Nome_Categoria, COUNT(iv.produto_id) AS Qtd_Vendas
    FROM itens_venda iv
    JOIN vendas v ON v.id_venda = iv.venda_id
    JOIN produtos p ON p.id_produto = iv.produto_id
    JOIN categorias c ON c.id_categoria = p.categoria_id
    GROUP BY Nome_Categoria
    ORDER BY Qtd_Vendas DESC
    );
    
    
-- Sua Tarefa:

-- Análise de Marcas:
-- Modifique a consulta acima para calcular a porcentagem de vendas de cada marca de produtos. Substitua as junções e seleções 
-- para focar nas marcas em vez de categorias.

-- Análise de Fornecedores:
-- Realize uma alteração semelhante na consulta para calcular a porcentagem de vendas atribuídas a cada fornecedor.
-- Ao concluir este desafio, você será capaz de aplicar técnicas de análise de dados SQL para extrair insights valiosos 
--  sobre diferentes aspectos das operações de vendas de uma empresa.


-- MINHA RESPOSTA PARA O EXERCICIO:
SELECT Nome_Marcas, Qtd_Vendas, ROUND(100.0 * Qtd_Vendas / (SELECT COUNT(*) FROM itens_venda), 2) || '%' AS Porcentagem
FROM (
    SELECT m.nome AS Nome_Marcas, COUNT(iv.produto_id) AS Qtd_Vendas
    FROM itens_venda iv
    JOIN vendas v ON v.id_venda = iv.venda_id
    JOIN produtos p ON p.id_produto = iv.produto_id
    JOIN marcas m ON m.id_marca = p.marca_id
    GROUP BY Nome_Marcas
    ORDER BY Qtd_Vendas DESC
    );