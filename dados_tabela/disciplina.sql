-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09-Jun-2019 às 19:18
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projetobd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `iddisciplina` int(10) UNSIGNED NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cargahoraria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`iddisciplina`, `nome`, `cargahoraria`) VALUES
(1, 'Estrutura de Dados', 65),
(2, 'Banco de Dados 1', 60),
(3, 'Banco de Dados 2', 50),
(4, 'Arquitetura de Computadores', 40),
(5, 'Sistema Operacionais', 45),
(6, 'Português Instrumental', 30),
(7, 'Inglês Instrumental', 25),
(8, 'Programação Orientada a Objetos', 90),
(9, 'Desenvolvimento Web 1', 70),
(10, 'Desenvolvimento Web 2', 70),
(11, 'Cálculo 1', 120),
(12, 'Cálculo 2', 100),
(13, 'Cálculo 3', 85),
(14, 'Redes 1', 65),
(15, 'Redes 2', 55),
(16, 'Sistemas Embarcados', 45),
(17, 'LIBRAS', 30),
(18, 'Introdução à Programação', 120),
(19, 'Ética Profissional', 25),
(20, 'Cálculo Numérico', 60);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`iddisciplina`),
  ADD UNIQUE KEY `nome_UNIQUE` (`nome`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `iddisciplina` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
