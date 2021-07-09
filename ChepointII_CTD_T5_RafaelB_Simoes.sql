-- Exercício proposto para o Checkpoint II_CTD TURMA 5 -- 
-- Aluno: Rafael Barbosa Simões -- 

/* Professor ou professora, eu tive dificuldades nesse exercício
não consegui incluir um número pra salário e tive dúvida em outros comandos, se puder, 
gostaria de tirar algumas dúvidas depois. Obrigado! */

CREATE SCHEMA `checkpoint_2`;

CREATE TABLE `checkpoint_2`.`funcionarios` (
	`funcionario_id` INT NOT NULL AUTO_INCREMENT, 
    `nome` VARCHAR (50),
    `carteiraTrabalho` INT,
    `dataContrato` DATE,
    `salario` FLOAT, 
    PRIMARY KEY (`funcionario_id`)
);

CREATE TABLE `checkpoint_2`.`funcao` (
	`funcao_id` INT NOT NULL AUTO_INCREMENT, 
    `nome` VARCHAR (50),
    PRIMARY KEY (`funcao_id`)
);

CREATE TABLE `checkpoint_2`.`coordenacao_setor` (
	`coordenacao_is` INT NOT NULL AUTO_INCREMENT, 
    `nome_coordenacao` VARCHAR(100),
    PRIMARY KEY (`coordenacao_is`)
);

CREATE TABLE `checkpoint_2`.`horario_trabalho_funcionario` (
	`horario_id` INT NOT NULL AUTO_INCREMENT, 
    PRIMARY KEY (`horario_id`)
);

CREATE TABLE `checkpoint_2`.`aniversario_funcionarios` (
	`aniversarios_id` INT NOT NULL AUTO_INCREMENT, 
    `aniversario` DATE,
    PRIMARY KEY (`aniversarios_id`)
);

CREATE TABLE `checkpoint_2`.`setor` (
	`setor_id` INT NOT NULL AUTO_INCREMENT, 
    `numero` INT,
    PRIMARY KEY (`setor_id`)
);



SELECT * FROM `checkpoint_2`.`funcionarios`;
DESCRIBE `funcionarios`;

ALTER TABLE `funcionarios` ADD `fk_funcao` INT; 

ALTER TABLE `funcionarios`
ADD FOREIGN KEY (fk_funcao)
REFERENCES funcao(funcao_id);

SELECT * FROM `checkpoint_2`.`horario_trabalho_funcionario`;
DESCRIBE `horario_trabalho_funcionario`;

ALTER TABLE `horario_trabalho_funcionario` ADD `fk_funcionario` INT; 

ALTER TABLE `horario_trabalho_funcionario`
ADD FOREIGN KEY (fk_funcionario)
REFERENCES horario_trabalho_funcionario(horario_id);

SELECT * FROM `checkpoint_2`.`aniversario_funcionarios`;
DESCRIBE `aniversario_funcionarios`;

ALTER TABLE `aniversario_funcionarios` ADD `fk2_funcionario` INT; 

ALTER TABLE `aniversario_funcionarios`
ADD FOREIGN KEY (fk2_funcionario)
REFERENCES aniversario_funcionarios(aniversarios_id);

SELECT * FROM `checkpoint_2`.`setor`;
DESCRIBE `setor`;

ALTER TABLE `setor` ADD `fk_coordenacao` INT; 

ALTER TABLE `setor`
ADD FOREIGN KEY (fk_coordenacao)
REFERENCES setor(setor_id);

SELECT * FROM `checkpoint_2`.`funcionarios`;
DESCRIBE `funcionarios`;

INSERT INTO `checkpoint_2`.`funcionarios`
(`nome`, `carteiraTrabalho`, `dataContrato`)
VALUES ('Leonardo Martins', '123456789','2021-08-05');

INSERT INTO `checkpoint_2`.`funcionarios`
(`nome`, `carteiraTrabalho`, `dataContrato`)
VALUES ('Fabio Melo', '789456123', '2020-04-06');

INSERT INTO `checkpoint_2`.`funcionarios`
(`nome`, `carteiraTrabalho`, `dataContrato`)
VALUES ('Fabiola Pinto', '654789321', '2019-07-07');

INSERT INTO `checkpoint_2`.`funcionarios`
(`nome`, `carteiraTrabalho`, `dataContrato`)
VALUES ('Vanessa Martins', '963258741', '2021-05-08');

SELECT
 `nome`, `dataContrato`
 FROM `checkpoint_2`.`funcionarios`;
 
 UPDATE `checkpoint_2`.`funcionarios` SET `dataContrato` = '1996-08-01'
 WHERE`dataContrato` = '2021-05-08';

DELETE FROM `checkpoint_2`.`funcionarios`
  WHERE `nome`= 'Leonardo Martins'; 