-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: qacademico
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aluno` (
  `idaluno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  PRIMARY KEY (`idaluno`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'Alexsandro Matias '),(2,'Paulo Almeida'),(3,'Erivelton Ramos'),(4,'Giovanni'),(5,'Jair Bolsonaro'),(6,'Fernando Haddad'),(7,'Gugu Liberato'),(8,'Fausto Silva'),(9,'Dilma Rousseff'),(10,'Geraldo Alckimin'),(11,'Fernando Henrique Cardoso '),(12,'Albert Einstein'),(13,'Adolf Hitler'),(14,'Luciana Ximenes'),(15,'Fátima Bernades'),(16,'Kid Vinil'),(17,'Casé Pessanha'),(18,'Renato Aragão'),(19,'Sérgio Moro'),(20,'Luiz Inácio'),(21,'Sérgio Malandro'),(22,'Angélica'),(23,'Luciano Hulk'),(24,'Lázaro Ramos'),(25,'Thaís Araújo');
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aluno_avaliacao`
--

DROP TABLE IF EXISTS `aluno_avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aluno_avaliacao` (
  `aluno_idaluno` int(10) unsigned NOT NULL,
  `avaliacao_idavaliacao` int(11) NOT NULL,
  PRIMARY KEY (`aluno_idaluno`,`avaliacao_idavaliacao`),
  KEY `fk_aluno_has_avaliacao_avaliacao1_idx` (`avaliacao_idavaliacao`),
  KEY `fk_aluno_has_avaliacao_aluno1_idx` (`aluno_idaluno`),
  CONSTRAINT `fk_aluno_has_avaliacao_aluno1` FOREIGN KEY (`aluno_idaluno`) REFERENCES `aluno` (`idaluno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_aluno_has_avaliacao_avaliacao1` FOREIGN KEY (`avaliacao_idavaliacao`) REFERENCES `avaliacao` (`idavaliacao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_avaliacao`
--

LOCK TABLES `aluno_avaliacao` WRITE;
/*!40000 ALTER TABLE `aluno_avaliacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `aluno_avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avaliacao`
--

DROP TABLE IF EXISTS `avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avaliacao` (
  `idavaliacao` int(11) NOT NULL AUTO_INCREMENT,
  `unidade` varchar(10) NOT NULL,
  `data_avaliacao` datetime NOT NULL,
  `nota_maxima` decimal(4,2) NOT NULL,
  `nota_minima` decimal(4,2) NOT NULL,
  `peso` decimal(3,2) NOT NULL,
  PRIMARY KEY (`idavaliacao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacao`
--

LOCK TABLES `avaliacao` WRITE;
/*!40000 ALTER TABLE `avaliacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avaliacao_diario`
--

DROP TABLE IF EXISTS `avaliacao_diario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avaliacao_diario` (
  `avaliacao_idavaliacao` int(11) NOT NULL,
  `iddiario` int(11) NOT NULL,
  PRIMARY KEY (`avaliacao_idavaliacao`,`iddiario`),
  KEY `fk_avaliacao_has_diario_diario1_idx` (`iddiario`),
  KEY `fk_avaliacao_has_diario_avaliacao1_idx` (`avaliacao_idavaliacao`),
  CONSTRAINT `fk_avaliacao_has_diario_avaliacao1` FOREIGN KEY (`avaliacao_idavaliacao`) REFERENCES `avaliacao` (`idavaliacao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_avaliacao_has_diario_diario1` FOREIGN KEY (`iddiario`) REFERENCES `diario` (`iddiario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacao_diario`
--

LOCK TABLES `avaliacao_diario` WRITE;
/*!40000 ALTER TABLE `avaliacao_diario` DISABLE KEYS */;
/*!40000 ALTER TABLE `avaliacao_diario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `idcurso` int(10) unsigned NOT NULL,
  `nome` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idcurso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (2,'Ciência de Dados'),(15,'Tecnólogo em Redes'),(16,'Tecnólogo em Análise em Desenvolvimento de Sistemas'),(17,'Engenharia da Computação'),(18,'Licenciatura em Informática'),(19,'Licenciatura em Matemática'),(20,'Ciência de Dados'),(21,'Tecnólogo em Redes'),(22,'Tecnólogo em Análise em Desenvolvimento de Sistemas'),(23,'Engenharia da Computação'),(24,'Licenciatura em Informática'),(25,'Licenciatura em Matemática'),(26,'Ciência de Dados'),(27,'Engenharia da Automação'),(28,'Bacharelado em Matemática');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependente`
--

DROP TABLE IF EXISTS `dependente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dependente` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `idprofessor` int(11) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`,`idprofessor`),
  KEY `fk_dependente_professor1_idx` (`idprofessor`),
  CONSTRAINT `fk_dependente_professor1` FOREIGN KEY (`idprofessor`) REFERENCES `professor` (`idprofessor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependente`
--

LOCK TABLES `dependente` WRITE;
/*!40000 ALTER TABLE `dependente` DISABLE KEYS */;
/*!40000 ALTER TABLE `dependente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diario`
--

DROP TABLE IF EXISTS `diario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diario` (
  `iddiario` int(11) NOT NULL,
  `idnota` int(11) DEFAULT NULL,
  `idaluno` int(11) DEFAULT NULL,
  PRIMARY KEY (`iddiario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diario`
--

LOCK TABLES `diario` WRITE;
/*!40000 ALTER TABLE `diario` DISABLE KEYS */;
/*!40000 ALTER TABLE `diario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diario_curso`
--

DROP TABLE IF EXISTS `diario_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diario_curso` (
  `diario_iddiario` int(11) NOT NULL,
  `curso_idcurso` int(10) unsigned NOT NULL,
  PRIMARY KEY (`diario_iddiario`,`curso_idcurso`),
  KEY `fk_diario_has_curso_curso1_idx` (`curso_idcurso`),
  KEY `fk_diario_has_curso_diario1_idx` (`diario_iddiario`),
  CONSTRAINT `fk_diario_has_curso_curso1` FOREIGN KEY (`curso_idcurso`) REFERENCES `curso` (`idcurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_diario_has_curso_diario1` FOREIGN KEY (`diario_iddiario`) REFERENCES `diario` (`iddiario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diario_curso`
--

LOCK TABLES `diario_curso` WRITE;
/*!40000 ALTER TABLE `diario_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `diario_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diario_professor`
--

DROP TABLE IF EXISTS `diario_professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diario_professor` (
  `diario_iddiario` int(11) NOT NULL,
  `professor_idprofessor` int(11) NOT NULL,
  `funcao` varchar(20) NOT NULL,
  PRIMARY KEY (`diario_iddiario`,`professor_idprofessor`),
  KEY `fk_diario_has_professor_professor2_idx` (`professor_idprofessor`),
  KEY `fk_diario_has_professor_diario1_idx` (`diario_iddiario`),
  CONSTRAINT `fk_diario_has_professor_diario1` FOREIGN KEY (`diario_iddiario`) REFERENCES `diario` (`iddiario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_diario_has_professor_professor2` FOREIGN KEY (`professor_idprofessor`) REFERENCES `professor` (`idprofessor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diario_professor`
--

LOCK TABLES `diario_professor` WRITE;
/*!40000 ALTER TABLE `diario_professor` DISABLE KEYS */;
/*!40000 ALTER TABLE `diario_professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disciplina` (
  `iddisciplina` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cargahoraria` int(11) DEFAULT NULL,
  PRIMARY KEY (`iddisciplina`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,'Estrutura de Dados',65),(2,'Banco de Dados 1',60),(3,'Banco de Dados 2',50),(4,'Arquitetura de Computadores',40),(5,'Sistema Operacionais',45),(6,'Português Instrumental',30),(7,'Inglês Instrumental',25),(8,'Programação Orientada a Objetos',90),(9,'Desenvolvimento Web 1',70),(10,'Desenvolvimento Web 2',70),(11,'Cálculo 1',120),(12,'Cálculo 2',100),(13,'Cálculo 3',85),(14,'Redes 1',65),(15,'Redes 2',55),(16,'Sistemas Embarcados',45),(17,'LIBRAS',30),(18,'Introdução à Programação',120),(19,'Ética Profissional',25),(20,'Cálculo Numérico',60),(21,'Geometria Analítica',60);
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina_diario`
--

DROP TABLE IF EXISTS `disciplina_diario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disciplina_diario` (
  `disciplina_iddisciplina` int(10) unsigned NOT NULL,
  `diario_iddiario` int(11) NOT NULL,
  PRIMARY KEY (`disciplina_iddisciplina`,`diario_iddiario`),
  KEY `fk_disciplina_has_diario_diario1_idx` (`diario_iddiario`),
  KEY `fk_disciplina_has_diario_disciplina1_idx` (`disciplina_iddisciplina`),
  CONSTRAINT `fk_disciplina_has_diario_diario1` FOREIGN KEY (`diario_iddiario`) REFERENCES `diario` (`iddiario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_disciplina_has_diario_disciplina1` FOREIGN KEY (`disciplina_iddisciplina`) REFERENCES `disciplina` (`iddisciplina`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina_diario`
--

LOCK TABLES `disciplina_diario` WRITE;
/*!40000 ALTER TABLE `disciplina_diario` DISABLE KEYS */;
/*!40000 ALTER TABLE `disciplina_diario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota`
--

DROP TABLE IF EXISTS `nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota` (
  `nota1` float NOT NULL,
  `nota2` float NOT NULL,
  `media` float DEFAULT NULL,
  `idnota` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idnota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota`
--

LOCK TABLES `nota` WRITE;
/*!40000 ALTER TABLE `nota` DISABLE KEYS */;
/*!40000 ALTER TABLE `nota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota_avaliacao`
--

DROP TABLE IF EXISTS `nota_avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota_avaliacao` (
  `nota_idnota` int(10) unsigned NOT NULL,
  `idavaliacao` int(11) NOT NULL,
  `somatorio_notas` decimal(2,2) NOT NULL,
  PRIMARY KEY (`nota_idnota`,`idavaliacao`),
  KEY `fk_nota_has_avaliacao_avaliacao1_idx` (`idavaliacao`),
  KEY `fk_nota_has_avaliacao_nota1_idx` (`nota_idnota`),
  CONSTRAINT `fk_nota_has_avaliacao_avaliacao1` FOREIGN KEY (`idavaliacao`) REFERENCES `avaliacao` (`idavaliacao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_nota_has_avaliacao_nota1` FOREIGN KEY (`nota_idnota`) REFERENCES `nota` (`idnota`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_avaliacao`
--

LOCK TABLES `nota_avaliacao` WRITE;
/*!40000 ALTER TABLE `nota_avaliacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `nota_avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professor` (
  `idprofessor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idprofessor`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'Anderson Moreira'),(2,'Paulo Abadie'),(3,'Marcos André'),(4,'Renata Dantas'),(5,'Aida Ferreira'),(6,'Renata Freire'),(7,'Rafael Roque'),(8,'Marco Domingues'),(9,'Paulo Gonçalves'),(10,'Fernanda Celci'),(11,'Uribatan Ramos');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-03 12:35:23
