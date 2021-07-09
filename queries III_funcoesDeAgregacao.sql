-- 1 - Selecione o nome dos artistas(tabela artistas) 
-- com o nome de seus albuns (tabela albuns)
-- ordenado por id do artista (Order by)
SELECT `artistas`.`id`, `artistas`.`nome` AS `nome_artista`,
`albuns`.`titulo` AS `nome_album`
FROM `artistas`
INNER JOIN `albuns`
ON `artistas`.`id` = `albuns`.`id_artista`
ORDER BY `artistas`.`id`;

-- 2 - Selecione o nome do cliente (clientes) e suas faturas (faturas), 
-- porém somente as faturas com valor maior de 5 ordenados pelo valor da fatura decrescente.
SELECT `c`.`id` AS `id`, `c`.`nome` AS `nome_cliente`,
`f`.`id_cliente`AS `id_cliente`, 
`f`.`valor_total`
FROM `clientes` AS `c`
INNER JOIN `faturas` AS `f`
ON `c`.`id` = `f`.`id_cliente`
HAVING `f`.`valor_total` > 5
ORDER BY `f`.`valor_total` DESC; 

-- 3 Selecione o nome das cancoes (tabela cancoes) e o tipo de arquivo (tabela tipos_de_arquivos) 
-- e exiba o nome da canção e o tipo ordenado pelo id da canção.
SELECT `c`.`id`, `c`.`nome` AS `nome_cancao`, 
`t`.`nome` AS `tipo_arquivo`
FROM `cancoes` AS `c`
INNER JOIN `tipos_de_arquivo` AS `t`
ON `c`.`id_tipo_de_arquivo` = `t`.`id`
ORDER BY `c`.`id`;


