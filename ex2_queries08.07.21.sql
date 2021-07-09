SELECT 
	`generos`.`nome` AS `genero`,
    `cancoes`.`nome` AS `cancao`,
    `tipos_de_arquivo`.`nome` AS `tipo`
FROM `generos`
INNER JOIN `cancoes`
ON `generos`.`id` = `cancoes`.`id_genero`
INNER JOIN `tipos_de_arquivo`
-- LEFT JOIN `tipos_de_arquivo` -- seleciona tudo da tabela do lado esquerda 
ON `cancoes`.`id_tipo_de_arquivo` = `tipos_de_arquivo`.`id`;



-- FUNÇÃO CONCAT 

-- SELECT CONCAT (`endereco`, " " , `cidade`, "-" , `estado`)
-- FROM `clientes`; 
