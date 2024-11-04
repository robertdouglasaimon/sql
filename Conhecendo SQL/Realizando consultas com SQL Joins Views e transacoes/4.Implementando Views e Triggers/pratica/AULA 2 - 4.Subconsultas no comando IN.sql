-- AULA 2 Subconsultas no comando IN --

-- Demanda 3: Buscar os clientes que realizaram consultas em um mês especifico,
-- Retornar todos os pedidos realizados em um determinado mês:

SELECT idcliente FROM pedidos WHERE strftime('%m', datahorapedido) = '01';

SELECT nome FROM clientes 
WHERE id IN (
  	SELECT idcliente 
  	FROM pedidos 
  	WHERE strftime('%m', datahorapedido) = '01'
);
  
 -- Uma breve explicação sobre as cláusulas "strftime()" e "IN":
 
 -- strftime: Faz uma conversão da data, e extrai exatamente o que a gente quer/precisa.
 
 -- IN: Ele traz todos os operadores que estão dentro dessa consulta. Nesse caso foi necessessario pois,
 -- nessa consulta, apenas o "id = (..." não estava retornando TODOS os valores filtrados, e usando o IN 
 -- eu consigo "FORÇAR" a visualização desses dados prontos, afinal, eles já estão lá só não estão visiveis
 -- e usando IN eu os torno visiveis. :)