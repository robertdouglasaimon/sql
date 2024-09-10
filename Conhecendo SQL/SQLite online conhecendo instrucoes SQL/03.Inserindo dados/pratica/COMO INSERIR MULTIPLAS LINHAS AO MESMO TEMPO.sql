-- Como inserir múltiplas linhas ao mesmo tempo!

INSERT INTO tabelaclientes (
	ID_Cliente,
  	Nome_Cliente,
  	Informacoes_de_Contato,
  	Endereço_Cliente
)

-- Segue o mesmo principio de adicionar apenas um atributo, a diferença vai estar que,
-- para adicionar multiplos, após o fechamento de um, você coloca VIRGULA (",") e abre
-- um novo parenteses para colocar o dado seguinte, como mostra o exemplo abaixo:

VALUES 
('2', 'João Santos','joaosantos@provedor.com','Rua dos pinheiros, 25'),
('3', 'Maria Fernandes', 'maria.fernandes@email.com', 'Rua Santo Antonio, 10'),
('4', 'Carlos Pereira', 'carlos.pereira@email.com', 'Avenida rio, 67'),
('5', 'Patricia Lima', 'patricia.lima@email.com', 'Rua das Flores, 123')

