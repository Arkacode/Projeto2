-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19-Jan-2017 às 01:57
-- Versão do servidor: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `empregos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(111) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `nome` text NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `nome`, `data`) VALUES
(2, 'rodolfomota96@gmail.com', '123qweasd', 'rodolfo', '1970-01-01'),
(3, 'rodolfomota96@gmail.com', '123qweasd', 'rodolfo', '1970-01-01'),
(4, 'rodolfomota96@gmail.com', '123qweasd', 'rodolfo', '1970-01-01'),
(5, 'rodolfomota96@gmail.com', '123qweasd', 'a12746', '0000-00-00'),
(6, 'rodolfomota96@gmail.com', '123qweasd', 'a12746', '0000-00-00'),
(7, 'rodolfomota96@gmail.com', '123qweasd', 'a12746', '0000-00-00'),
(8, 'rodolfomota96@gmail.com', '123qweasd', 'rasdas', '0000-00-00'),
(9, 'rodolfomota96@gmail.com', '123qweas', 'asdasd', '2013-03-15'),
(10, 'rodolfomota96@gmail.com', 'asdasd', 'rasdas', '0000-00-00'),
(11, 'rodolfomota96@gmail.com', 'asdasd', 'rasdas', '0000-00-00'),
(12, 'rodolfomota96@gmail.com', '123qweasd', 'rasdas', '0000-00-00'),
(13, 'rodolfomota96@gmail.com', '123qweasd', 'rr', '0000-00-00'),
(14, 'rodolfomota96@gmail.com', '123qweasd', 'rasdas', '0000-00-00'),
(15, 'rodolfomota96@gmail.com', '123qweasd', 'rasdas', '0000-00-00'),
(16, 'rodolfomota96@gmail.com', '123qweasd', 'a12746', '0000-00-00'),
(17, 'rodolfomota96@gmail.com', '123qweasd', 'a12746', '0000-00-00'),
(18, 'rodolfomota96@gmail.com', 'asdasdasd', 'a12746', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
