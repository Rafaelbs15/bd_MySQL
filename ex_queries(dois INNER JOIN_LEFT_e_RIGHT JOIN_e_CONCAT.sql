SELECT 
	distinct
	`clientes`.`id`,
	CONCAT (`endereco`, " " , `cidade`)
    AS `enderecoPessoal`,
    CONCAT (`endereco_cobranca`, " ", `cidade_cobranca`)
    AS `√®nderecoCobranca`
FROM `clientes`
INNER JOIN `faturas`
ON `clientes`.`id` = `faturas`.`id_cliente`;

