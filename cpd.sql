-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 30-Nov-2017 às 13:01
-- Versão do servidor: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cpd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `controle`
--

CREATE TABLE `controle` (
  `codigo` int(11) NOT NULL,
  `patrimonio` int(11) NOT NULL,
  `entregou` varchar(100) NOT NULL,
  `retirou` varchar(100) NOT NULL,
  `dateIn` date NOT NULL,
  `dateOut` date NOT NULL,
  `setor` varchar(50) NOT NULL,
  `user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `controle`
--

INSERT INTO `controle` (`codigo`, `patrimonio`, `entregou`, `retirou`, `dateIn`, `dateOut`, `setor`, `user`) VALUES
(1, 65461, 'Edson Gabriel', 'Samuel Felipe', '2017-11-01', '2017-11-03', 'CPD', 'Gabriel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `controle`
--
ALTER TABLE `controle`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `controle`
--
ALTER TABLE `controle`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
