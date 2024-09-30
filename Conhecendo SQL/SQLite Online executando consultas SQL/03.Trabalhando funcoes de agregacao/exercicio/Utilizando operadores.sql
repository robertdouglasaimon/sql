-- EXERCÍCIO 3 - Achar um treinamento quando não sabemos o nome completo

-- Seleciona todos os registros da tabela 'Treinamento' (para consultar os dados inicialmente)
SELECT * FROM Treinamento;

SELECT * FROM Treinamento WHERE curso LIKE 'O poder%';  -- Filtra os treinamentos cujo nome começa com 'O poder', usando a cláusula LIKE.
														-- O caractere '%' substitui qualquer sequência de caracteres após 'O poder', 
														-- permitindo que você encontre cursos cujo nome completo não é totalmente conhecido.
														-- Busca todos os cursos que começam com 'O poder'                                                     
                                                        
SELECT * FROM Treinamento 
WHERE curso LIKE '%realizar%';  -- Busca todos os cursos que contêm a palavra 'realizar' no meio do nome.

                                -- Outra situação: Filtrar os cursos que têm a palavra 'realizar' no meio do nome
                                -- O caractere '%' antes e depois da palavra 'realizar' indica que pode haver
                                -- qualquer sequência de caracteres antes e depois da palavra, o que permite
                                -- localizar cursos com 'realizar' em qualquer posição do nome.
