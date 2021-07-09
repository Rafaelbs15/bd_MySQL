-- Exemplo

CREATE VIEW `Musicas_Tipos` AS 
SELECT `cancoes`.`nome` AS `NomeCancao`,
		`tipos_de_arquivo`.`nome` AS `TipoArquivo`
FROM `cancoes`
INNER JOIN `tipos_de_arquivo`
ON `cancao`.`id_tipo_de_arquivo` = `tipos_de_arquivo`.`id`;

/* Selecione os nomes dos artistas (tabela artistas) que tem albuns, e o nome 
de seus albuns (tabelas albuns) ordenado por id do artista (Order by). [Inner] */



-- Exercícios 1 (A)
SELECT `artistas`.`nome` AS `ArtistaNome`,
		`albuns`.`titulo` AS `TitutoAlbum`
FROM `artistas`
INNER JOIN `albuns`
ON `albuns`.`id_artista` = `artistas`.`id`
ORDER BY `id_artista`;

-- Exercicio 1 (B)
SELECT `artistas`.`nome` AS `ArtistaNome`,
		`albuns`.`titulo` AS `TitutoAlbum`
FROM `artistas` LEFT JOIN `albuns`
ON `albuns`.`id_artista` = `artistas`.`id`
ORDER BY `id_artista`;

-- Exercicio 2 (A)
SELECT `clientes`.`nome` AS `ClientesNome`,
		`faturas`.`valor_total` AS `TotalFaturas`
FROM `clientes` 
INNER JOIN `faturas`
ON `faturas`.`id_cliente` = `clientes`.`id`
ORDER BY `id_cliente` DESC;

-- Exercicio 2 (B) 
SELECT `clientes`.`nome` AS `ClientesNome`,
		`faturas`.`valor_total` AS `TotalFaturas`
FROM `clientes` RIGHT JOIN `faturas`
ON `faturas`.`id_cliente` = `clientes`.`id`
ORDER BY `id_cliente`;

/*QUantos registros foram retornados em cada consulta?*/
-- Exercício 3 (A) 

SELECT `cancoes`.`nome` AS `NomeCancoes`,
		`tipos_de_arquivo`.`nome` AS `TipoCancoes`
FROM `cancoes`
INNER JOIN `tipos_de_arquivo`
ON `cancoes`.`id_tipo_de_arquivo` = `tipos_de_arquivo`.`id`
ORDER BY `id_tipo_de_arquivo`;

-- Exercicio (B)

-- Exercicio (C) 

/* View 
Transforme todas as consultas feitas nos exercícios anteriores (A - JOINS) 
em views. E salve-as. */

 /* Crie Views para as seguintes consultas
 a) Consultar todas as canções;
 b) Consultar todas as faturas com valor maior que 5;
 c) Consultar todos artistas cujo o nome começa a letra B;
 
 

