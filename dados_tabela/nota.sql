-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09-Jun-2019 às 19:19
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
-- Estrutura da tabela `nota`
--

CREATE TABLE `nota` (
  `nota1` float(2,1) NOT NULL,
  `nota2` float(2,1) NOT NULL,
  `idnota` int(10) UNSIGNED NOT NULL,
  `fkdisciplina` int(10) UNSIGNED NOT NULL,
  `fkaluno` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `nota`
--

INSERT INTO `nota` (`nota1`, `nota2`, `idnota`, `fkdisciplina`, `fkaluno`) VALUES
(9.0, 8.0, 2, 4, 4),
(8.5, 6.0, 3, 1, 1),
(3.0, 7.0, 4, 3, 1),
(5.0, 5.5, 5, 3, 5),
(6.0, 9.9, 6, 3, 6),
(6.0, 4.9, 7, 4, 10),
(1.0, 6.0, 8, 4, 12),
(9.9, 7.0, 9, 5, 20),
(7.0, 8.0, 10, 9, 17),
(8.0, 9.0, 11, 7, 7),
(9.0, 1.0, 12, 12, 7),
(5.0, 2.0, 13, 11, 8),
(6.0, 7.0, 14, 10, 10),
(4.0, 8.5, 15, 10, 11),
(8.0, 7.8, 16, 10, 8),
(2.8, 7.7, 17, 10, 4),
(4.9, 8.8, 18, 8, 3),
(5.5, 9.9, 19, 9, 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`idnota`),
  ADD KEY `fkdisciplina` (`fkdisciplina`),
  ADD KEY `fkaluno` (`fkaluno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `idnota` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`fkdisciplina`) REFERENCES `disciplina` (`iddisciplina`),
  ADD CONSTRAINT `nota_ibfk_2` FOREIGN KEY (`fkaluno`) REFERENCES `disciplina` (`iddisciplina`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
