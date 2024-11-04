-- AULA 6 Utilizando Views --
-- Trabalhando com as tabelas virtuais que foram criadas na aula passada:

-- Detalhe importante, podemos usar as Views EXATAMENTE COMO USAMOS AS TABELAS NORMAIS
-- veja exemplos abaixo de comando de pesquisa e filtros feitos com as views que são a
-- mesma coisa dos comandos feitos com as tabelas originais:

SELECT * FROM ViewValorTotalPedido;

SELECT nome FROM ViewValorTotalPedido;

SELECT * FROM ViewValorTotalPedido WHERE valor_total_pedido = 13;

SELECT * FROM ViewValorTotalPedido WHERE valor_total_pedido > 13;

SELECT * FROM ViewValorTotalPedido WHERE valor_total_pedido > 10
AND Valor_Total_Pedido < 14;

SELECT * FROM ViewValorTotalPedido 
WHERE strftime('%m', datahorapedido) = '08';

-- Removendo uma VIEW do bando de dados:
DROP view ViewCliente;

-- Obs: É muito parecido com o DROP TABLE, só que no caso só substitui o elemento mesmo de um
-- para o outro e apagar a View tabela escolhida. É auto explicativo, mas, é sempre bom anotar
-- para quem sabe no futuro não se confundir ou algo do genero. :)