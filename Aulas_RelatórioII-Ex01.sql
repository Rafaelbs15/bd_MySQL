-- Ex01

SELECT `g`.`nome`,
	COUNT(`c`.`id`) AS `qtd_cancoes`
FROM `cancoes`AS `c`
INNER JOIN `generos` AS `g`
ON `c`.`id_genero` = `g`.`id`
GROUP BY `id_genero`
ORDER BY `qtd_cancoes` DESC;

-- Ex02

SELECT `g`.`nome`,
	COUNT(`c`.`id`) AS `qtd_cancoes`
FROM `cancoes`AS `c`
INNER JOIN `generos` AS `g`
ON `c`.`id_genero` = `g`.`id`
GROUP BY `id_genero`
HAVING `qtd_cancoes` > 10
ORDER BY `qtd_cancoes` ASC; 
 
-- Ex03

SELECT `c`.`pais`, 
	COUNT(`c`.`id`) AS `qtd_clientes`,
    SUM(`f`.`valor_total`) AS `soma_faturas`
FROM `clientes` AS `c`
INNER JOIN `faturas` AS `f`
ON `c`.`id` = `f`.`id_cliente`
GROUP BY `c`.`pais`
ORDER BY `soma_faturas` DESC
LIMIT 7;
