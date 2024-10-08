-- EXERCICIO: Inserir do id 5 até o 30 os novos valores na tabelaclientes!


-- Comportamento do INSERT OR REPLACE:
-- Ele continua funcionando igual quando era INSERT INTO, porém:
-- * Se o alguns dos atributos já existir: Substitui o registro existente pelos novos valores.
-- * Se o atributo não existe: Insere um novo registro.

INSERT OR REPLACE INTO tabelaclientes (
    ID_Cliente,
    Nome_Cliente,
    Informacoes_de_Contato,
    Endereço_Cliente
)
VALUES 
('2', 'João Santos', 'joaosantos@provedor.com', 'Rua dos pinheiros, 25'),
('3', 'Maria Fernandes', 'maria.fernandes@email.com', 'Rua Santo Antonio, 10'),
('4', 'Carlos Pereira', 'carlos.pereira@email.com', 'Avenida rio, 67'),

('5', 'Patricia Lima', 'patricia.lima@email.com', 'Rua das Flores, 123'),
('6', 'Rodrigo Almeida', 'rodrigo.almeida@email.com', 'Avenida Central, 456'),
('7', 'AndrÃ© Oliveira', 'andre.oliveira@email.com', 'Travessa do Sol, 789'),
('8', 'Isabela Rodrigues', 'isabela.rodrigues@email.com', 'Rua da Paz, 321'),
('9', 'Ricardo Sousa', 'ricardo.sousa@email.com', 'Alameda dos Sonhos, 654'),
('10', 'Luana Gomes', 'luana.gomes@email.com', 'Praceta das Estrelas, 987'),
('11', 'Juliano Costa', 'juliano.costa@email.com', 'Av. Principal, 234'),
('12', 'Sandra Ferreira', 'sandra.ferreira@email.com', 'Rua da Liberdade, 567'),
('13', 'Roberto Barbosa', 'roberto.barbosa@email.com', 'Rua da Esquina, 432'),
('14', 'Alice Santos', 'alice.santos@email.com', 'Largo da Amizade, 765'),
('15', 'Gustavo Lima', 'gustavo.lima@email.com', 'Avenida das Ãrvores, 876'),
('16', 'Carla Silva', 'carla.silva@email.com', 'Travessa das Aves, 345'),
('17', 'Daniel Oliveira', 'daniel.oliveira@email.com', 'Alameda dos Bosques, 678'),
('18', 'Luciana Almeida', 'luciana.almeida@email.com', 'Rua das Colinas, 123'),
('19', 'Fernando Pereira', 'fernando.pereira@email.com', 'Avenida das Ondas, 987'),
('20', 'Marina Lima', 'marina.lima@email.com', 'Praceta dos GirassÃ³is, 456'),
('21', 'Lucas Rodrigues', 'lucas.rodrigues@email.com', 'Rua das Montanhas, 321'),
('22', 'Adriana Sousa', 'adriana.sousa@email.com', 'Travessa dos Rios, 654'),
('23', 'Eduardo Gomes', 'eduardo.gomes@email.com', 'Avenida das Pedras, 789'),
('24', 'Marcia Costa', 'marcia.costa@email.com', 'Largo das Praias, 234'),
('25', 'JosÃ© Silva', 'jose.silva@email.com', 'Av. dos Ventos, 432'),
('26', 'Beatriz Alves', 'beatriz.alves@email.com', 'Rua dos Coqueiros, 765'),
('27', 'AndrÃ© Santos', 'andre.santos@email.com', 'Avenida dos Lagos, 876'),
('28', 'Carolina Lima', 'carolina.lima@email.com', 'Travessa das Neves, 345'),
('29', 'FÃ¡bio Rodrigues', 'fabio.rodrigues@email.com', 'Alameda dos Campos, 678'),
('30', 'Larissa Pereira', 'larissa.pereira@email.com', 'Rua dos Bosques, 123')

SELECT * FROM tabelaclientes