-- Fazendo consultas avançadas: Especificando mais pontos usando os Filtros Compostos.


-- Fazendo filtro especifico: A Hermex Import não quer só saber os pedidos que tem valor maior ou igual a 200
-- ela quer, além de saber se esses pedidos tem esse valor, que eles seja, os pedidos que tem o status PENDENTE.

SELECT * FROM tabelapedidos WHERE total_do_pedido >= 200 and status = 'Pendente'; -- Usando o AND eu consigo atribur mais encargos a minha pesquisa. Nesse caso aqui, usamos o 'AND' para especificar outra coluna da tabela para ser ATRIBUIDA para a mesma pesquisa
																				  -- e assim, termos o filtro de dois atributos e uma só linha de comando. Conseguindo assim, saber os pedidos maiores ou iguais a 200 e que estão pendentes. :)



-- Fazendo filtro especifico: Todos os pedidos que não foram enviodos ainda. Ou seja, todos os pedidos com o status:
-- PENDENTE ou PROCESSANDO.

SELECT * FROM tabelapedidos where status = 'Pendente' or status = 'Processando'; -- Usando o OR eu consigo atribuida mais de um atributo da mesma coluna para a pesquisa/filtragem, pois, o SQL não permite o uso de 'AND' mais de uma vez
																				 -- na mesma pesquisa. E como precisamos de mais de um atributo da mesma coluna, 'OR' (OU) é o condicional perfeito para chamar outro atributo, assim chamamos
                                                                                 -- PENDENTE e PROCESSANDO.
                                                                               
                                                                               
-- Fazendo filtro especifico: Todos os pedidos EXCETO/MENOS aqueles com status PENDENTE.
SELECT * FROM tabelapedidos where NOT status = 'Pendente';  -- Usando o NOT, você remove da pesquisa/filtro um determinado atributo da coluna e mostra apenas os demais.

-- Fazendo filtro especifico: Alguns pedidos em um determinado intervalo de tempo.
SELECT * FROM tabelapedidos WHERE data_de_envio_estimada BETWEEN '2023-08-01' and '2023-09-01';  -- O BETWEEN e usado especificamente para fazer filtros de datas, pedidos entre uma data e outra.