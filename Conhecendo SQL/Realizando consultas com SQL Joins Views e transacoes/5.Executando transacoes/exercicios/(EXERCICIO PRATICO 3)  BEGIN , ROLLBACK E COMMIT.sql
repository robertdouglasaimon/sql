-- Mão na massa: total de pedidos (EXERCICIO PRATICO 3)

-- 1) Traga todos os dados da cliente Maria Silva.
SELECT * FROM clientes WHERE nome = 'Maria Silva'

-- 2) Busque o ID do pedidov e o ID do cliente dos pedidos onde o 
-- status esteja como entregue.
SELECT id, idcliente FROM pedidos WHERE status = 'Entregue'

-- 3) Retorne todos os produtos onde o preço seja maior que 10 e menor que 15.
SELECT * FROM produtos WHERE preco > 10 and preco < 15

-- 4) Busque o nome e cargo dos colaboradores que foram contratados entre 2022-01-01 e 2022-06-31.
SELECT nome, cargo FROM colaboradores 
WHERE datacontratacao 
BETWEEN '2022-01-01' AND '2022-06-31';

-- 5) Recupere o nome do cliente que fez o primeiro pedido.
SELECT nome FROM clientes
WHERE id = ( SELECT idcliente FROM pedidos ORDER BY datahorapedido asc
               LIMIT 1);

-- 6) Liste os produtos que nunca foram pedidos.
SELECT nome FROM produtos WHERE id NOT IN ( SELECT idProduto FROM ItensPedidos);
            
-- 7) Liste os nomes dos clientes que fizeram pedidos entre 2023-01-01 e 2023-12-31.
SELECT c.nome
FROM clientes AS c
INNER JOIN pedidos AS p ON c.id = p.idCliente
WHERE p.datahorapedido 
BETWEEN '2023-01-01' AND '2023-01-31';

-- 8) Recupere os nomes dos produtos que estão em menos de 15 pedidos.
SELECT p.nome
FROM produtos AS p
INNER JOIN itensPedidos AS ip 
ON p.id = IP.idProduto
GROUP BY p.nome
HAVING COUNT(ip.idPedido) < 15;

-- 9) Liste os produtos e o ID do pedido que foram realizados pelo cliente "Pedro Alves"
-- ou pela cliente "Ana Rodrigues".
SELECT p.nome, ip.idpedido
FROM produtos AS p
INNER JOIN itensPedidos AS ip ON P.id = IP.idProduto
INNER JOIN pedidos AS pd ON ip.idPedido = pd.id
INNER JOIN clientes AS c ON pd.idCliente = C.id
WHERE c.nome IN ('Pedro Alves', 'Ana Rodrigues');

-- 10) Recupere o nome e o ID do cliente que mais comprou(valor) no Serenatto.
SELECT p.idCliente, c.nome, SUM(ip.quantidade * ip.precounitario) as Valortotal 
FROM clientes c 
INNER JOIN pedidos p ON c.id = p.idcliente 
INNER JOIN itenspedidos ip ON p.id = ip.idpedido 
GROUP BY p.idCliente 
ORDER BY Valortotal DESC 
LIMIT 1;