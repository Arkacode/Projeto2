-- phpMyAdmin SQL Dump
-- version 4.4.15.8
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 23-Jan-2017 às 00:12
-- Versão do servidor: 5.6.31
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbprojeto`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `empregos`
--

CREATE TABLE IF NOT EXISTS `empregos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `localidade` varchar(255) NOT NULL,
  `data` datetime NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `idestado` int(11) NOT NULL,
  `idtipoanuncio` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `empregos`
--

INSERT INTO `empregos` (`id`, `titulo`, `localidade`, `data`, `descricao`, `idestado`, `idtipoanuncio`) VALUES
(1, 'Design Gráfico', 'Porto', '2017-01-09 00:00:00', 'texto de descrição exemplo', 1, 1),
(2, 'Programador', 'Famalicão', '2017-01-10 00:00:00', 'texto de descrição exemplo', 1, 1),
(3, 'Multimédia', 'Porto', '2017-01-22 23:16:10', 'texto de descrição exemplo', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

CREATE TABLE IF NOT EXISTS `estados` (
  `id` int(11) NOT NULL,
  `estado` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estados`
--

INSERT INTO `estados` (`id`, `estado`) VALUES
(1, 'disponivel'),
(2, 'pendente'),
(3, 'ocupado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoanuncio`
--

CREATE TABLE IF NOT EXISTS `tipoanuncio` (
  `id` int(11) NOT NULL,
  `tipoanuc` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipoanuncio`
--

INSERT INTO `tipoanuncio` (`id`, `tipoanuc`) VALUES
(1, 'anuncio'),
(2, 'destaque');

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizadores`
--

CREATE TABLE IF NOT EXISTS `utilizadores` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `utilizadores`
--

INSERT INTO `utilizadores` (`id`, `nome`, `email`, `password`, `data`) VALUES
(1, 'rodolfo', 'rodolfomota96@gmail.com', '123123', '0000-00-00'),
(2, 'rasdas', 'csgoinzane@gmail.com', '123123', '0000-00-00'),
(3, 'rasdas', 'Dompaccough42@einrot.com', '123123', '0000-00-00'),
(4, 'sou lindo', '123@gmail.com', '123123', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `empregos`
--
ALTER TABLE `empregos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipoanuncio`
--
ALTER TABLE `tipoanuncio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utilizadores`
--
ALTER TABLE `utilizadores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `empregos`
--
ALTER TABLE `empregos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `estados`
--
ALTER TABLE `estados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tipoanuncio`
--
ALTER TABLE `tipoanuncio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `utilizadores`
--
ALTER TABLE `utilizadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
