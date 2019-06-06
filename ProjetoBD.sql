-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 06-Jun-2019 às 13:11
-- Versão do servidor: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ProjetoBD`
--
CREATE DATABASE IF NOT EXISTS `ProjetoBD` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ProjetoBD`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE IF NOT EXISTS `aluno` (
  `idaluno` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  PRIMARY KEY (`idaluno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`idaluno`, `nome`) VALUES
(1, 'Alexsandro Matias '),
(2, 'Paulo Almeida'),
(3, 'Erivelton Ramos'),
(4, 'Giovanni  James');

-- --------------------------------------------------------

--
-- Estrutura da tabela `coordena`
--

CREATE TABLE IF NOT EXISTS `coordena` (
  `disciplina_iddisciplina` int(10) UNSIGNED NOT NULL,
  `curso_idcurso` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`disciplina_iddisciplina`,`curso_idcurso`),
  KEY `fk_disciplina_has_curso_curso1_idx` (`curso_idcurso`),
  KEY `fk_disciplina_has_curso_disciplina1_idx` (`disciplina_iddisciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE IF NOT EXISTS `curso` (
  `idcurso` int(10) UNSIGNED NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE IF NOT EXISTS `disciplina` (
  `iddisciplina` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `cargahoraria` int(11) DEFAULT NULL,
  PRIMARY KEY (`iddisciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ministra`
--

CREATE TABLE IF NOT EXISTS `ministra` (
  `professor_idprofessor` int(11) NOT NULL,
  `aluno_idaluno` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`professor_idprofessor`,`aluno_idaluno`),
  KEY `fk_professor_has_aluno_aluno1_idx` (`aluno_idaluno`),
  KEY `fk_professor_has_aluno_professor1_idx` (`professor_idprofessor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `nota`
--

CREATE TABLE IF NOT EXISTS `nota` (
  `nota1` float NOT NULL,
  `nota2` float NOT NULL,
  `media` float DEFAULT NULL,
  `idnota` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idnota`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE IF NOT EXISTS `professor` (
  `idprofessor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `curso_idcurso` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idprofessor`),
  KEY `fk_professor_curso_idx` (`curso_idcurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `coordena`
--
ALTER TABLE `coordena`
  ADD CONSTRAINT `fk_disciplina_has_curso_curso1` FOREIGN KEY (`curso_idcurso`) REFERENCES `curso` (`idcurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_disciplina_has_curso_disciplina1` FOREIGN KEY (`disciplina_iddisciplina`) REFERENCES `disciplina` (`iddisciplina`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `ministra`
--
ALTER TABLE `ministra`
  ADD CONSTRAINT `fk_professor_has_aluno_aluno1` FOREIGN KEY (`aluno_idaluno`) REFERENCES `aluno` (`idaluno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_professor_has_aluno_professor1` FOREIGN KEY (`professor_idprofessor`) REFERENCES `professor` (`idprofessor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `professor`
--
ALTER TABLE `professor`
  ADD CONSTRAINT `fk_professor_curso` FOREIGN KEY (`curso_idcurso`) REFERENCES `curso` (`idcurso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
