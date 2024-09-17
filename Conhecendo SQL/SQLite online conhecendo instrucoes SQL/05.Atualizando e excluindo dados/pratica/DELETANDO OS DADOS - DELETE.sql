-- Causula de delete: DELETE

-- Exercicio: A empresa vai CANCELAR as relações comerciais com alguns fornecedores, na verdade, fornecedores
-- que são do país da Turquia. E ela pediu parar tirar esses fornecedores da tabela de fornecedores.
DELETE FROM tabelafornecedores where país_de_origem = 'Turquia';
SELECT * FROM tabelafornecedores;

-- Obs: Ter cautela ao usar a cláusula DELETE.


-- Delete também pode ser usado com operadores lógicos como:
DELETE FROM tabelafornecedores where id > 35;
SELECT * FROM tabelafornecedores;