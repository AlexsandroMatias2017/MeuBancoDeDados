-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: roque
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
CREATE Database `roque`;
USE `roque`;
DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aluno` (
  `cod_aluno` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `matricula` varchar(45) NOT NULL,
  PRIMARY KEY (`cod_aluno`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avaliacao`
--

DROP TABLE IF EXISTS `avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avaliacao` (
  `idavaliacao` int(11) NOT NULL AUTO_INCREMENT,
  `diario` int(11) NOT NULL,
  `etapa` varchar(40) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `peso` decimal(4,2) NOT NULL DEFAULT '1.00',
  `nota_maxima` decimal(4,2) NOT NULL,
  `data_avaliacao` date NOT NULL,
  PRIMARY KEY (`idavaliacao`,`diario`),
  KEY `fk_avaliacao_diario1_idx` (`diario`),
  CONSTRAINT `fk_avaliacao_diario1` FOREIGN KEY (`diario`) REFERENCES `diario` (`cod_diario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `componente_curricular`
--

DROP TABLE IF EXISTS `componente_curricular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `componente_curricular` (
  `cod_cc` int(11) NOT NULL AUTO_INCREMENT,
  `periodo` varchar(10) NOT NULL,
  `sigla` varchar(20) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cargahoraria` int(11) NOT NULL,
  `creditos` int(11) NOT NULL,
  `pre_req` int(11) DEFAULT NULL,
  `co_req` int(11) DEFAULT NULL,
  `matriz` int(11) NOT NULL,
  PRIMARY KEY (`cod_cc`,`matriz`),
  KEY `fk_matriz_idx` (`matriz`),
  KEY `fk_componente_curricular_componente_curricular1_idx` (`pre_req`),
  KEY `fk_componente_curricular_1_idx` (`co_req`),
  CONSTRAINT `fk_componente_cc_prerequisito` FOREIGN KEY (`pre_req`) REFERENCES `componente_curricular` (`cod_cc`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_componente_corequisito` FOREIGN KEY (`co_req`) REFERENCES `componente_curricular` (`cod_cc`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_componente_matriz_codigo` FOREIGN KEY (`matriz`) REFERENCES `matriz_curricular` (`cod_matriz`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `cod_curso` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`cod_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dependente`
--

DROP TABLE IF EXISTS `dependente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dependente` (
  `iddependente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `professor_` int(11) NOT NULL,
  PRIMARY KEY (`iddependente`,`professor_`),
  KEY `fk_dependente_professor1_idx` (`professor_`),
  CONSTRAINT `fk_dependente_professor1` FOREIGN KEY (`professor_`) REFERENCES `professor` (`idprofessor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `diario`
--

DROP TABLE IF EXISTS `diario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diario` (
  `cod_diario` int(11) NOT NULL,
  `componente` int(11) NOT NULL,
  `turno` varchar(40) NOT NULL DEFAULT 'noite',
  `professor_principal` int(11) NOT NULL,
  PRIMARY KEY (`cod_diario`,`componente`,`professor_principal`),
  KEY `fk_diario_disciplina1_idx` (`componente`),
  KEY `fk_diario_professor_id_idx` (`professor_principal`),
  CONSTRAINT `fk_diario_componente_codcc` FOREIGN KEY (`componente`) REFERENCES `componente_curricular` (`cod_cc`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_diario_professor_id` FOREIGN KEY (`professor_principal`) REFERENCES `professor` (`idprofessor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `matriculas_componente`
--

DROP TABLE IF EXISTS `matriculas_componente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matriculas_componente` (
  `aluno` int(11) NOT NULL,
  `turma` int(11) NOT NULL,
  PRIMARY KEY (`aluno`,`turma`),
  KEY `fk_matriculas_turma_codturma_idx` (`turma`),
  CONSTRAINT `fk_matriculas_alunos_idaluno` FOREIGN KEY (`aluno`) REFERENCES `aluno` (`cod_aluno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_matriculas_turma_codturma` FOREIGN KEY (`turma`) REFERENCES `turma` (`cod_turma`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `matriz_curricular`
--

DROP TABLE IF EXISTS `matriz_curricular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matriz_curricular` (
  `cod_matriz` int(11) NOT NULL AUTO_INCREMENT,
  `curso` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data` date NOT NULL,
  `situacao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cod_matriz`,`curso`),
  KEY `fk_matriz_idx` (`curso`),
  CONSTRAINT `fk_matriz_curso_codigo` FOREIGN KEY (`curso`) REFERENCES `curso` (`cod_curso`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nota_avaliacao`
--

DROP TABLE IF EXISTS `nota_avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota_avaliacao` (
  `avaliacao` int(11) NOT NULL,
  `aluno` int(11) NOT NULL,
  `nota` decimal(4,2) NOT NULL,
  `observação` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`avaliacao`,`aluno`),
  KEY `fk_nota_has_avaliacao_avaliacao1_idx` (`avaliacao`),
  KEY `fk_nota_avaliacao_aluno1_idx` (`aluno`),
  CONSTRAINT `fk_nota_avaliacao_aluno1` FOREIGN KEY (`aluno`) REFERENCES `aluno` (`cod_aluno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_nota_has_avaliacao_avaliacao1` FOREIGN KEY (`avaliacao`) REFERENCES `avaliacao` (`idavaliacao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professor` (
  `idprofessor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `titulo` varchar(40) NOT NULL,
  `siape` int(11) DEFAULT NULL,
  PRIMARY KEY (`idprofessor`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turma` (
  `cod_turma` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `diario` int(11) NOT NULL,
  PRIMARY KEY (`cod_turma`,`diario`),
  KEY `fk_turma_diario_cod_idx` (`diario`),
  CONSTRAINT `fk_turma_diario_cod` FOREIGN KEY (`diario`) REFERENCES `diario` (`cod_diario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-03  9:34:06
