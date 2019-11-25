-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: roque
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
  `cod_aluno` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `matricula` varchar(45) NOT NULL,
  PRIMARY KEY (`cod_aluno`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'Alexsandro matias','0046'),(2,'Josiane maria','0465'),(3,'eliane maria','1654'),(4,'Priscila matias','0047'),(5,'raul seixas','0466'),(6,'chico buarque','1655'),(7,'chico cesar','0048'),(8,'Josiane santos','0467'),(9,'jonh lima','1656'),(10,'gideone santos','0049'),(11,'maurilo santana','0468'),(12,'mauricio moura','1657'),(13,'jose Silva','0050'),(14,'jose santos','0469'),(15,'maria eduarda','1658'),(16,'maria Silva','0051'),(17,'Matheus neves','0470'),(18,'paulo roberto','1659'),(19,'girlane coelho','0052'),(20,'helio da Silva','0471');
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `avaliacao`
--

LOCK TABLES `avaliacao` WRITE;
/*!40000 ALTER TABLE `avaliacao` DISABLE KEYS */;
INSERT INTO `avaliacao` VALUES (1,7,'UND2','avaliação da disciplina Estrutura de Dados Referente à UND2',8.00,8.00,'2019-09-06'),(2,8,'UND1','avaliação da disciplina Banco de Dados 1 Referente à UND1',10.00,10.00,'2019-05-29'),(3,4,'UND2','avaliação da disciplina Banco de Dados 2 Referente à UND2',8.00,8.00,'2019-02-18'),(4,6,'EF','avaliação da disciplina Arquitetura de Computadores Referente à EF',10.00,10.00,'2018-11-10'),(5,9,'EF','avaliação da disciplina Sistema Operacionais Referente à EF',10.00,10.00,'2018-08-02'),(6,11,'UND1','avaliação da disciplina Português Instrumental Referente à UND1',7.00,7.00,'2018-04-24'),(7,1,'UND2','avaliação da disciplina Inglês Instrumental Referente à UND3',10.00,10.00,'2018-01-14'),(8,2,'UND2','avaliação da disciplina Programação Orientada a Objetos Referente à UND2',9.00,9.00,'2017-10-06'),(9,8,'UND2','avaliação da disciplina Desenvolvimento Web 1 Referente à UND3',7.00,7.00,'2017-06-28'),(10,9,'EF','avaliação da disciplina Desenvolvimento Web 2 Referente à EF',6.00,6.00,'2017-03-20'),(11,5,'EF','avaliação da disciplina Cálculo 1 Referente à EF',10.00,10.00,'2016-12-10'),(12,7,'UND2','avaliação da disciplina Cálculo 2 Referente à UND2',8.00,8.00,'2016-09-01'),(13,10,'UND2','avaliação da disciplina Cálculo 3 Referente à UND2',7.00,7.00,'2016-05-24'),(14,12,'UND1','avaliação da disciplina Redes 1 Referente à UND1',6.00,6.00,'2016-02-14'),(15,2,'UND2','avaliação da disciplina Redes 2 Referente à UND2',5.00,5.00,'2015-11-06'),(16,3,'EF','avaliação da disciplina Sistemas Embarcados Referente à EF',9.00,9.00,'2015-07-29'),(17,9,'EF','avaliação da disciplina LIBRAS Referente à EF',9.00,9.00,'2015-04-20'),(18,10,'UND2','avaliação da disciplina Introdução à Programação Referente à UND2',9.00,9.00,'2015-01-10'),(19,6,'UND1','avaliação da disciplina Ética Profissional Referente à UND1',9.00,9.00,'2014-10-02'),(20,8,'UND2','avaliação da disciplina Cálculo Numérico Referente à UND2',10.00,10.00,'2014-06-24'),(21,11,'UND1','avaliação da disciplina Geometria Analítica Referente à UND1',10.00,10.00,'2014-03-16'),(22,13,'EF','avaliação da disciplina Introdução à computaçãoReferente à EF',7.00,7.00,'2013-12-06'),(23,3,'EF','avaliação da disciplina interface homem-máquinaReferente à EF',8.00,8.00,'2013-08-28'),(24,4,'UND1','avaliação da disciplina design webReferente à UND1',8.00,8.00,'2013-05-20'),(25,10,'UND2','avaliação da disciplina matemática aplicadaReferente à UND2',8.00,8.00,'2013-02-09'),(26,11,'UND1','avaliação da disciplina matemática aplicadaReferente à UND1',9.00,9.00,'2012-11-01'),(27,7,'UND1','avaliação da disciplina Redes 1 Referente à UND1',9.00,9.00,'2012-07-24'),(28,9,'EF','avaliação da disciplina Cálculo 1 Referente à EF',7.00,7.00,'2012-04-15'),(29,12,'EF','avaliação da disciplina Cálculo 2 Referente à EF',5.00,5.00,'2012-01-06'),(30,14,'UND1','avaliação da disciplina Cálculo 3 Referente à UND1',4.00,4.00,'2011-09-28'),(31,4,'UND1','avaliação da disciplina LIBRAS Referente à UND1',8.00,8.00,'2011-06-20');
/*!40000 ALTER TABLE `avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `componente_curricular`
--

LOCK TABLES `componente_curricular` WRITE;
/*!40000 ALTER TABLE `componente_curricular` DISABLE KEYS */;
INSERT INTO `componente_curricular` VALUES (1,'1','DG01','Desenho Geométrico',60,1,NULL,NULL,25),(2,'1','PI00','Português Instrumental ',30,3,NULL,NULL,6),(3,'1','II00','Inglês Instrumental',35,4,NULL,NULL,7),(4,'1','IP00','Introdução à Programação ',90,8,NULL,NULL,18),(5,'1','GA00','Geometria Analítica ',70,6,NULL,NULL,21),(6,'1','IC00','Introdução à computação',60,5,NULL,NULL,22),(7,'1','LP01','Lógica de programação',50,5,NULL,NULL,20),(8,'2','BD01','Banco de Dados 1 ',60,5,7,NULL,2),(9,'2','AC00','Arquitetura de Computadores ',50,4,6,NULL,4),(10,'2','LP00','Programação Orientada a Objetos ',120,9,4,8,8),(11,'2','CA01','Cálculo 1 ',120,6,5,NULL,11),(12,'2','EP00','Ética Profissional ',30,4,NULL,NULL,19),(13,'2','IH00','interface homem-máquina',40,4,NULL,4,23),(14,'3','BD02','Banco de Dados 2 ',40,5,NULL,5,3),(15,'3','SO00','Sistema Operacionais ',50,4,NULL,8,5),(16,'3','DW01','Desenvolvimento Web 1 ',80,6,NULL,4,9),(17,'3','CA02','Cálculo 2 ',80,5,NULL,11,12),(18,'3','SE00','Sistemas Embarcados ',45,4,NULL,6,16),(19,'3','DW03','design web',41,5,NULL,10,24),(20,'4','DW02','Desenvolvimento Web 2 ',90,6,NULL,16,10),(21,'4','CA03','Cálculo 3 ',60,5,NULL,17,13),(22,'4','RE01','Redes 1 ',60,5,NULL,9,14),(23,'5','RE02','Redes 2 ',50,5,22,20,15),(24,'6','CN00','Cálculo Numérico ',65,5,NULL,21,20),(25,'8','LI00','LIBRAS ',45,2,NULL,NULL,17),(26,'3','ED00','Estrutura de dados',80,4,4,8,1);
/*!40000 ALTER TABLE `componente_curricular` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Tecnólogo análise de desenvolvimento de sistemas'),(2,'Data Science'),(3,'tecnólogo em redes'),(4,'manutenção de microcomputadores'),(5,'bacharelado em sistemas de informação '),(6,'engenharia de software '),(7,'engenharia da computação '),(8,'engenharia eletrônica'),(9,'engenharia elétrica'),(10,'engenharia mecatrônica');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `dependente`
--

LOCK TABLES `dependente` WRITE;
/*!40000 ALTER TABLE `dependente` DISABLE KEYS */;
INSERT INTO `dependente` VALUES (1,'wanessa camargo',12),(2,'pedro mariano',10),(3,'maria rita',11),(4,'jose jorge',8),(5,'antônio carlos magalhães neto',11),(6,'maria conceicao',2),(7,'sebastiao carlos',3),(8,'welligton santos',3),(9,'mayssa Silva',8),(10,'daiana santos',9),(11,'enzo henrique',5),(12,'tiago velame',3),(13,'flavio gueiros',4),(14,'Myrelly karoline',4),(15,'emmlly Silva',9),(16,'valeria amaral',6),(17,'vanessa amaral',6),(18,'vitor tesla',4),(19,'marcio matos',5),(20,'rafael bittencourt',5),(21,'marcelo neves',1),(22,'carluxo bolsonaro',10),(23,'eduardo bolsonaro',10),(24,'flávio bolsonaro',10);
/*!40000 ALTER TABLE `dependente` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `diario`
--

LOCK TABLES `diario` WRITE;
/*!40000 ALTER TABLE `diario` DISABLE KEYS */;
INSERT INTO `diario` VALUES (1,10,'manhã',5),(2,11,'manhã',1),(3,12,'tarde',7),(4,13,'noite',4),(5,14,'manhã',6),(6,18,'tarde',2),(7,17,'manhã',8),(8,15,'noite',5),(9,19,'noite',7),(10,1,'noite',3),(11,4,'noite',9),(12,7,'noite',6),(13,8,'tarde',8),(14,7,'manhã',4),(15,8,'tarde',2),(16,8,'tarde',7),(17,9,'noite',9),(18,4,'noite',5);
/*!40000 ALTER TABLE `diario` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `matriculas_componente`
--

LOCK TABLES `matriculas_componente` WRITE;
/*!40000 ALTER TABLE `matriculas_componente` DISABLE KEYS */;
INSERT INTO `matriculas_componente` VALUES (4,1),(5,1),(6,1),(10,1),(13,1),(4,2),(8,2),(19,2),(2,3),(5,3),(7,3),(8,3),(14,3),(2,4),(3,4),(4,4),(11,4),(18,4),(4,5),(11,5),(13,5),(14,5),(2,6),(3,6),(4,6),(10,6),(13,6),(14,6),(3,7),(4,7),(7,7),(10,7),(12,7),(13,7),(20,7),(1,8),(7,8),(10,8),(11,8),(12,8),(13,8),(2,9),(5,9),(6,9),(9,9),(11,9),(12,9),(13,9),(20,9),(1,10),(4,10),(5,10),(6,10),(9,10),(10,10),(11,10),(4,11),(5,11),(6,11),(7,11),(9,11),(10,11),(12,11),(17,11),(20,11),(3,12),(5,12),(12,12),(4,13),(6,13),(9,13),(19,13),(4,14),(9,14),(3,15),(4,15),(5,15),(12,15),(2,16),(6,16),(8,16),(11,16),(12,16),(13,16),(3,17),(4,17),(10,17),(11,17),(12,17),(20,17),(5,18),(6,18),(8,18),(12,18),(15,18),(3,19),(4,19),(9,19),(12,19),(3,20),(4,20),(5,20),(6,20),(19,20),(3,21),(11,21),(19,21),(2,22),(5,22),(14,22),(3,23),(5,23),(14,23),(18,23),(13,24),(20,24);
/*!40000 ALTER TABLE `matriculas_componente` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `matriz_curricular`
--

LOCK TABLES `matriz_curricular` WRITE;
/*!40000 ALTER TABLE `matriz_curricular` DISABLE KEYS */;
INSERT INTO `matriz_curricular` VALUES (1,1,'TADS01','2000-10-19','expirada'),(2,2,'DATAS01','2019-09-06','em vigor'),(3,3,'REDES01','2002-01-22','expirada'),(4,4,'MANMICRO01','2002-09-09','expirada'),(5,5,'BSI01','2003-04-27','expirada'),(6,6,'ENGSOFT01','2003-12-13','em vigor'),(7,7,'ENGCOMP01','2004-07-30','em vigor'),(8,8,'ENGELETRONICA01','2005-03-17','expirada'),(9,9,'ENGELETRICA01','2005-11-02','expirada'),(10,10,'ENGMECA01','2006-06-20','expirada'),(11,1,'TADS02','2007-02-05','em vigor'),(12,3,'REDES02','2000-10-20','em vigor'),(13,4,'MANMICRO02','2001-06-07','expirada'),(14,5,'BSI02','2002-01-23','em vigor'),(15,6,'ENGSOFT02','2019-09-10','expirada'),(16,8,'ENGELETRONICA02','2003-12-14','expirada'),(17,9,'ENGELETRICA02','2004-07-31','expirada'),(18,10,'ENGMECA02','2005-03-18','expirada'),(19,4,'MANMICRO03','2018-02-24','em vigor'),(20,5,'BSI03','2008-05-11','bloqueada'),(21,6,'ENGSOFT03','2018-12-27','bloqueada'),(22,7,'ENGCOMP02','2019-08-14','em vigor'),(23,8,'ENGELETRONICA03','2019-04-01','em vigor'),(24,9,'ENGELETRICA03','2018-11-17','em vigor'),(25,10,'ENGMECA03','2019-07-05','em vigor');
/*!40000 ALTER TABLE `matriz_curricular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota_avaliacao`
--

DROP TABLE IF EXISTS `nota_avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota_avaliacao` (
  `avaliacao` int(11) NOT NULL,
  `aluno` int(11) NOT NULL,
  `nota` float NOT NULL,
  `observação` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`avaliacao`,`aluno`),
  KEY `fk_nota_has_avaliacao_avaliacao1_idx` (`avaliacao`),
  KEY `fk_nota_avaliacao_aluno1_idx` (`aluno`),
  CONSTRAINT `fk_nota_avaliacao_aluno1` FOREIGN KEY (`aluno`) REFERENCES `aluno` (`cod_aluno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_nota_has_avaliacao_avaliacao1` FOREIGN KEY (`avaliacao`) REFERENCES `avaliacao` (`idavaliacao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_avaliacao`
--

LOCK TABLES `nota_avaliacao` WRITE;
/*!40000 ALTER TABLE `nota_avaliacao` DISABLE KEYS */;
INSERT INTO `nota_avaliacao` VALUES (1,1,2,'O aluno com dificuldade do no assunto'),(1,2,7,NULL),(1,3,5,NULL),(1,4,4,NULL),(2,1,6,'O aluno pode melhorar sua performance'),(2,2,10,NULL),(2,3,8,NULL),(2,18,6,NULL),(2,19,0,'Aluno fará segunda chamada'),(2,20,0,'Aluno faltou a prova, devido à morte da avó'),(3,2,9,NULL),(3,3,9,NULL),(3,4,9,NULL),(3,6,6,NULL),(3,7,10,NULL),(3,11,7,NULL),(4,3,10,NULL),(4,4,10,NULL),(4,5,7,NULL),(4,6,8,NULL),(4,7,7,NULL),(4,14,10,NULL),(5,4,7,NULL),(5,5,8,NULL),(5,8,8,NULL),(6,5,8,NULL),(6,6,9,NULL),(6,9,9,NULL),(7,6,9,NULL),(7,7,10,NULL),(7,10,10,NULL);
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
  `nome` varchar(30) NOT NULL,
  `titulo` varchar(40) NOT NULL,
  `siape` int(11) DEFAULT NULL,
  PRIMARY KEY (`idprofessor`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'marco domingues','mestre',112114),(2,'rafael roque','doutor',45463),(3,'anderson moreira','especialista',46547),(4,'paulo abadie','especialista',44444),(5,'paulo goncalves','doutor',7777),(6,'renata freire','especialista',18015),(7,'renata dantas','mestre',99443),(8,'aida ferreira','mestre',111111),(9,'marcos andré ','doutor',147857),(10,'Jair Bolsonaro','especialista',171717),(11,'Tancredo Neves','mestre',154547),(12,'José Dirceu ','Doutor',456477);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (1,'2012 - 1',8),(2,'2012 - 2',7),(3,'2013 - 1',1),(4,'2013 - 2',11),(5,'2013 - 1',10),(6,'2013 - 2',3),(7,'2014 - 1',1),(8,'2014 - 2',8),(9,'2014 - 1',2),(10,'2014 - 2',17),(11,'2015 - 1',11),(12,'2015 - 2',4),(13,'2015 - 1',2),(14,'2015 - 2',9),(15,'2016 - 1',3),(16,'2016 - 2',4),(17,'2016 - 1',12),(18,'2016 - 2',8),(19,'2017 - 1',2),(20,'2017 - 2',12),(21,'2017 - 1',11),(22,'2017 - 2',4),(23,'2018 - 1',2),(24,'2018 - 2',9),(25,'2018 - 2',3);
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-23 22:33:30
