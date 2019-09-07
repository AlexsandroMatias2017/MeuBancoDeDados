
CREATE SCHEMA IF NOT EXISTS `qacademico` ;
USE `qacademico` ;

-- -----------------------------------------------------
-- Table `qacademico`.`aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qacademico`.`aluno` (
  `idaluno` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`idaluno`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qacademico`.`professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qacademico`.`professor` (
  `idprofessor` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`idprofessor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qacademico`.`disciplina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qacademico`.`disciplina` (
  `iddisciplina` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `cargahoraria` INT NULL,
  PRIMARY KEY (`iddisciplina`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qacademico`.`curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qacademico`.`curso` (
  `idcurso` INT UNSIGNED NOT NULL,
  `nome` VARCHAR(45) NULL,
  PRIMARY KEY (`idcurso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qacademico`.`table1`
-- -----------------------------------------------------


-- -----------------------------------------------------
-- Table `qacademico`.`dependente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qacademico`.`dependente` (
  `id_dependente` INT NOT NULL,
  `nome` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `id_professor` INT NOT NULL,
  PRIMARY KEY (`id_dependente`, `id_professor`),
  INDEX `fk_dependente_professor1_idx` (`id_professor` ASC),
  CONSTRAINT `fk_dependente_professor1`
    FOREIGN KEY (`id_professor`)
    REFERENCES `qacademico`.`professor` (`idprofessor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `qacademico`.`lista_avaliacao_unidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qacademico`.`lista_avaliacao_unidade` (
  `idlista_avaliacao_unidade` INT NOT NULL AUTO_INCREMENT,
  `unidade` SMALLINT NOT NULL,
  PRIMARY KEY (`idlista_avaliacao_unidade`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qacademico`.`diario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qacademico`.`diario` (
  `iddiario` INT NOT NULL,
  `idnota` INT NULL,
  `idaluno` INT NULL,
  `disciplina_iddisciplina` INT UNSIGNED NOT NULL,
  `curso_idcurso` INT UNSIGNED NOT NULL,
  `idlista_avaliacao_unidade1` INT NOT NULL,
  `idlista_avaliacao_unidade2` INT NOT NULL,
  PRIMARY KEY (`iddiario`, `disciplina_iddisciplina`, `curso_idcurso`, `idlista_avaliacao_unidade1`, `idlista_avaliacao_unidade2`),
  INDEX `fk_diario_disciplina1_idx` (`disciplina_iddisciplina` ASC),
  INDEX `fk_diario_curso1_idx` (`curso_idcurso` ASC),
  INDEX `fk_diario_lista_avaliacao_unidade1_idx` (`idlista_avaliacao_unidade1` ASC),
  INDEX `fk_diario_lista_avaliacao_unidade2_idx` (`idlista_avaliacao_unidade2` ASC),
  CONSTRAINT `fk_diario_disciplina1`
    FOREIGN KEY (`disciplina_iddisciplina`)
    REFERENCES `qacademico`.`disciplina` (`iddisciplina`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_diario_curso1`
    FOREIGN KEY (`curso_idcurso`)
    REFERENCES `qacademico`.`curso` (`idcurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_diario_lista_avaliacao_unidade1`
    FOREIGN KEY (`idlista_avaliacao_unidade1`)
    REFERENCES `qacademico`.`lista_avaliacao_unidade` (`idlista_avaliacao_unidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_diario_lista_avaliacao_unidade2`
    FOREIGN KEY (`idlista_avaliacao_unidade2`)
    REFERENCES `qacademico`.`lista_avaliacao_unidade` (`idlista_avaliacao_unidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `qacademico`.`avaliacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qacademico`.`avaliacao` (
  `idavaliacao` INT NOT NULL AUTO_INCREMENT,
  `unidade` VARCHAR(10) NOT NULL,
  `data_avaliacao` DATETIME NOT NULL,
  `nota_maxima` DECIMAL(4,2) NOT NULL,
  `nota_minima` DECIMAL(4,2) NOT NULL,
  `peso` DECIMAL(3,2) NOT NULL,
  PRIMARY KEY (`idavaliacao`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qacademico`.`diario_professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qacademico`.`diario_professor` (
  `diario_iddiario` INT NOT NULL,
  `professor_idprofessor` INT NOT NULL,
  `funcao` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  PRIMARY KEY (`diario_iddiario`, `professor_idprofessor`),
  INDEX `fk_diario_has_professor_professor1_idx` (`professor_idprofessor` ASC),
  INDEX `fk_diario_has_professor_diario_idx` (`diario_iddiario` ASC),
  CONSTRAINT `fk_diario_has_professor_diario`
    FOREIGN KEY (`diario_iddiario`)
    REFERENCES `qacademico`.`diario` (`iddiario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_diario_has_professor_professor1`
    FOREIGN KEY (`professor_idprofessor`)
    REFERENCES `qacademico`.`professor` (`idprofessor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `qacademico`.`avaliacao_diario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qacademico`.`avaliacao_diario` (
  `idavaliacao` INT NOT NULL,
  `id_avaliacao` INT NOT NULL,
  PRIMARY KEY (`idavaliacao`, `id_avaliacao`),
  INDEX `fk_avaliacao_has_diario_avaliacao1_idx` (`idavaliacao` ASC),
  INDEX `fk_avaliacao_has_diario_lista_avaliacao_unidade1_idx` (`id_avaliacao` ASC),
  CONSTRAINT `fk_avaliacao_has_diario_avaliacao1`
    FOREIGN KEY (`idavaliacao`)
    REFERENCES `qacademico`.`avaliacao` (`idavaliacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_avaliacao_has_diario_lista_avaliacao_unidade1`
    FOREIGN KEY (`id_avaliacao`)
    REFERENCES `qacademico`.`lista_avaliacao_unidade` (`idlista_avaliacao_unidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qacademico`.`nota_avaliacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qacademico`.`nota_avaliacao` (
  `idavaliacao` INT NOT NULL,
  `nota` DECIMAL(2,2) NOT NULL,
  `idaluno` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idavaliacao`, `idaluno`),
  INDEX `fk_nota_has_avaliacao_avaliacao1_idx` (`idavaliacao` ASC),
  INDEX `fk_nota_avaliacao_aluno1_idx` (`idaluno` ASC),
  CONSTRAINT `fk_nota_has_avaliacao_avaliacao1`
    FOREIGN KEY (`idavaliacao`)
    REFERENCES `qacademico`.`avaliacao` (`idavaliacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_nota_avaliacao_aluno1`
    FOREIGN KEY (`idaluno`)
    REFERENCES `qacademico`.`aluno` (`idaluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


USE `qacademico`;
INSERT INTO `qacademico`.`aluno` (`idaluno`, `nome`) VALUES (1, 'Alexsandro matias');
INSERT INTO `qacademico`.`aluno` (`idaluno`, `nome`) VALUES (2, 'Josiane maria');
INSERT INTO `qacademico`.`aluno` (`idaluno`, `nome`) VALUES (3, 'eliane maria');
INSERT INTO `qacademico`.`aluno` (`idaluno`, `nome`) VALUES (4, 'Priscila matias');
INSERT INTO `qacademico`.`aluno` (`idaluno`, `nome`) VALUES (5, 'raul seixas');
INSERT INTO `qacademico`.`aluno` (`idaluno`, `nome`) VALUES (6, 'chico buarque');
INSERT INTO `qacademico`.`aluno` (`idaluno`, `nome`) VALUES (7, 'chico cesar');
INSERT INTO `qacademico`.`aluno` (`idaluno`, `nome`) VALUES (8, 'Josiane santos');
INSERT INTO `qacademico`.`aluno` (`idaluno`, `nome`) VALUES (9, 'jonh lima');
INSERT INTO `qacademico`.`aluno` (`idaluno`, `nome`) VALUES (10, 'gideone santos');
INSERT INTO `qacademico`.`aluno` (`idaluno`, `nome`) VALUES (11, 'maurilo santana');
INSERT INTO `qacademico`.`aluno` (`idaluno`, `nome`) VALUES (12, 'mauricio moura');
INSERT INTO `qacademico`.`aluno` (`idaluno`, `nome`) VALUES (13, 'jose Silva');
INSERT INTO `qacademico`.`aluno` (`idaluno`, `nome`) VALUES (14, 'jose santos');
INSERT INTO `qacademico`.`aluno` (`idaluno`, `nome`) VALUES (15, 'maria eduarda');
INSERT INTO `qacademico`.`aluno` (`idaluno`, `nome`) VALUES (16, 'maria Silva');
INSERT INTO `qacademico`.`aluno` (`idaluno`, `nome`) VALUES (17, 'Matheus neves');
INSERT INTO `qacademico`.`aluno` (`idaluno`, `nome`) VALUES (18, 'paulo roberto');
INSERT INTO `qacademico`.`aluno` (`idaluno`, `nome`) VALUES (19, 'girlane coelho');
INSERT INTO `qacademico`.`aluno` (`idaluno`, `nome`) VALUES (20, 'helio da Silva');
INSERT INTO `qacademico`.`aluno` (`idaluno`, `nome`) VALUES (21, 'horácio de castro');




-- -----------------------------------------------------
-- Data for table `qacademico`.`professor`
-- -----------------------------------------------------
  
USE `qacademico`;
INSERT INTO `qacademico`.`professor` (`idprofessor`, `nome`) VALUES (1, 'marco domingues');
INSERT INTO `qacademico`.`professor` (`idprofessor`, `nome`) VALUES (2, 'rafael roque');
INSERT INTO `qacademico`.`professor` (`idprofessor`, `nome`) VALUES (3, 'anderson moreira');
INSERT INTO `qacademico`.`professor` (`idprofessor`, `nome`) VALUES (4, 'paulo abadie');
INSERT INTO `qacademico`.`professor` (`idprofessor`, `nome`) VALUES (5, 'paulo goncalves');
INSERT INTO `qacademico`.`professor` (`idprofessor`, `nome`) VALUES (6, 'renata freire');
INSERT INTO `qacademico`.`professor` (`idprofessor`, `nome`) VALUES (7, 'renata dantas');
INSERT INTO `qacademico`.`professor` (`idprofessor`, `nome`) VALUES (8, 'ainda ferreira');
INSERT INTO `qacademico`.`professor` (`idprofessor`, `nome`) VALUES (9, 'marcos andré ');
INSERT INTO `qacademico`.`professor` (`idprofessor`, `nome`) VALUES (10, 'Heloísa rodrigues');
INSERT INTO `qacademico`.`professor` (`idprofessor`, `nome`) VALUES (11, 'Fernanda Tenónio');


USE `qacademico`;
INSERT INTO `qacademico`.`disciplina` (`iddisciplina`, `nome`, `cargahoraria`) VALUES (1, 'Estrutura de Dados ', 100);
INSERT INTO `qacademico`.`disciplina` (`iddisciplina`, `nome`, `cargahoraria`) VALUES (2, 'Banco de Dados 1 ', 60);
INSERT INTO `qacademico`.`disciplina` (`iddisciplina`, `nome`, `cargahoraria`) VALUES (3, 'Banco de Dados 2 ', 40);
INSERT INTO `qacademico`.`disciplina` (`iddisciplina`, `nome`, `cargahoraria`) VALUES (4, 'Arquitetura de Computadores ', 50);
INSERT INTO `qacademico`.`disciplina` (`iddisciplina`, `nome`, `cargahoraria`) VALUES (5, 'Sistema Operacionais ', 50);
INSERT INTO `qacademico`.`disciplina` (`iddisciplina`, `nome`, `cargahoraria`) VALUES (6, 'Português Instrumental ', 30);
INSERT INTO `qacademico`.`disciplina` (`iddisciplina`, `nome`, `cargahoraria`) VALUES (7, 'Inglês Instrumental', 35);
INSERT INTO `qacademico`.`disciplina` (`iddisciplina`, `nome`, `cargahoraria`) VALUES (8, 'Programação Orientada a Objetos ', 120);
INSERT INTO `qacademico`.`disciplina` (`iddisciplina`, `nome`, `cargahoraria`) VALUES (9, 'Desenvolvimento Web 1 ', 80);
INSERT INTO `qacademico`.`disciplina` (`iddisciplina`, `nome`, `cargahoraria`) VALUES (10, 'Desenvolvimento Web 2 ', 90);
INSERT INTO `qacademico`.`disciplina` (`iddisciplina`, `nome`, `cargahoraria`) VALUES (11, 'Cálculo 1 ', 120);
INSERT INTO `qacademico`.`disciplina` (`iddisciplina`, `nome`, `cargahoraria`) VALUES (12, 'Cálculo 2 ', 80);
INSERT INTO `qacademico`.`disciplina` (`iddisciplina`, `nome`, `cargahoraria`) VALUES (13, 'Cálculo 3 ', 60);
INSERT INTO `qacademico`.`disciplina` (`iddisciplina`, `nome`, `cargahoraria`) VALUES (14, 'Redes 1 ', 60);
INSERT INTO `qacademico`.`disciplina` (`iddisciplina`, `nome`, `cargahoraria`) VALUES (15, 'Redes 2 ', 50);
INSERT INTO `qacademico`.`disciplina` (`iddisciplina`, `nome`, `cargahoraria`) VALUES (16, 'Sistemas Embarcados ', 45);
INSERT INTO `qacademico`.`disciplina` (`iddisciplina`, `nome`, `cargahoraria`) VALUES (17, 'LIBRAS ', 45);
INSERT INTO `qacademico`.`disciplina` (`iddisciplina`, `nome`, `cargahoraria`) VALUES (18, 'Introdução à Programação ', 90);
INSERT INTO `qacademico`.`disciplina` (`iddisciplina`, `nome`, `cargahoraria`) VALUES (19, 'Ética Profissional ', 30);
INSERT INTO `qacademico`.`disciplina` (`iddisciplina`, `nome`, `cargahoraria`) VALUES (20, 'Cálculo Numérico ', 65);
INSERT INTO `qacademico`.`disciplina` (`iddisciplina`, `nome`, `cargahoraria`) VALUES (21, 'Geometria Analítica ', 70);

 


-- -----------------------------------------------------
-- Data for table `qacademico`.`curso`
-- -----------------------------------------------------
  
USE `qacademico`;
INSERT INTO `qacademico`.`curso` (`idcurso`, `nome`) VALUES (1, 'Tecnólogo análise de desenvolvimento de sistemas');
INSERT INTO `qacademico`.`curso` (`idcurso`, `nome`) VALUES (2, 'Data Science');
INSERT INTO `qacademico`.`curso` (`idcurso`, `nome`) VALUES (3, 'tecnólogo em redes');
INSERT INTO `qacademico`.`curso` (`idcurso`, `nome`) VALUES (4, 'manutenção de microcomputadores');
INSERT INTO `qacademico`.`curso` (`idcurso`, `nome`) VALUES (5, 'bacharelado em sistemas de informação ');
INSERT INTO `qacademico`.`curso` (`idcurso`, `nome`) VALUES (6, 'engenharia de software ');
INSERT INTO `qacademico`.`curso` (`idcurso`, `nome`) VALUES (7, 'engenharia da computação ');

 


-- -----------------------------------------------------
-- Data for table `qacademico`.`dependente`
-- -----------------------------------------------------
  
USE `qacademico`;
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (1, 'eduardo bolsonaro', 1);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (2, 'carlos bolsonaro', 1);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (3, 'aecio neves', 3);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (4, 'Jean Willis', 10);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (5, 'luiz junior', 3);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (6, 'Sasha meneguel', 1);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (7, 'wanessa camargo', 2);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (8, 'pedro mariano', 2);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (9, 'maria rita', 7);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (10, 'jose jorge', 8);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (11, 'pedro mariano', 9);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (12, 'maria conceicao', 2);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (13, 'sebastiao carlos', 3);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (14, 'welligton santos', 3);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (15, 'mayssa Silva', 8);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (16, 'daiana santos', 9);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (17, 'enzo henrique', 5);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (18, 'tiago velame', 3);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (19, 'flavio gueiros', 4);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (20, 'Myrelly karoline', 4);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (21, 'emmlly Silva', 9);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (22, 'valeria amaral', 6);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (23, 'vanessa amaral', 6);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (24, 'vitor tesla', 4);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (25, 'marcio matos', 5);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (26, 'rafael bittencourt', 5);
INSERT INTO `qacademico`.`dependente` (`id_dependente`, `nome`, `id_professor`) VALUES (27, 'marcelo neves', 10);

 


-- -----------------------------------------------------
-- Data for table `qacademico`.`avaliacao`
-- -----------------------------------------------------
  
USE `qacademico`;
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (1, '1', '2019-09-06', 8, 0, 8);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (2, '2', '2019-05-29', 10, 0, 2);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (3, '1', '2019-02-18', 8, 1, 7);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (4, '2', '2018-11-10', 10, 1, 3);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (5, '1', '2018-08-02', 10, 1, 8);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (6, '2', '2018-04-24', 7, 2, 2);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (7, '1', '2018-01-14', 10, 1, 5);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (8, '2', '2017-10-06', 9, 1, 5);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (9, '1', '2017-06-28', 7, 2, 8);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (10, '2', '2017-03-20', 6, 2, 2);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (11, '1', '2016-12-10', 10, 0, 10);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (12, '2', '2016-09-01', 8, 3, 5);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (13, '1', '2016-05-24', 7, 2, 5);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (14, '2', '2016-02-14', 6, 2, 6);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (15, '1', '2015-11-06', 5, 3, 4);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (16, '2', '2015-07-29', 9, 1, 7);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (17, '1', '2015-04-20', 9, 2, 3);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (18, '2', '2015-01-10', 9, 2, 9);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (19, '1', '2014-10-02', 9, 2, 1);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (20, '2', '2014-06-24', 10, 3, 7);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (21, '1', '2014-03-16', 10, 2, 3);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (22, '2', '2013-12-06', 7, 2, 6);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (23, '1', '2013-08-28', 8, 3, 6);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (24, '2', '2013-05-20', 8, 3, 7);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (25, '1', '2013-02-09', 8, 3, 8);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (26, '2', '2012-11-01', 9, 1, 4);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (27, '1', '2012-07-24', 9, 3, 9);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (28, '2', '2012-04-15', 7, 3, 7);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (29, '1', '2012-01-06', 5, 2, 3);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (30, '2', '2011-09-28', 4, 2, 2);
INSERT INTO `qacademico`.`avaliacao` (`idavaliacao`, `unidade`, `data_avaliacao`, `nota_maxima`, `nota_minima`, `peso`) VALUES (31, '1', '2011-06-20', 8, 3, 10);

 


-- -----------------------------------------------------
-- Data for table `qacademico`.`nota_avaliacao`
-- -----------------------------------------------------
  
USE `qacademico`;
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (2, 8, 21);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (2, 10, 2);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (2, 8, 3);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (4, 10, 3);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (4, 10, 4);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (4, 7, 5);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (3, 10, 7);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (3, 9, 4);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (3, 7, 11);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (3, 6, 6);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (4, 10, 14);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (4, 8, 6);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (4, 7, 7);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (2, 6, 18);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (2, 5, 19);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (3, 9, 2);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (3, 9, 3);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (6, 9, 9);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (7, 9, 6);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (7, 10, 7);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (7, 10, 10);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (5, 7, 4);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (5, 8, 5);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (5, 8, 8);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (6, 8, 5);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (6, 9, 6);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (1, 9, 1);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (1, 7, 2);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (1, 5, 3);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (1, 4, 4);
INSERT INTO `qacademico`.`nota_avaliacao` (`idavaliacao`, `nota`, `idaluno`) VALUES (2, 8, 1);

 

