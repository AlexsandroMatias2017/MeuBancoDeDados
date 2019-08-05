CREATE DATABASE  IF NOT EXISTS `ProjetoBD` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ProjetoBD`;
-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: ProjetoBD
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
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
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `idcurso` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`idcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
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
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disciplina` (
  `iddisciplina` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `cargahoraria` int(11) DEFAULT NULL,
  `fkprofessor` int(10) DEFAULT NULL,
  PRIMARY KEY (`iddisciplina`),
  UNIQUE KEY `nome_UNIQUE` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,'Estrutura de Dados',65,NULL),(2,'Banco de Dados 1',60,NULL),(3,'Banco de Dados 2',50,NULL),(4,'Arquitetura de Computadores',40,NULL),(5,'Sistema Operacionais',45,NULL),(6,'Português Instrumental',30,NULL),(7,'Inglês Instrumental',25,NULL),(8,'Programação Orientada a Objetos',90,NULL),(9,'Desenvolvimento Web 1',70,NULL),(10,'Desenvolvimento Web 2',70,NULL),(11,'Cálculo 1',120,NULL),(12,'Cálculo 2',100,NULL),(13,'Cálculo 3',85,NULL),(14,'Redes 1',65,NULL),(15,'Redes 2',55,NULL),(16,'Sistemas Embarcados',45,NULL),(17,'LIBRAS',30,NULL),(18,'Introdução à Programação',120,NULL),(19,'Ética Profissional',25,NULL),(20,'Cálculo Numérico',60,NULL),(21,'Geometria Analítica',NULL,NULL);
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `medias`
--

DROP TABLE IF EXISTS `medias`;
/*!50001 DROP VIEW IF EXISTS `medias`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `medias` AS SELECT 
 1 AS `a`,
 1 AS `d`,
 1 AS `nota1`,
 1 AS `nota2`,
 1 AS `media`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `nota`
--

DROP TABLE IF EXISTS `nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota` (
  `nota1` float(2,1) NOT NULL,
  `nota2` float(2,1) NOT NULL,
  `idnota` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fkdisciplina` int(10) NOT NULL,
  `fkaluno` int(10) NOT NULL,
  PRIMARY KEY (`idnota`),
  KEY `fk_nota_1_idx` (`fkdisciplina`),
  KEY `fk_nota_2_idx` (`fkaluno`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota`
--

LOCK TABLES `nota` WRITE;
/*!40000 ALTER TABLE `nota` DISABLE KEYS */;
INSERT INTO `nota` VALUES (9.0,8.0,2,4,4),(8.5,6.0,3,1,1),(3.0,7.0,4,3,1),(5.0,5.5,5,3,5),(6.0,9.9,6,3,6),(6.0,4.9,7,4,10),(1.0,6.0,8,4,12),(9.9,7.0,9,5,20),(7.0,8.0,10,9,17),(8.0,9.0,11,7,7),(9.0,1.0,12,12,7),(5.0,2.0,13,11,8),(6.0,7.0,14,10,10),(4.0,8.5,15,10,11),(8.0,7.8,16,10,8),(2.8,7.7,17,10,4),(4.9,8.8,18,8,3),(5.5,9.9,19,9,13),(7.0,7.0,20,1,7),(6.0,7.0,22,15,10),(8.5,5.5,23,2,1);
/*!40000 ALTER TABLE `nota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professor` (
  `idprofessor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idprofessor`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'Anderson Moreira'),(2,'Paulo Abadie'),(3,'Marcos André'),(4,'Renata Dantas'),(5,'Aida Ferreira'),(6,'Renata Freire'),(7,'Rafael Roque'),(8,'Marco Domingues'),(9,'Paulo Gonçalves'),(10,'Fernanda Celci'),(11,'Uribatan Ramos');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turma` (
  `idturma` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fkdisciplina` int(10) unsigned NOT NULL,
  `fkaluno` int(10) unsigned NOT NULL,
  `fkprofessor` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idturma`),
  KEY `fkdisciplina` (`fkdisciplina`),
  KEY `fkaluno` (`fkaluno`),
  KEY `fkprofessor` (`fkprofessor`),
  CONSTRAINT `fk_turma_1` FOREIGN KEY (`fkprofessor`) REFERENCES `professor` (`idprofessor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkaluno` FOREIGN KEY (`fkaluno`) REFERENCES `aluno` (`idaluno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkdisciplina` FOREIGN KEY (`fkdisciplina`) REFERENCES `disciplina` (`iddisciplina`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (1,1,1,1),(21,2,2,2),(22,3,3,3),(23,1,2,3),(24,4,5,6),(25,4,4,4),(26,5,6,7),(27,7,8,9),(28,9,10,9);
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `medias`
--

/*!50001 DROP VIEW IF EXISTS `medias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`matias`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `medias` AS select `aluno`.`nome` AS `a`,`disciplina`.`nome` AS `d`,`nota`.`nota1` AS `nota1`,`nota`.`nota2` AS `nota2`,((`nota`.`nota1` + `nota`.`nota2`) / 2) AS `media` from ((`nota` join `disciplina` on((`disciplina`.`iddisciplina` = `nota`.`fkdisciplina`))) join `aluno` on((`aluno`.`idaluno` = `nota`.`fkaluno`))) order by ((`nota`.`nota1` + `nota`.`nota2`) / 2) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-12  9:22:24
