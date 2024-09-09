-- Adicionando dados a uma tabela!

--Primeiro você seta o comando de inserção INSERT INTO, e em seguida escreve o 
-- nome da tabela que será atualizada. Por fim, entre parenteses, você escreve
-- exatamente o nome das colunas da tabela que receberão o novo dado, em ordem.
-- Lembrando sempre de colocar a virgula para separar a informação, se não dá erro.

INSERT into tabelaclientes (
  	ID_Cliente,
  	Nome_Cliente,
  	Informacoes_de_Contato,
  	Endereço_Cliente
 )
 
 -- Por fim, após setar acima as colunas que receberão a informação, em ordem, nós agora
 -- chamamos VALUES para dizer quais são os valores que vão entrar em cada coluna, e
 -- entre parentes, começamos a colocar os dados que irão ser
 -- inseridos nas colunas que nós organizamos lá em cima. Sendo '1' o id, 'Ana Silva' o
 -- 'Nome_Cliente' e assim sussecivamente com os demais. 
 
 -- Lembrando sempre de dividir os dados por virgulas, para que cada um deles vá corretamente
 -- para a sua respectiva coluna.
 
  VALUES (
 	'1',
    'Ana Silva',
    'ana.silva@email.com',
    'rua flores - casa 1'
 );
 
  SELECT * from tabelaclientes;