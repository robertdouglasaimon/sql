-- Exercicio 4: Buscar colaboradores específicos para preencher algumas vagas.
-- 1º Demanda: Trazer alguns profissionais com cargo de PROFESSOR e que não esteja trabalhando no momento.
SELECT * FROM HistoricoEmprego WHERE cargo = 'Professor' AND datatermino NOTNULL;


-- Buscando com mais condições, fazendo uma consulta mais ampla.
-- 2º Demanda: Trazer profissionais classificados como Oftalmogista ou Dermatologistas, sem se importar
-- se estão trabalhando ou não, a empresa só quer ter acesso a esses profissionais para oferecer propostas
-- especificas nessas vagas.
SELECT * FROM HistoricoEmprego WHERE cargo = 'Oftalmologista' OR cargo = 'Dermatologista';


-- Buscando uma grande quantidade de atributos especificos de uma só vez, fazendo uma extremamente mais ampla.
-- 3º Demanda: Filtrar todos os Dermatologistas, Oftalmologistas e Professores.
SELECT * FROM HistoricoEmprego WHERE cargo IN ('Oftalmologista','Dermatologista','Professor');


-- EXTRA: Em uma consulta com muitos elementos onde você precisa apenas de elementos especificos, é possivel
-- excluir os elementos que você não precisa e deixar apenas aquelas aos quais você quer que apareça na consulta
-- usando a cláusula "NOT IN".
-- Veja o exemplo abaixo de como remover da consulta, algum atributo da tabela para gerar uma tabela apenas com
-- o que você precisa de lá. Nesse exemplo, excluimos 'Oftalmologista','Dermatologista' e 'Professor' da consulta:
SELECT * FROM HistoricoEmprego WHERE cargo NOT IN ('Oftalmologista','Dermatologista','Professor');
