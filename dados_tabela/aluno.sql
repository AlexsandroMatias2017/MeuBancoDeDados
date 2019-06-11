-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09-Jun-2019 às 19:16
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
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `idaluno` int(10) UNSIGNED NOT NULL,
  `nome` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`idaluno`, `nome`) VALUES
(1, 'Alexsandro Matias '),
(2, 'Paulo Almeida'),
(3, 'Erivelton Ramos'),
(4, 'Giovanni'),
(5, 'Jair Bolsonaro'),
(6, 'Fernando Haddad'),
(7, 'Gugu Liberato'),
(8, 'Fausto Silva'),
(9, 'Dilma Rousseff'),
(10, 'Geraldo Alckimin'),
(11, 'Fernando Henrique Cardoso '),
(12, 'Albert Einstein'),
(13, 'Adolf Hitler'),
(14, 'Luciana Ximenes'),
(15, 'Fátima Bernades'),
(16, 'Kid Vinil'),
(17, 'Casé Pessanha'),
(18, 'Renato Aragão'),
(19, 'Sérgio Moro'),
(20, 'Luiz Inácio'),
(21, 'Sérgio Malandro'),
(22, 'Angélica'),
(23, 'Luciano Hulk'),
(24, 'Lázaro Ramos'),
(25, 'Thaís Araújo'),
(26, 'Wanderson Marques'),
(27, 'Juares Bráulio'),
(28, 'Eliane Maria'),
(29, 'Regina Dos Santos'),
(30, 'Joselma dos Santos');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`idaluno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `idaluno` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
