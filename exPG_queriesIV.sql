CREATE VIEW algunsQueen AS 
SELECT `artistas.nome`, `albuns.titulo`
FROM `albuns`
INNER JOIN `artistas` ON `artistas.id_albuns` = `albuns.id` 

SELECT  
	`artistas`.`nome` AS `ArtistaNome` , 
    `albuns`.`titulo` AS `TituloALbum`
FROM `artistas`
INNER JOIN `albuns`
ON `artistas`.`id_artista` = `albuns`.`id`;

SELECT 
	`artistas`.`nome` AS `ArtistaNome`,
    `albuns`.`titulo` AS `TituloALbum`
FROM `artistas`
LEFT JOIN `albuns`
ON `artistas`.`id` = `albuns`.`id_artista`;
SELECT * FROM `faturas`;

SELECT * FROM `maisimundos_v2`.`itens_da_faturas` WHERE `id_cancao`;

/* Questão 4 Crie uma view chamada FATURAS_NACIONAIS. A view deve ter as seguintes colunas: id da fatura, data da fatura, id do cliente, nome do cliente, sobrenome do cliente e total da fatura, e deve incluir apenas faturas da argentinas. Em seguida, 
execute SELECT * 
FROM FATURAS_NACIONAIS. Quantos registros a consulta retorna?*/

CREATE VIEW `FATURAS_NACIONAIS` AS 
SELECT `faturas`.`id`, `clientes`.`nome`, `clientes`.`sobrenome`, `faturas`.`valor_total`
FROM `faturas`
INNER JOIN `clientes`
ON `faturas`. `id_cliente` = `clientes`.`nome`;

SELECT * FROM `FATURAS_NACIONAIS`;

SELECT 
	`artistas`.`nome` AS `artista`,
    `albuns`.`titulo` AS `album`
FROM `artistas`
INNER JOIN `albuns`
ON `artistas` .`id` = `albuns`.`id_artista`
LEFT JOIN `id_artista`
ON `albuns`.`id` = `id_artista`.`titulo`