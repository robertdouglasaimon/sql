-- Adicionando chave estrangeira e relacionando os 
-- itens de uma outra tabela a coluna de uma tabela especifica!

create table tabelaprodutos (
  	ID_Produto INT PRIMARY KEY,
  	Nome_do_produto VARCHAR (250),
  	Descricao TEXT,
  	Categoria INT,
  	Preco_de_Compra DECIMAL (10,2),
  	Unidade VARCHAR (50),
  	Fornecedor INT,
  	Data_de_Inclusao DATE,
  	FOREIGN KEY (Categoria) REFERENCES tabelacategorias (id_categoria),
  	FOREIGN key (Fornecedor) REFERENCES tabelafornecedores (id)
  )

 SELECT * from tabelaprodutos