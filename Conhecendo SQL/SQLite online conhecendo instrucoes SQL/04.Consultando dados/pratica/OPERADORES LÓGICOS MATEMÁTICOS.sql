--AULA: OPERADORES LÓGICOS MATEMÁTICOS NO SQL

-- Objetivo:
-- Filtrar os pedidos que são maiores que R$200,00
SELECT * FROM tabelapedidos WHERE total_do_pedido >= 200;


-- Usando os outros operadores:
SELECT * FROM tabelapedidos WHERE total_do_pedido = 200; -- Igual '=' : Nesse caso vem exatamente o valor solicitado após o operador.

SELECT * FROM tabelapedidos WHERE total_do_pedido <= 200; -- Menor ou igual '<='

SELECT * FROM tabelapedidos WHERE total_do_pedido <> 200; -- Diferente '<>'


-- OPERADORES LOGICOS PARA STRINGS (TEXTO)
-- Fazendo filtro especifico: Nessa situação, vamos filtrar apenas clientes que possuem nome que se iniciam com a letra ''c'':
SELECT * FROM tabelaclientes WHERE nome_cliente > 'C'; -- Seguindo a ordem ALFABETICA, ele vai busca os nomes que possuem da letra 'C' adiante (Ex: Carlos, Daniel, Elza, Fabio, etc, etc..)

-- OPERADORES LOGICOS PARA DATAS
-- Fazendo filtro especifico: Nessa situação, vamos filtrar quais pedidos foram feitos depois do dia 19/09.
SELECT * FROM tabelapedidos WHERE data_do_pedido > '2023-09-19'; -- Apenas as consultas do dias 19/09 adiante.
             													 -- Aqui segue a mesma ideia da busca de texto, em ordem crescente ele vai buscar dados do dia 19 adiante
                                                                 -- (Ex: 2023-09-20, 2023-09-22, 2023-03-24, etc, etc..)