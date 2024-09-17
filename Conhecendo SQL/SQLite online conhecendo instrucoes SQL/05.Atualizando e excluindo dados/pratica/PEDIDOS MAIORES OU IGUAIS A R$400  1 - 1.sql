-- Comando para inserir dados na tabela 'tabelapedidosgold'
INSERT INTO tabelapedidosgold (
  	id_pedido_gold,                      -- Coluna de ID do pedido na tabela de pedidos "gold"
  	status_gold,                         -- Coluna de status do pedido na tabela de pedidos "gold"
  	total_do_pedido_gold,                -- Coluna do total do pedido na tabela de pedidos "gold"
  	cliente_gold,                        -- Coluna de cliente na tabela de pedidos "gold"
  	data_de_envio_estimado_gold,         -- Coluna de data de envio estimada na tabela de pedidos "gold"
	data_do_pedido_gold
)

-- Seleção de dados da tabela 'tabelapedidos' para serem inseridos na tabela 'tabelapedidosgold'
SELECT
    id,                                  -- Seleciona o ID da tabela de pedidos original ('tabelapedidos')
    status,                              -- Seleciona o status do pedido da tabela de pedidos original
    total_do_pedido,                     -- Seleciona o total do pedido da tabela de pedidos original
    cliente,                             -- Seleciona o cliente associado ao pedido da tabela de pedidos original
    data_de_envio_estimada,               -- Seleciona a data de envio estimada do pedido da tabela de pedidos original
	data_do_pedido
    
FROM tabelapedidos                      -- Indica a tabela de origem ('tabelapedidos') de onde os dados serão extraídos
WHERE total_do_pedido >= 400;           -- Condição para filtrar apenas pedidos com valor total igual ou superior a 400

SELECT * FROM tabelapedidosgold
