


-- -----------------------------------------------------
-- Table `qacademico`.`aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qacademico`.`aluno` (
  `idaluno` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(30) NOT NULL,
  `telefone` VARCHAR(15) NULL,
  PRIMARY KEY (`idaluno`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qacademico`.`nota`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qacademico`.`nota` (
  `nota1` FLOAT NOT NULL,
  `nota2` FLOAT NOT NULL,
  `media` FLOAT NULL,
  `idnota` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idnota`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qacademico`.`professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qacademico`.`professor` (
  `idprofessor` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(30) NULL,
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
-- Table `qacademico`.`dependente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qacademico`.`dependente` (
  `id` INT NOT NULL,
  `nome` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `idprofessor` INT NOT NULL,
  `telefone` VARCHAR(15) NULL,
  PRIMARY KEY (`id`, `idprofessor`),
  INDEX `fk_dependente_professor1_idx` (`idprofessor` ASC),
  CONSTRAINT `fk_dependente_professor1`
    FOREIGN KEY (`idprofessor`)
    REFERENCES `qacademico`.`professor` (`idprofessor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `qacademico`.`diario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qacademico`.`diario` (
  `iddiario` INT NOT NULL,
  `idnota` INT NULL,
  `idaluno` INT NULL,
  PRIMARY KEY (`iddiario`))
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
  `funcao` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`diario_iddiario`, `professor_idprofessor`),
  INDEX `fk_diario_has_professor_professor2_idx` (`professor_idprofessor` ASC),
  INDEX `fk_diario_has_professor_diario1_idx` (`diario_iddiario` ASC),
  CONSTRAINT `fk_diario_has_professor_diario1`
    FOREIGN KEY (`diario_iddiario`)
    REFERENCES `qacademico`.`diario` (`iddiario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_diario_has_professor_professor2`
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
  `avaliacao_idavaliacao` INT NOT NULL,
  `iddiario` INT NOT NULL,
  PRIMARY KEY (`avaliacao_idavaliacao`, `iddiario`),
  INDEX `fk_avaliacao_has_diario_diario1_idx` (`iddiario` ASC),
  INDEX `fk_avaliacao_has_diario_avaliacao1_idx` (`avaliacao_idavaliacao` ASC),
  CONSTRAINT `fk_avaliacao_has_diario_avaliacao1`
    FOREIGN KEY (`avaliacao_idavaliacao`)
    REFERENCES `qacademico`.`avaliacao` (`idavaliacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_avaliacao_has_diario_diario1`
    FOREIGN KEY (`iddiario`)
    REFERENCES `qacademico`.`diario` (`iddiario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qacademico`.`diario_curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qacademico`.`diario_curso` (
  `diario_iddiario` INT NOT NULL,
  `curso_idcurso` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`diario_iddiario`, `curso_idcurso`),
  INDEX `fk_diario_has_curso_curso1_idx` (`curso_idcurso` ASC),
  INDEX `fk_diario_has_curso_diario1_idx` (`diario_iddiario` ASC),
  CONSTRAINT `fk_diario_has_curso_diario1`
    FOREIGN KEY (`diario_iddiario`)
    REFERENCES `qacademico`.`diario` (`iddiario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_diario_has_curso_curso1`
    FOREIGN KEY (`curso_idcurso`)
    REFERENCES `qacademico`.`curso` (`idcurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `qacademico`.`disciplina_diario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qacademico`.`disciplina_diario` (
  `disciplina_iddisciplina` INT UNSIGNED NOT NULL,
  `diario_iddiario` INT NOT NULL,
  PRIMARY KEY (`disciplina_iddisciplina`, `diario_iddiario`),
  INDEX `fk_disciplina_has_diario_diario1_idx` (`diario_iddiario` ASC),
  INDEX `fk_disciplina_has_diario_disciplina1_idx` (`disciplina_iddisciplina` ASC),
  CONSTRAINT `fk_disciplina_has_diario_disciplina1`
    FOREIGN KEY (`disciplina_iddisciplina`)
    REFERENCES `qacademico`.`disciplina` (`iddisciplina`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_disciplina_has_diario_diario1`
    FOREIGN KEY (`diario_iddiario`)
    REFERENCES `qacademico`.`diario` (`iddiario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qacademico`.`diario_professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qacademico`.`diario_professor` (
  `diario_iddiario` INT NOT NULL,
  `professor_idprofessor` INT NOT NULL,
  `funcao` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`diario_iddiario`, `professor_idprofessor`),
  INDEX `fk_diario_has_professor_professor2_idx` (`professor_idprofessor` ASC),
  INDEX `fk_diario_has_professor_diario1_idx` (`diario_iddiario` ASC),
  CONSTRAINT `fk_diario_has_professor_diario1`
    FOREIGN KEY (`diario_iddiario`)
    REFERENCES `qacademico`.`diario` (`iddiario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_diario_has_professor_professor2`
    FOREIGN KEY (`professor_idprofessor`)
    REFERENCES `qacademico`.`professor` (`idprofessor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `qacademico`.`aluno_avaliacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qacademico`.`aluno_avaliacao` (
  `aluno_idaluno` INT UNSIGNED NOT NULL,
  `avaliacao_idavaliacao` INT NOT NULL,
  PRIMARY KEY (`aluno_idaluno`, `avaliacao_idavaliacao`),
  INDEX `fk_aluno_has_avaliacao_avaliacao1_idx` (`avaliacao_idavaliacao` ASC),
  INDEX `fk_aluno_has_avaliacao_aluno1_idx` (`aluno_idaluno` ASC),
  CONSTRAINT `fk_aluno_has_avaliacao_aluno1`
    FOREIGN KEY (`aluno_idaluno`)
    REFERENCES `qacademico`.`aluno` (`idaluno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aluno_has_avaliacao_avaliacao1`
    FOREIGN KEY (`avaliacao_idavaliacao`)
    REFERENCES `qacademico`.`avaliacao` (`idavaliacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qacademico`.`nota_avaliacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qacademico`.`nota_avaliacao` (
  `nota_idnota` INT UNSIGNED NOT NULL,
  `idavaliacao` INT NOT NULL,
  `somatorio_notas` DECIMAL(2,2) NOT NULL,
  PRIMARY KEY (`nota_idnota`, `idavaliacao`),
  INDEX `fk_nota_has_avaliacao_avaliacao1_idx` (`idavaliacao` ASC),
  INDEX `fk_nota_has_avaliacao_nota1_idx` (`nota_idnota` ASC),
  CONSTRAINT `fk_nota_has_avaliacao_nota1`
    FOREIGN KEY (`nota_idnota`)
    REFERENCES `qacademico`.`nota` (`idnota`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_nota_has_avaliacao_avaliacao1`
    FOREIGN KEY (`idavaliacao`)
    REFERENCES `qacademico`.`avaliacao` (`idavaliacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `disciplina` VALUES (1,'Estrutura de Dados',65 ),(2,'Banco de Dados 1',60 ),(3,'Banco de Dados 2',50 ),(4,'Arquitetura de Computadores',40 ),(5,'Sistema Operacionais',45 ),(6,'Português Instrumental',30 ),(7,'Inglês Instrumental',25 ),(8,'Programação Orientada a Objetos',90 ),(9,'Desenvolvimento Web 1',70 ),(10,'Desenvolvimento Web 2',70 ),(11,'Cálculo 1',120 ),(12,'Cálculo 2',100 ),(13,'Cálculo 3',85 ),(14,'Redes 1',65 ),(15,'Redes 2',55 ),(16,'Sistemas Embarcados',45 ),(17,'LIBRAS',30 ),(18,'Introdução à Programação',120 ),(19,'Ética Profissional',25 ),(20,'Cálculo Numérico',60 ),(21,'Geometria Analítica',60);


INSERT INTO `curso` VALUES (2,'Ciência de Dados'),(15,'Tecnólogo em Redes'),(16,'Tecnólogo em Análise em Desenvolvimento de Sistemas'),(17,'Engenharia da Computação'),(18,'Licenciatura em Informática'),(19,'Licenciatura em Matemática'),(20,'Ciência de Dados'),(21,'Tecnólogo em Redes'),(22,'Tecnólogo em Análise em Desenvolvimento de Sistemas'),(23,'Engenharia da Computação'),(24,'Licenciatura em Informática'),(25,'Licenciatura em Matemática'),(26,'Ciência de Dados'),(27,'Engenharia da Automação'),(28,'Bacharelado em Matemática');

