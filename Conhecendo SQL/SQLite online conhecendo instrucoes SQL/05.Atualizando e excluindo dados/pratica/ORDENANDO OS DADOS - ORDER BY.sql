-- Resultado da consulta de forma ordenada (ORDER BY)
SELECT * FROM tabelaprodutos where preco_de_compra BETWEEN 200 AND 600 order by nome_do_produto; -- Faz a pesquisa dos valores estipulados em BETWENN 
																								 -- no entanto ele trás esses resultados por ordem alfabetica. 

SELECT * FROM tabelaprodutos where preco_de_compra BETWEEN 200 AND 600 order by data_de_inclusao; -- Por data de inclusão.

SELECT * FROM tabelaprodutos where preco_de_compra BETWEEN 200 AND 600 order by fornecedor DESC; -- Ordenando do maior para o menor (ORDEM DECRESCENTE) valor com o comando DESC.

SELECT * FROM tabelaprodutos where preco_de_compra BETWEEN 200 AND 600 order by fornecedor ASC; -- Ordenando do menor para o maior (ORDEM CRESCENTE) valor com o comando ASC.