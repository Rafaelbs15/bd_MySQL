CREATE SCHEMA `checkpointIIFuncionarios`;

CREATE TABLE `checkpointIIFuncionarios`.`funcionarios` (
	`funcionario_id` INT NOT NULL AUTO_INCREMENT, 
    `nome` VARCHAR (50),
    `carteiraTrabalho` INT,
    `dataContrato` DATE,
    `salario` FLOAT, 
    PRIMARY KEY (`funcionario_id`)
);

CREATE TABLE `checkpointIIFuncionarios`.`funcao` (
	`funcao_id` INT NOT NULL AUTO_INCREMENT, 
    `nome` VARCHAR (50),
    PRIMARY KEY (`funcao_id`)
);

CREATE TABLE `checkpointIIFuncionarios`.`coordenacao_setor` (
	`coordenacao_is` INT NOT NULL AUTO_INCREMENT, 
    `nome_coordenacao` VARCHAR(100),
    PRIMARY KEY (`coordenacao_is`)
);

CREATE TABLE `checkpointIIFuncionarios`.`horario_trabalho_funcionario` (
	`horario_id` INT NOT NULL AUTO_INCREMENT, 
    PRIMARY KEY (`horario_id`)
);

CREATE TABLE `checkpointIIFuncionarios`.`aniversario_funcionarios` (
	`aniversarios_id` INT NOT NULL AUTO_INCREMENT, 
    `aniversario` DATE,
    PRIMARY KEY (`aniversarios_id`)
);

CREATE TABLE `checkpointIIFuncionarios`.`setor` (
	`setor_id` INT NOT NULL AUTO_INCREMENT, 
    `numero` INT,
    PRIMARY KEY (`setor_id`)
);


SELECT * FROM `checkpointiifuncionarios`.`funcionarios`;
DESCRIBE `funcionarios`;

ALTER TABLE `funcionarios` ADD `fk_id` INT; 

ALTER TABLE `funcionarios`
ADD FOREIGN KEY (fk_id)
REFERENCES funcao(funcao_id);

SELECT * FROM `checkpointiifuncionarios`.`horario_trabalho_funcionario`;
DESCRIBE `horario_trabalho_funcionario`;

ALTER TABLE `horario_trabalho_funcionario` ADD `fk_funcionario_id` INT; 

ALTER TABLE `horario_trabalho_funcionario`
ADD FOREIGN KEY (fk_funcionario_id)
REFERENCES funcionarios(funcionario_id);

SELECT * FROM `checkpointiifuncionarios`.`aniversario_funcionarios`;
DESCRIBE `aniversario_funcionarios`;

ALTER TABLE `aniversario_funcionarios` ADD `fk2_funcionario_id` INT; 

ALTER TABLE `aniversario_funcionarios`
ADD FOREIGN KEY (fk2_funcionario_id)
REFERENCES funcionarios(funcionario_id);

SELECT * FROM `checkpointiifuncionarios`.`setor`;
DESCRIBE `setor`;

ALTER TABLE `setor` ADD `fk_coordenacao_id` INT; 

ALTER TABLE `setor`
ADD FOREIGN KEY (fk_coordenacao_id)
REFERENCES coordenacao_setor(coordenacao_id);

INSERT INTO `checkpointiifuncionarios`.`funcionarios`
(`nome`, `carteiraTrabalho`, `dataContrato`)
VALUES ('Leonardo Martins', '123456789', 12/07/2020); 

INSERT INTO `checkpointiifuncionarios`.`funcionarios`
(`nome`, `carteiraTrabalho`, `dataContrato`)
VALUES ('Fabio Melo', '789456123', 13/05/2021); 

INSERT INTO `checkpointiifuncionarios`.`funcionarios`
(`nome`, `carteiraTrabalho`, `dataContrato`)
VALUES ('Fabiola Pinto', '654789321', 02/03/2019); 

INSERT INTO `checkpointiifuncionarios`.`funcionarios`
(`nome`, `carteiraTrabalho`, `dataContrato`)
VALUES ('Vanessa Martins', '963258741', 20/01/2020); 

SELECT
 `nome`, `carteiraTrabalho`, `dataContrato`
 FROM `checkpointiifuncionarios`.`funcionarios`;
 
 UPDATE `checkpointiifuncionarios`.`funcionarios` SET `dataContrato` = '19/12/2018'
 WHERE `usuario_nome` = '02/03/2019'; 

DELETE FROM `checkpointiifuncionarios`.`funcionarios`
  WHERE `nome`= 'Vanessa Martins'; 
  