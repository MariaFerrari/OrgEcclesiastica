-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Creato il: Mag 24, 2022 alle 11:01
-- Versione del server: 8.0.23
-- Versione PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chiesa`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `affidamento_diaconale`
--

CREATE TABLE `affidamento_diaconale` (
  `IdAffDiac` int NOT NULL,
  `IdDiacono` int NOT NULL,
  `IdParrocchia` int NOT NULL,
  `DataInizio` date NOT NULL,
  `DataFine` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `affidamento_diaconale`
--

INSERT INTO `affidamento_diaconale` (`IdAffDiac`, `IdDiacono`, `IdParrocchia`, `DataInizio`, `DataFine`) VALUES
(1, 2, 4, '2021-06-05', NULL),
(2, 3, 6, '2021-03-22', NULL),
(3, 3, 14, '2013-12-04', NULL),
(4, 2, 6, '2016-03-03', NULL),
(5, 2, 7, '2014-01-13', NULL),
(6, 1, 10, '2014-08-27', NULL),
(7, 1, 3, '2011-03-17', NULL),
(8, 1, 3, '2018-08-25', NULL),
(9, 1, 3, '2011-11-06', NULL),
(10, 1, 4, '2020-06-16', NULL),
(11, 2, 14, '2017-11-30', NULL),
(12, 2, 16, '2015-11-07', NULL),
(13, 2, 15, '2013-03-08', NULL),
(14, 1, 14, '2015-05-30', NULL),
(15, 2, 10, '2015-10-08', NULL),
(16, 1, 9, '2015-10-02', NULL),
(17, 3, 4, '2019-05-27', NULL),
(18, 1, 14, '2017-06-17', NULL),
(19, 2, 9, '2013-09-12', NULL),
(20, 2, 12, '2010-10-24', NULL),
(21, 1, 15, '2011-08-08', '2016-01-04'),
(22, 1, 13, '2000-01-24', '2006-11-25'),
(23, 1, 10, '1995-04-17', '2010-05-19'),
(24, 1, 11, '2001-09-13', '2019-04-12'),
(25, 2, 9, '2008-07-23', '2009-05-01'),
(26, 1, 7, '1998-07-29', '2008-09-26'),
(27, 1, 11, '1993-09-15', '2008-06-20'),
(28, 1, 15, '2004-01-24', '2006-08-10'),
(29, 1, 11, '2020-02-15', '2017-11-30'),
(30, 2, 3, '2018-01-04', '2005-01-31'),
(31, 3, 13, '2010-12-22', '2017-01-23'),
(32, 1, 16, '2022-04-15', '2018-05-08'),
(33, 1, 13, '2006-07-05', '2019-12-29'),
(34, 1, 9, '1996-10-05', '2006-03-04'),
(35, 1, 6, '2018-10-19', '2000-11-22'),
(36, 3, 16, '2015-11-19', '2016-06-10'),
(37, 3, 10, '2002-02-22', '2003-05-30'),
(38, 2, 11, '2005-10-22', '2015-07-04'),
(39, 2, 5, '2013-06-04', '2018-11-13'),
(40, 3, 10, '2009-12-13', '2012-01-14');

-- --------------------------------------------------------

--
-- Struttura della tabella `affidamento_monastico`
--

CREATE TABLE `affidamento_monastico` (
  `IdAffMon` int NOT NULL,
  `IdOrdMon` int NOT NULL,
  `IdParrocchia` int NOT NULL,
  `DataInizio` date NOT NULL,
  `DataFine` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `affidamento_sacerdotale`
--

CREATE TABLE `affidamento_sacerdotale` (
  `IdSacerdote` int NOT NULL,
  `IdParrocchia` int NOT NULL,
  `DataInizio` date NOT NULL,
  `DataFine` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `affidamento_sacerdotale`
--

INSERT INTO `affidamento_sacerdotale` (`IdSacerdote`, `IdParrocchia`, `DataInizio`, `DataFine`) VALUES
(41, 3, '2015-11-12', NULL),
(48, 3, '2015-11-12', NULL),
(51, 4, '2005-10-13', '2015-10-28'),
(62, 4, '2019-08-15', '2000-09-29'),
(65, 4, '2019-08-15', '2000-09-29'),
(93, 4, '2006-05-20', '2011-06-06'),
(3, 5, '1997-08-06', '2015-04-23'),
(6, 5, '2015-04-10', '2003-07-30'),
(17, 5, '2004-04-20', '2018-02-23'),
(59, 5, '2019-08-06', '2018-04-26'),
(2, 6, '2012-06-29', NULL),
(7, 6, '2014-06-11', NULL),
(32, 6, '2015-04-01', NULL),
(45, 6, '2010-11-02', '2010-08-18'),
(51, 6, '2012-06-29', NULL),
(57, 6, '2012-06-29', NULL),
(59, 6, '2012-06-29', NULL),
(37, 7, '2008-07-27', '2001-07-26'),
(88, 7, '2019-02-22', NULL),
(97, 7, '2014-05-02', NULL),
(5, 9, '2011-03-21', NULL),
(19, 9, '2014-08-10', NULL),
(23, 10, '1999-07-17', '2016-11-21'),
(41, 10, '2011-10-26', '2021-09-25'),
(70, 10, '2011-08-09', '2018-05-08'),
(89, 10, '2018-07-15', NULL),
(39, 11, '2016-02-28', '2010-06-19'),
(83, 11, '2000-08-06', '1999-11-07'),
(24, 12, '2005-12-07', '2007-11-25'),
(38, 12, '2013-02-10', NULL),
(51, 13, '1999-05-14', '2006-03-10'),
(20, 14, '2009-09-17', '2003-10-28'),
(32, 14, '2012-01-04', '2018-01-12'),
(77, 14, '1990-06-14', '2013-12-16'),
(84, 14, '2020-07-21', NULL),
(14, 15, '2012-07-03', '2008-01-02'),
(25, 15, '2021-05-12', '2022-03-24'),
(47, 15, '2004-02-04', '2007-09-09'),
(52, 16, '1998-11-24', '2018-10-05');

-- --------------------------------------------------------

--
-- Struttura della tabella `assistenza`
--

CREATE TABLE `assistenza` (
  `IdDiacono` int NOT NULL,
  `IdFunzione` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `assistenza`
--

INSERT INTO `assistenza` (`IdDiacono`, `IdFunzione`) VALUES
(1, 2),
(2, 2),
(3, 2),
(3, 5),
(3, 8),
(3, 13),
(1, 16),
(2, 24),
(1, 31),
(2, 46),
(3, 46),
(2, 48),
(3, 48),
(2, 51);

-- --------------------------------------------------------

--
-- Struttura della tabella `celebrazione`
--

CREATE TABLE `celebrazione` (
  `IdSacerdote` int NOT NULL,
  `IdFunzione` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `celebrazione`
--

INSERT INTO `celebrazione` (`IdSacerdote`, `IdFunzione`) VALUES
(21, 2),
(33, 3),
(31, 4),
(55, 5),
(51, 6),
(63, 7),
(36, 8),
(41, 9),
(27, 10),
(74, 11),
(81, 12),
(96, 13),
(5, 14),
(23, 15),
(99, 16),
(69, 17),
(94, 18),
(23, 19),
(63, 20),
(80, 21),
(45, 22),
(14, 23),
(61, 24),
(19, 25),
(5, 26),
(56, 27),
(77, 28),
(18, 29),
(67, 30),
(64, 31),
(56, 32),
(13, 33),
(8, 34),
(90, 35),
(93, 36),
(30, 37),
(52, 38),
(46, 39),
(8, 40),
(24, 41),
(49, 42),
(84, 43),
(7, 44),
(39, 45),
(21, 46),
(76, 47),
(62, 48),
(98, 49),
(3, 50),
(83, 51),
(77, 52),
(62, 53),
(31, 54),
(77, 55),
(43, 56),
(64, 57),
(22, 58),
(40, 59),
(90, 60),
(6, 61),
(39, 62),
(15, 63),
(58, 64),
(65, 65),
(6, 66),
(15, 67),
(79, 68),
(19, 69),
(83, 70),
(61, 71),
(64, 72),
(12, 73),
(99, 74),
(19, 75),
(68, 76),
(14, 77),
(16, 78),
(15, 79),
(78, 80),
(9, 81),
(34, 82),
(27, 83),
(40, 84),
(80, 85),
(80, 86),
(28, 87),
(12, 88),
(19, 89),
(11, 90),
(88, 91),
(78, 92),
(21, 93),
(12, 94),
(21, 95),
(33, 96);

-- --------------------------------------------------------

--
-- Struttura della tabella `comando`
--

CREATE TABLE `comando` (
  `IdVescovo` int NOT NULL,
  `IdDiocesi` int NOT NULL,
  `DataInizio` date NOT NULL,
  `DataFine` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `comando`
--

INSERT INTO `comando` (`IdVescovo`, `IdDiocesi`, `DataInizio`, `DataFine`) VALUES
(1, 1, '2019-10-06', NULL),
(2, 2, '2020-10-11', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `comune`
--

CREATE TABLE `comune` (
  `IdComune` int NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Provincia` varchar(2) NOT NULL,
  `IdDiocesi` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `comune`
--

INSERT INTO `comune` (`IdComune`, `Nome`, `Provincia`, `IdDiocesi`) VALUES
(1, 'Treviso', 'TV', 1),
(2, 'Agazzano', 'PC', 2),
(3, 'Alseno', 'PC', 2),
(4, 'Besenzone', 'PC', 2),
(5, 'Bettola', 'PC', 2),
(6, 'Bobbio', 'PC', 2),
(7, 'Borgonovo Val Tidone', 'PC', 2),
(8, 'Cadeo', 'PC', 2),
(9, 'Calendasco', 'PC', 2),
(10, 'Caminata', 'PC', 2),
(11, 'Caorso', 'PC', 2),
(12, 'Carpaneto Piacentino', 'PC', 2),
(13, 'Castel San Giovanni', 'PC', 2),
(14, 'Castell\'Arquato', 'PC', 2),
(15, 'Castelvetro Piacentino', 'PC', 2),
(16, 'Cerignale', 'PC', 2),
(17, 'Coli', 'PC', 2),
(18, 'Corte Brugnatella', 'PC', 2),
(19, 'Cortemaggiore', 'PC', 2),
(20, 'Farini', 'PC', 2),
(21, 'Ferriere', 'PC', 2),
(22, 'Fiorenzuola d\'Arda', 'PC', 2),
(23, 'Gazzola', 'PC', 2),
(24, 'Gossolengo', 'PC', 2),
(25, 'Gragnano Trebbiense', 'PC', 2),
(26, 'Gropparello', 'PC', 2),
(27, 'Lugagnano Val D\'Arda', 'PC', 2),
(28, 'Monticelli d\'Ongina', 'PC', 2),
(29, 'Morfasso', 'PC', 2),
(30, 'Nibbiano', 'PC', 2),
(31, 'Ottone', 'PC', 2),
(32, 'Pecorara', 'PC', 2),
(33, 'Piacenza', 'PC', 2),
(34, 'Pianello Val Tidone', 'PC', 2),
(35, 'Piozzano', 'PC', 2),
(36, 'Podenzano', 'PC', 2),
(37, 'Ponte dell\'Olio', 'PC', 2),
(38, 'Pontenure', 'PC', 2),
(39, 'Rivergaro', 'PC', 2),
(40, 'Rottofreno', 'PC', 2),
(41, 'San Giorgio Piacentino', 'PC', 2),
(42, 'San Pietro in Cerro', 'PC', 2),
(43, 'Sarmato', 'PC', 2),
(44, 'Travo', 'PC', 2),
(45, 'Vernasca', 'PC', 2),
(46, 'Vigolzone', 'PC', 2),
(47, 'Villanova sull\'Arda', 'PC', 2),
(48, 'Zerba', 'PC', 2),
(49, 'Ziano Piacentino', 'PC', 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `confine`
--

CREATE TABLE `confine` (
  `IdDiocesi1` int NOT NULL,
  `IdDiocesi2` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `diacono`
--

CREATE TABLE `diacono` (
  `IdDiacono` int NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Cognome` varchar(50) NOT NULL,
  `DataN` date NOT NULL,
  `LuogoN` varchar(50) NOT NULL,
  `DataM` date DEFAULT NULL,
  `IsEmerito` tinyint(1) NOT NULL DEFAULT '0',
  `IsPermanente` tinyint(1) NOT NULL,
  `IdRito` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `diacono`
--

INSERT INTO `diacono` (`IdDiacono`, `Nome`, `Cognome`, `DataN`, `LuogoN`, `DataM`, `IsEmerito`, `IsPermanente`, `IdRito`) VALUES
(1, 'Luigi', 'Alberti', '1961-03-24', 'boh', NULL, 0, 0, 3),
(2, 'Ciro', 'Andolfo', '1940-05-16', 'boh', '2022-04-11', 1, 0, 3),
(3, 'Antonio', 'Artusi', '1990-10-18', 'boh', NULL, 0, 0, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `diocesi`
--

CREATE TABLE `diocesi` (
  `IdDiocesi` int NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `KmQ` decimal(7,2) NOT NULL,
  `Tipo` enum('Cattolica','Ortodossa') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `diocesi`
--

INSERT INTO `diocesi` (`IdDiocesi`, `Nome`, `KmQ`, `Tipo`) VALUES
(1, 'Treviso', '2194.00', 'Cattolica'),
(2, 'Piacenza-Bobbio', '3670.00', 'Cattolica'),
(3, 'Arcidiocesi di Acerenza', '1279.00', 'Cattolica'),
(4, 'Diocesi di Acerra', '157.00', 'Cattolica'),
(5, 'Diocesi di Acireale', '665.00', 'Cattolica'),
(6, 'Diocesi di Acqui', '1751.00', 'Cattolica'),
(9, 'Diocesi di Adria-Rovigo', '1193.00', 'Cattolica'),
(10, 'Arcidiocesi di Agrigento', '3041.00', 'Cattolica');

-- --------------------------------------------------------

--
-- Struttura della tabella `funzione`
--

CREATE TABLE `funzione` (
  `IdFunzione` int NOT NULL,
  `GiornoOra` datetime NOT NULL,
  `Tipo` enum('Feriale','Domenicale','Pasquale','Natalizia','Festiva altro','Rito') NOT NULL,
  `IdParrocchia` int NOT NULL,
  `IdVescovo` int DEFAULT NULL,
  `IdRito` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `funzione`
--

INSERT INTO `funzione` (`IdFunzione`, `GiornoOra`, `Tipo`, `IdParrocchia`, `IdVescovo`, `IdRito`) VALUES
(2, '2020-09-26 10:00:00', 'Rito', 3, 1, 1),
(3, '2022-05-01 10:00:00', 'Rito', 12, NULL, 30),
(4, '2022-05-01 10:00:00', 'Rito', 12, NULL, 25),
(5, '2022-05-01 10:00:00', 'Rito', 12, NULL, 26),
(6, '2022-05-01 10:00:00', 'Rito', 12, NULL, 27),
(7, '2022-05-01 10:00:00', 'Rito', 12, NULL, 28),
(8, '2022-06-04 16:30:00', 'Rito', 3, 2, 40),
(9, '2022-06-04 16:30:00', 'Rito', 3, 2, 31),
(10, '2022-06-04 16:30:00', 'Rito', 3, 2, 32),
(11, '2022-06-04 16:30:00', 'Rito', 3, 2, 33),
(12, '2022-06-04 16:30:00', 'Rito', 3, 2, 34),
(13, '2022-05-06 11:00:00', 'Rito', 11, NULL, 4),
(14, '2022-05-28 16:00:00', 'Rito', 11, NULL, 15),
(15, '2022-06-04 17:30:00', 'Rito', 11, NULL, 16),
(16, '2022-05-14 10:30:00', 'Rito', 11, NULL, 17),
(17, '2022-05-21 11:00:00', 'Rito', 11, NULL, 18),
(18, '2022-05-08 15:30:00', 'Rito', 10, NULL, 29),
(19, '2022-05-08 15:30:00', 'Rito', 5, NULL, 21),
(20, '2022-05-08 15:30:00', 'Rito', 7, NULL, 22),
(21, '2022-05-08 15:30:00', 'Rito', 10, NULL, 23),
(22, '2022-05-08 15:30:00', 'Rito', 10, NULL, 24),
(23, '2022-05-03 18:00:00', 'Rito', 14, NULL, 49),
(24, '2022-05-03 19:00:00', 'Rito', 16, NULL, 41),
(25, '2022-05-03 18:00:00', 'Rito', 3, NULL, 42),
(26, '2022-05-03 17:30:00', 'Rito', 9, NULL, 43),
(27, '2022-05-03 18:00:00', 'Rito', 14, NULL, 44),
(28, '2022-05-09 18:00:00', 'Rito', 14, NULL, 44),
(29, '2022-05-01 10:00:00', 'Rito', 7, NULL, 50),
(30, '2022-05-18 10:00:00', 'Rito', 7, NULL, 45),
(31, '2022-05-10 15:30:00', 'Rito', 4, NULL, 46),
(32, '2022-05-20 10:00:00', 'Rito', 10, NULL, 47),
(33, '2022-05-03 10:00:00', 'Rito', 7, NULL, 48),
(34, '2022-06-04 16:30:00', 'Rito', 12, NULL, 39),
(35, '2022-06-11 16:30:00', 'Rito', 12, NULL, 37),
(36, '2022-06-25 17:00:00', 'Rito', 6, NULL, 38),
(37, '2022-06-04 16:00:00', 'Rito', 4, NULL, 35),
(38, '2022-06-04 17:30:00', 'Rito', 6, NULL, 36),
(39, '2022-06-11 15:00:00', 'Rito', 5, 2, 3),
(40, '2022-06-11 15:00:00', 'Rito', 5, 2, 13),
(41, '2022-06-11 15:00:00', 'Rito', 5, 2, 14),
(42, '2021-06-11 15:00:00', 'Rito', 5, 2, 19),
(43, '2021-06-11 15:00:00', 'Rito', 5, 2, 20),
(44, '2022-07-17 17:00:00', 'Rito', 5, 2, 1),
(45, '2022-07-17 17:00:00', 'Rito', 5, 2, 5),
(46, '2022-07-17 17:00:00', 'Rito', 5, 2, 6),
(47, '2022-07-17 17:00:00', 'Rito', 5, 2, 7),
(48, '2022-07-17 17:00:00', 'Rito', 5, 2, 8),
(49, '2021-09-04 15:00:00', 'Rito', 5, 2, 2),
(50, '2020-09-04 15:00:00', 'Rito', 5, 2, 9),
(51, '2021-09-04 15:00:00', 'Rito', 5, 2, 10),
(52, '2020-09-04 15:00:00', 'Rito', 5, 2, 11),
(53, '2021-09-04 15:00:00', 'Rito', 5, 2, 12),
(54, '2022-05-08 10:00:00', 'Domenicale', 5, 2, NULL),
(55, '2022-05-15 10:00:00', 'Domenicale', 5, 2, NULL),
(56, '2022-05-22 10:00:00', 'Domenicale', 5, 2, NULL),
(57, '2022-05-29 10:00:00', 'Domenicale', 5, 2, NULL),
(58, '2022-05-02 18:00:00', 'Feriale', 15, NULL, NULL),
(59, '2022-05-03 18:00:00', 'Feriale', 15, NULL, NULL),
(60, '2022-05-04 18:00:00', 'Feriale', 15, NULL, NULL),
(61, '2022-05-05 18:00:00', 'Feriale', 15, NULL, NULL),
(62, '2022-05-06 18:00:00', 'Feriale', 15, NULL, NULL),
(63, '2022-05-09 18:00:00', 'Feriale', 15, NULL, NULL),
(64, '2022-05-10 18:00:00', 'Feriale', 15, NULL, NULL),
(65, '2022-05-11 18:00:00', 'Feriale', 15, NULL, NULL),
(66, '2022-05-12 18:00:00', 'Feriale', 15, NULL, NULL),
(67, '2022-05-13 18:00:00', 'Feriale', 15, NULL, NULL),
(68, '2022-05-14 18:00:00', 'Feriale', 15, NULL, NULL),
(69, '2022-05-15 18:00:00', 'Feriale', 15, NULL, NULL),
(70, '2022-04-17 10:00:00', 'Pasquale', 3, NULL, NULL),
(71, '2022-04-17 10:00:00', 'Pasquale', 3, NULL, NULL),
(72, '2022-04-17 10:00:00', 'Pasquale', 4, NULL, NULL),
(73, '2022-04-17 10:00:00', 'Pasquale', 5, NULL, NULL),
(74, '2022-04-17 10:00:00', 'Pasquale', 7, NULL, NULL),
(75, '2022-04-17 10:00:00', 'Pasquale', 9, NULL, NULL),
(76, '2022-04-17 10:00:00', 'Pasquale', 10, NULL, NULL),
(77, '2022-04-17 10:00:00', 'Pasquale', 11, NULL, NULL),
(78, '2022-04-17 10:00:00', 'Pasquale', 12, NULL, NULL),
(79, '2022-04-17 10:00:00', 'Pasquale', 13, NULL, NULL),
(80, '2022-04-17 10:00:00', 'Pasquale', 14, NULL, NULL),
(81, '2022-04-17 10:00:00', 'Pasquale', 15, NULL, NULL),
(82, '2022-04-17 10:00:00', 'Pasquale', 16, NULL, NULL),
(83, '2022-04-17 10:00:00', 'Pasquale', 5, 2, NULL),
(84, '2021-12-25 10:00:00', 'Natalizia', 5, 2, NULL),
(85, '2021-12-25 10:00:00', 'Natalizia', 3, NULL, NULL),
(86, '2021-12-25 10:00:00', 'Natalizia', 4, NULL, NULL),
(87, '2021-12-25 10:00:00', 'Natalizia', 5, NULL, NULL),
(88, '2021-12-25 10:00:00', 'Natalizia', 7, NULL, NULL),
(89, '2021-12-25 10:00:00', 'Natalizia', 9, NULL, NULL),
(90, '2021-12-25 10:00:00', 'Natalizia', 10, NULL, NULL),
(91, '2021-12-25 10:00:00', 'Natalizia', 11, NULL, NULL),
(92, '2021-12-25 10:00:00', 'Natalizia', 12, NULL, NULL),
(93, '2021-12-25 10:00:00', 'Natalizia', 13, NULL, NULL),
(94, '2021-12-25 10:00:00', 'Natalizia', 14, NULL, NULL),
(95, '2021-12-25 10:00:00', 'Natalizia', 15, NULL, NULL),
(96, '2021-12-25 10:00:00', 'Natalizia', 16, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `impartizione`
--

CREATE TABLE `impartizione` (
  `IdRito` int NOT NULL,
  `IdPersona` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `impartizione`
--

INSERT INTO `impartizione` (`IdRito`, `IdPersona`) VALUES
(50, 1),
(1, 6),
(2, 11),
(3, 13),
(4, 14),
(5, 14),
(19, 14),
(6, 15),
(7, 26),
(8, 27),
(9, 28),
(10, 35),
(11, 36),
(12, 40),
(13, 46),
(14, 46),
(15, 48),
(16, 50),
(17, 55),
(18, 57),
(19, 60),
(20, 61),
(21, 64),
(22, 65),
(23, 65),
(24, 66),
(25, 72),
(26, 73),
(27, 77),
(28, 85),
(29, 86),
(30, 90),
(31, 93),
(32, 95),
(33, 97),
(34, 97),
(35, 102),
(36, 106),
(37, 106),
(38, 108),
(39, 118),
(40, 119),
(41, 122),
(42, 125),
(43, 131),
(44, 132),
(45, 133),
(46, 142),
(47, 142),
(48, 143),
(49, 144);

-- --------------------------------------------------------

--
-- Struttura della tabella `ordine_monastico`
--

CREATE TABLE `ordine_monastico` (
  `IdOrdMon` int NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Cognome` varchar(50) NOT NULL,
  `DataN` date NOT NULL,
  `LuogoN` varchar(50) NOT NULL,
  `DataM` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `parrocchia`
--

CREATE TABLE `parrocchia` (
  `IdParrocchia` int NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Lunghezza` decimal(5,2) NOT NULL,
  `Larghezza` decimal(5,2) NOT NULL,
  `Altezza` decimal(5,2) NOT NULL,
  `DataCostruzione` int NOT NULL,
  `IdDiocesi` int NOT NULL,
  `IdComune` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `parrocchia`
--

INSERT INTO `parrocchia` (`IdParrocchia`, `Nome`, `Lunghezza`, `Larghezza`, `Altezza`, `DataCostruzione`, `IdDiocesi`, `IdComune`) VALUES
(3, 'Chiesa di San Nicolò', '88.00', '27.50', '33.35', 1221, 1, 1),
(4, 'Cattedrale di Santa Maria Assunta', '0.00', '0.00', '0.00', 1463, 2, 6),
(5, 'Cattedrale di Santa Maria Assunta e Santa Giustina', '85.00', '32.00', '72.50', 1233, 2, 33),
(6, 'Chiesa del Corpus Domini', '0.00', '0.00', '0.00', 1920, 2, 33),
(7, 'Chiesa Parrocchiale Nostra Signora di Lourdes', '0.00', '0.00', '0.00', 1964, 2, 33),
(9, 'Chiesa del Preziosissimo Sangue', '0.00', '0.00', '0.00', 1972, 2, 33),
(10, 'Chiesa Sacra Famiglia', '0.00', '0.00', '30.00', 1957, 2, 33),
(11, 'Chiesa Cattolica Parrocchiale S. Maria Assunta', '0.00', '0.00', '0.00', 0, 2, 27),
(12, 'Chiesa di San Giacomo Maggiore ', '0.00', '0.00', '0.00', 1775, 2, 37),
(13, 'Chiesa della Santissima Trinità', '0.00', '0.00', '0.00', 1942, 2, 33),
(14, 'Chiesa di Santa Maria del Suffragio', '0.00', '0.00', '0.00', 1980, 2, 33),
(15, 'Chiesa di San Quintino', '0.00', '0.00', '0.00', 1617, 2, 24),
(16, 'Chiesa di Santa Maria Assunta', '0.00', '0.00', '0.00', 1528, 2, 11);

-- --------------------------------------------------------

--
-- Struttura della tabella `partecipazione`
--

CREATE TABLE `partecipazione` (
  `IdOrdMon` int NOT NULL,
  `IdFunzione` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `persona`
--

CREATE TABLE `persona` (
  `IdPersona` int NOT NULL,
  `CodF` varchar(16) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Cognome` varchar(50) NOT NULL,
  `Sesso` enum('M','F') NOT NULL,
  `DataN` date NOT NULL,
  `CittaN` text NOT NULL,
  `Padre` int DEFAULT NULL,
  `Madre` int DEFAULT NULL,
  `IdParrocchia` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `persona`
--

INSERT INTO `persona` (`IdPersona`, `CodF`, `Nome`, `Cognome`, `Sesso`, `DataN`, `CittaN`, `Padre`, `Madre`, `IdParrocchia`) VALUES
(1, 'VMXSEF42J88W532L', 'Jeffrey', 'Fleote', 'M', '1998-08-14', 'Ratchaburi', NULL, NULL, 13),
(2, 'WLLLEG97Z05U607H', 'Andrea', 'Bartosik', 'F', '2001-03-02', 'Urbiztondo', NULL, NULL, 13),
(3, 'SKLMLU26Z10P424R', 'Elvin', 'Cleef', 'M', '2009-12-04', 'Ringinrejo', NULL, NULL, 12),
(4, 'ETOPHW52Q73U500Z', 'Stormie', 'Reicherz', 'F', '1982-04-08', 'Vnukovo', NULL, NULL, 16),
(5, 'ZEECBK76G92E251M', 'Eloisa', 'Rosberg', 'F', '1993-09-21', 'Patapan', NULL, NULL, 15),
(6, 'RQUMIQ95P09Q846F', 'Edmon', 'Housley', 'M', '2004-07-03', 'Ranambeling', NULL, NULL, 12),
(7, 'ATEQHJ71W25I068M', 'Ula', 'Tolfrey', 'F', '1997-03-28', 'Luis Donaldo Colosio', NULL, NULL, 10),
(8, 'AJELRC79J64B562D', 'Zolly', 'Dreakin', 'M', '2020-10-12', 'Mostek', NULL, NULL, 11),
(9, 'UAFQAL30P51C635N', 'Jessalin', 'Aris', 'F', '2002-11-20', 'Genisséa', NULL, NULL, 12),
(10, 'RKXXTF17D44R119N', 'Tilda', 'Lassells', 'F', '2018-02-11', 'Wagar', NULL, NULL, 15),
(11, 'IDXCQX78R14G762H', 'Shannah', 'Yanin', 'F', '1990-03-05', 'Nakhon Luang', 5, 2, 11),
(12, 'OXYJST59F31N607V', 'Brenna', 'Cargon', 'F', '1995-08-04', 'Maradi', 10, 8, 9),
(13, 'VYVCTM32K53E340W', 'Annice', 'Sprowle', 'F', '1982-04-06', 'Karungdong', 6, 10, 9),
(14, 'QNOPMI65N56S933I', 'Yoshiko', 'Mulhall', 'F', '2013-12-21', 'Lipu', 8, 3, 9),
(15, 'NKTXXG37K31D630Q', 'Prescott', 'Caselick', 'M', '1993-11-08', 'Nanga Eboko', 6, 8, 12),
(16, 'UJQHFU88U32J618Z', 'Audry', 'Christal', 'F', '1984-11-20', 'Yunyang', 9, 5, 11),
(17, 'TCVUUC06G12O901U', 'Anselma', 'Glazer', 'F', '2011-10-09', 'Puerto Montt', 2, 7, 9),
(18, 'RRPCBB54C51W402T', 'Alvira', 'Goalby', 'F', '2015-10-02', 'Pora', 8, 3, 10),
(19, 'YQWHRA61S71F983J', 'Phillie', 'MacPherson', 'F', '2005-02-27', 'Al Finţās', 1, 7, 10),
(20, 'QEXCWE34T82Y980Z', 'Danie', 'Orbell', 'M', '2013-11-27', 'Luchegorsk', 3, 7, 16),
(21, 'BXVQWX19Y89P483O', 'Bernadina', 'Duckers', 'F', '1985-03-12', 'Ngluwuk', 18, 16, 5),
(22, 'RGIGFP72J31G589V', 'Kevin', 'Sircomb', 'M', '2000-09-17', 'Shijie', 17, 16, 4),
(23, 'UIXGMI34P24Y666V', 'Farrell', 'Fiennes', 'M', '1985-09-18', 'Sembung', 12, 14, 6),
(24, 'SFOKFC87L79W978M', 'Illa', 'Coleman', 'F', '1997-12-04', 'Useldange', 14, 20, 5),
(25, 'CZGEPY84O40A782H', 'Julissa', 'Jikylls', 'F', '1999-11-15', 'Caetité', 17, 19, 7),
(26, 'PHWEWX41C36X954D', 'Lezlie', 'Floyde', 'F', '1999-10-19', 'Hayan Hudong', 14, 17, 6),
(27, 'CQELJX03F73O819X', 'Krystle', 'Walkley', 'F', '1996-01-14', 'Yang Chum Noi', 16, 15, 7),
(28, 'ISGRNK35E05P714N', 'Bale', 'Betjes', 'M', '1992-09-16', 'Dalianwan', 14, 14, 7),
(29, 'LEEOQC66X49M377E', 'Gill', 'Brunetti', 'M', '1989-08-06', 'Padre Las Casas', 15, 20, 4),
(30, 'IAFAVT29C99P665M', 'Marci', 'Semiras', 'F', '2018-12-09', 'Cañaveral', 17, 18, 3),
(31, 'KOYKLC99A79O528F', 'Chelsae', 'Boog', 'F', '1980-08-27', 'Pahing Pamulihan', 19, 19, 3),
(32, 'BDZSJR20G28V116T', 'Hall', 'Baumler', 'M', '2001-11-26', 'Pampas Chico', 19, 13, 5),
(33, 'UKVCBU04G72A502P', 'Mason', 'Ick', 'M', '2007-09-30', 'Stockholm', 17, 19, 7),
(34, 'VJCBUP07J51B921B', 'Brigitte', 'Baszkiewicz', 'F', '2000-08-23', 'Kuala Lumpur', 17, 18, 3),
(35, 'EUYSON64F30V901K', 'Bancroft', 'Howat', 'M', '1998-06-12', 'Nanjie', 12, 12, 3),
(36, 'IEUIRW47J65L346J', 'Shandra', 'Norcliff', 'F', '1982-01-26', 'Shitang', 16, 12, 5),
(37, 'JSVVHJ67X25W924L', 'Dannie', 'Henworth', 'M', '1986-02-09', 'Caldelas', 15, 16, 6),
(38, 'YDHJCO71C30W723N', 'Beryl', 'Marlow', 'F', '2005-11-03', 'Xiangshui', 20, 14, 6),
(39, 'NDRQLH58D34G511F', 'Cordie', 'Nesbeth', 'M', '1992-03-06', 'Takahagi', 13, 19, 3),
(40, 'EJLJHJ58X28G309M', 'Cobb', 'Vanezis', 'M', '1986-08-14', 'Matiguás', 19, 19, 7),
(41, 'ANUSQX71J97A285Z', 'Jeramie', 'Cloake', 'M', '2000-06-25', 'Berlín', 19, 18, 7),
(42, 'QAVMKR42X88D428O', 'Orrin', 'Barehead', 'M', '2018-12-22', 'Gamawa', 11, 16, 6),
(43, 'MVRFOB38Q83Y731E', 'Benedict', 'Halwood', 'M', '2019-07-03', 'Três Lagoas', 15, 17, 5),
(44, 'GHWKSL08L32K656G', 'Lonee', 'Armell', 'F', '2003-01-14', 'Fornos de Algodres', 16, 18, 7),
(45, 'UEOWXT29M65Z007U', 'Eal', 'Pidgeon', 'M', '2004-01-19', 'Chame', 12, 18, 3),
(46, 'BCXGMB77Z48T564T', 'Raquela', 'McEvoy', 'F', '2011-04-18', 'Youguzhuang', 11, 12, 3),
(47, 'HRAWPS34B18Z490O', 'Shermie', 'Brugsma', 'M', '1988-05-17', 'Kulonkali', 11, 14, 5),
(48, 'KITGRX45L27D246M', 'Cammi', 'Upwood', 'F', '1988-09-04', 'Santa Rita', 18, 18, 5),
(49, 'FUPZZY29X56H791U', 'Brade', 'Wise', 'M', '2004-09-28', 'Novoderevyankovskaya', 17, 18, 5),
(50, 'ZGBCMA83H37Y391U', 'Donall', 'Diss', 'M', '2010-05-19', 'San Jose', 17, 20, 3),
(51, 'UVFHTA69U03C889J', 'Nissa', 'Harnell', 'F', '2000-03-23', 'Forbach', 10, 8, 11),
(52, 'HYZXWY43X44M386P', 'Foster', 'Francioli', 'M', '2012-06-08', 'Samobor', 40, 16, 9),
(53, 'KKRMUZ24M10K446Z', 'Ashby', 'Plevey', 'M', '1985-04-05', 'Sobreira', 49, 5, 9),
(54, 'VVQPTS02C15M426Q', 'Andros', 'Seys', 'M', '1984-06-18', 'Qianzhou', 31, 9, 12),
(55, 'DNKCUP02J47V410B', 'Myrah', 'Boyland', 'F', '1999-01-17', 'Buenlag', 47, 30, 12),
(56, 'NLTLQF87P87A492M', 'Liana', 'McGrayle', 'F', '2019-09-25', 'Dapdap', 45, 15, 13),
(57, 'FPRGCA62J47A296J', 'Sabra', 'Yaus', 'F', '2007-02-09', 'Kant', 2, 33, 10),
(58, 'VERWFF74D08A004B', 'Florie', 'Tunny', 'F', '2005-09-27', 'Cox’s Bāzār', 37, 46, 9),
(59, 'MNLVGY95M11J606N', 'Eddy', 'Drohane', 'F', '1981-05-25', 'Wailebe', 21, 30, 14),
(60, 'EKJUNU86A53J314Y', 'Adolf', 'Haimes', 'M', '2006-09-03', 'Qŭrghonteppa', 8, 25, 11),
(61, 'ABMWZC47M82P502S', 'Fields', 'Danielsohn', 'M', '2018-08-17', 'Baishui', 39, 28, 15),
(62, 'TUJJJY14K76E806H', 'Otha', 'Bromwich', 'F', '2021-12-26', 'Thaton', 42, 26, 11),
(63, 'VHGWZK49W79R931U', 'Lorilee', 'Rohfsen', 'F', '2013-11-17', 'Peraía', 34, 9, 9),
(64, 'UPBAZW14W00B307C', 'Rolando', 'McDonnell', 'M', '1998-05-10', 'Xincheng', 30, 14, 11),
(65, 'JWRSKE49W89S804J', 'Samaria', 'Christoffels', 'F', '2011-09-03', 'Kristinehamn', 46, 39, 10),
(66, 'VRELKM87L21A492D', 'Marcelia', 'Henkens', 'F', '2021-04-26', 'Lengshuitan', 23, 26, 12),
(67, 'MKRUJG35B08G252R', 'Tabbitha', 'Boulde', 'F', '1987-09-29', 'Lingcheng', 19, 35, 12),
(68, 'FLYOOB40V05C304Q', 'Homere', 'Wimmers', 'M', '2006-04-11', 'Perm', 37, 33, 14),
(69, 'XOTFGA97C57A221R', 'Renado', 'Windsor', 'M', '2021-02-24', 'Florencio Sánchez', 41, 47, 9),
(70, 'OZCBDJ54C80D646U', 'Francklyn', 'Sexton', 'M', '2013-11-29', 'Hatton', 13, 46, 9),
(71, 'CEYVWH92P54W382N', 'Roman', 'Cowope', 'M', '1982-02-24', 'Kochani', 18, 16, 15),
(72, 'YUGMBH16I89P054H', 'Rodi', 'Doddrell', 'F', '1997-04-08', 'Ituberá', 13, 42, 9),
(73, 'GPJTUQ72O18N868X', 'Phil', 'Dummigan', 'F', '1999-02-02', 'Grenoble', 42, 15, 11),
(74, 'JBUGCG24P45I492Y', 'Leoine', 'Crowd', 'F', '1984-03-15', 'Perbaungan', 22, 16, 12),
(75, 'NEETRG31P41W575K', 'Dewitt', 'Margrem', 'M', '2006-08-25', 'Langnga', 35, 10, 12),
(76, 'VLUVPQ80A32L986A', 'Wilden', 'Gimber', 'M', '2012-11-20', 'Beni', 44, 20, 13),
(77, 'TLGDJQ85Y49U390A', 'Sam', 'Curl', 'M', '2019-05-23', 'Ayní', 14, 26, 9),
(78, 'VILSBW65T67Q638N', 'Erika', 'Lum', 'F', '2020-08-01', 'Oxelösund', 29, 45, 10),
(79, 'LQKILF66Z22F476T', 'Erin', 'Simakov', 'M', '1986-01-31', 'Tangga’an', 1, 43, 9),
(80, 'CYZOAD49G90G754J', 'Raine', 'Rickarsey', 'F', '1988-09-03', 'Tabalong', 44, 45, 10),
(81, 'SVQOKQ81Z90R066I', 'Alisa', 'Emlen', 'F', '1989-12-05', 'São Paio de Seide', 37, 16, 14),
(82, 'BYGFQK10J30Q944K', 'Baryram', 'Wooler', 'M', '1992-01-19', 'Sondo', 11, 12, 13),
(83, 'TGYBQW47W00L643V', 'Ripley', 'Benge', 'M', '2007-06-19', 'Karangsumber', 42, 16, 15),
(84, 'TUPTYC49N70V510J', 'Marcellus', 'Vakhrushev', 'M', '2016-06-03', 'Osoyoos', 26, 4, 14),
(85, 'DFMFQN41G22F984E', 'Patric', 'Feldberg', 'M', '1998-08-20', 'Paarl', 20, 13, 12),
(86, 'GRAPWE15O50Y845Q', 'Gay', 'Bayliss', 'M', '1980-10-25', 'Lazaro Cardenas', 5, 34, 14),
(87, 'YQENFI27G62D019Y', 'Kathryne', 'Planks', 'F', '2011-09-18', 'Petawawa', 35, 34, 12),
(88, 'VGWQYU08X09I989M', 'Salome', 'McGarrell', 'F', '2008-05-31', 'Krokeaí', 2, 37, 9),
(89, 'AJBOPH97D13V958D', 'Retha', 'Bulger', 'F', '1994-06-10', 'Kachug', 21, 46, 10),
(90, 'LQENET10D97D919V', 'Kevina', 'Laban', 'F', '1995-07-20', 'La Virginia', 16, 35, 10),
(91, 'BVFRFL02O48A212B', 'Korie', 'Molineaux', 'F', '1994-03-25', 'Kama', 24, 26, 13),
(92, 'RDTTPA80F40V577I', 'Mathilda', 'Stamps', 'F', '1993-06-10', 'Guzhan', 17, 21, 12),
(93, 'NVRWSX30F78S190E', 'Derry', 'MacCombe', 'M', '1996-06-12', 'Znamenskoye', 29, 22, 10),
(94, 'HRBTFT71P90T108I', 'Luther', 'Deboick', 'M', '1990-10-29', 'Liangli', 39, 7, 13),
(95, 'YLDSCZ12P93G142I', 'Bari', 'Karolczyk', 'F', '2012-12-01', 'Imeni Zhelyabova', 40, 4, 9),
(96, 'RWIYHZ15N15V709F', 'Domenico', 'Louisot', 'M', '2015-01-13', 'Magisterial', 30, 40, 11),
(97, 'YXGSNS23F50I991C', 'Alissa', 'Hutley', 'F', '1995-08-17', 'Желино', 23, 6, 15),
(98, 'MIPGTB30L08R944M', 'Beverly', 'Emmison', 'F', '1997-08-20', 'Żelazków', 39, 35, 9),
(99, 'DSBWTF94B51I305J', 'Giovanni', 'Telezhkin', 'M', '1987-04-07', 'Acacías', 46, 14, 11),
(100, 'QOUGKH18O03C074O', 'Ced', 'Biddles', 'M', '2017-01-31', 'Khlong Luang', 40, 23, 15),
(101, 'IZZOPW83L58X835S', 'Fifine', 'Bezemer', 'F', '2004-08-02', 'Puerto Eldorado', 17, 37, 15),
(102, 'SZBUEH20K86E940D', 'Antonie', 'Passingham', 'F', '1980-02-23', 'Bolondrón', 43, 38, 10),
(103, 'HDEZCB83O51C740D', 'Bibbie', 'Bozward', 'F', '2020-09-09', 'Leon Postigo', 7, 25, 11),
(104, 'KFULQY79D76S277K', 'Ursuline', 'Newcomen', 'F', '1987-07-25', 'Glan', 17, 4, 11),
(105, 'WPKATR68R48Q125X', 'Dennie', 'Toland', 'M', '2005-06-02', 'Oslo', 9, 41, 11),
(106, 'RHFSQV18K57Y172G', 'Glenn', 'McInulty', 'F', '2014-12-07', 'Ludwin', 14, 23, 16),
(107, 'DYMNBX89S80U337X', 'Coop', 'Micheu', 'M', '1990-05-20', 'Dongba', 6, 39, 16),
(108, 'YAVEDK88V96F219M', 'Biddie', 'MacGaughey', 'F', '1989-10-05', 'Adygeysk', 37, 42, 14),
(109, 'DDFJZZ81X37I056V', 'Vite', 'Petrillo', 'M', '2021-05-21', 'Rafaḩ', 34, 40, 11),
(110, 'EDTOQN34Y83C920P', 'Niels', 'Ellens', 'M', '1990-09-17', 'Leuweheq', 3, 42, 12),
(111, 'EGESTD21K14O191Q', 'Sibilla', 'Aizlewood', 'F', '1996-07-27', 'Baranów', 33, 27, 9),
(112, 'KFEVKQ90G35D099J', 'Olivette', 'Deeson', 'F', '2019-09-20', 'Kuaidamao', 44, 45, 13),
(113, 'BAKFXO22L61W958Y', 'Barnard', 'Greenhaugh', 'M', '2009-04-30', 'Delaware', 28, 49, 9),
(114, 'DVOSPJ95F15C365X', 'Cal', 'McPhaden', 'F', '2001-11-17', 'Vale de Mendiz', 26, 23, 12),
(115, 'PDVXET86L13D260U', 'Baird', 'Gianulli', 'M', '1980-07-30', 'Poigar', 43, 45, 10),
(116, 'APPYAR94R75M889M', 'Sig', 'Ronchi', 'M', '2003-07-04', 'Sydney', 38, 20, 13),
(117, 'UMNNNX06H21D121W', 'Park', 'Melmore', 'M', '2001-12-23', 'Strzelce Krajeńskie', 45, 17, 11),
(118, 'ODPHFG50J47M426G', 'Marja', 'Flipsen', 'F', '2003-10-15', 'São Sepé', 9, 38, 12),
(119, 'VVAMZD10O89O479Z', 'Amalie', 'Grouer', 'F', '1984-03-10', 'Pekuncen', 19, 16, 12),
(120, 'XWGZDB22L95D415O', 'Dannie', 'Fishby', 'M', '2019-04-21', 'Moch', 3, 26, 14),
(121, 'BZUUAB77K21O225F', 'Fleming', 'Salmon', 'M', '1984-12-02', 'Mont-Dore', 48, 36, 16),
(122, 'BNTERA84G17O702J', 'Tiffani', 'McCauley', 'F', '2000-04-20', 'Luba', 45, 6, 13),
(123, 'VTNBIJ89V92N096U', 'Mannie', 'Rego', 'M', '1997-05-20', 'Dawa-Dawa', 14, 42, 15),
(124, 'BXCNQZ72Q18I155G', 'Fee', 'Sharrem', 'M', '1998-09-09', 'Xiaolou', 42, 43, 14),
(125, 'JQNRPV26U54Z348P', 'Hermon', 'Farloe', 'M', '2017-07-24', 'Wādī Raḩḩāl', 10, 45, 15),
(126, 'TEJWAO05V78F412I', 'Nydia', 'Crudgington', 'F', '2010-10-20', 'Omsk', 3, 35, 13),
(127, 'GCUZNV92P14B519W', 'Shanta', 'Aglione', 'F', '2012-07-08', 'Ninh Giang', 40, 12, 9),
(128, 'WQIMMN09L90V152G', 'Ysabel', 'Colliford', 'F', '2000-04-14', 'Baraguá', 40, 14, 11),
(129, 'XZQCQJ39M29M599K', 'Clyde', 'Afonso', 'M', '2022-04-15', 'Lesnoye', 26, 29, 13),
(130, 'ACHDGQ89U02D274L', 'Brita', 'Austen', 'F', '2016-08-07', 'Les Coteaux', 4, 50, 11),
(131, 'ETXWAX42G97A875C', 'Ibrahim', 'Lobbe', 'M', '2009-06-13', 'Moshkovo', 30, 26, 11),
(132, 'OLJKXB68V15A990Y', 'Hettie', 'Siege', 'F', '1982-02-05', 'Visoko', 5, 21, 12),
(133, 'WKQCZQ48E54X563M', 'Susie', 'MacNeill', 'F', '1980-06-16', 'Babakan Baru', 9, 19, 11),
(134, 'YDTZDF68X72C341O', 'Hanan', 'Crackel', 'M', '2012-11-20', 'Joroinen', 39, 20, 13),
(135, 'WPQNCT46W57I585D', 'Lockwood', 'Casali', 'M', '1983-01-10', 'Heiheba', 10, 9, 9),
(136, 'KHFDGO31K68D235R', 'Herbie', 'Fosh', 'M', '2005-01-09', 'Sarvaš', 23, 41, 15),
(137, 'TBKHBZ03S48Z284B', 'Silvan', 'Jerrans', 'M', '1983-02-10', 'Nandasmo', 13, 7, 16),
(138, 'ACJHAU92Y16K842Y', 'Barty', 'Gulliman', 'M', '1993-05-22', 'Kurovskoye', 10, 46, 11),
(139, 'OCYSVH67D06P876U', 'Dallon', 'Cassimer', 'M', '1980-10-04', 'Shouxihu', 13, 18, 12),
(140, 'GBETBV73F22X311A', 'Valentine', 'Sydenham', 'M', '2005-10-20', 'Ladário', 9, 3, 16),
(141, 'SUPSZS46P72U798P', 'Gavan', 'Pellitt', 'M', '1990-06-19', 'Pamplona', 1, 49, 9),
(142, 'KJUWBZ59Q75K391H', 'Codi', 'Goady', 'M', '2000-02-08', 'Bobadela', 47, 40, 13),
(143, 'TCVYXB27I07J895H', 'Jay', 'Adkins', 'M', '2007-12-28', 'Mander', 50, 48, 11),
(144, 'ZJKIUI83S77B188F', 'Robinet', 'Lukianovich', 'F', '1988-12-13', 'Młynary', 5, 25, 15),
(145, 'EZIDBR83B99U397K', 'Scarface', 'Broad', 'M', '2019-02-22', 'Bojawa', 45, 2, 15),
(146, 'AUNMZO44T94L995O', 'Stephine', 'Moyles', 'F', '1991-05-22', 'Langgen', 28, 28, 12),
(147, 'YOSDNA18I62L202E', 'Rolland', 'Konertz', 'M', '2011-11-24', 'Rudong', 33, 9, 13),
(148, 'SZBMJT19I80G447N', 'Cathrine', 'Howbrook', 'F', '2008-08-18', 'Tallkalakh', 29, 7, 9),
(149, 'GSTUFI23H60D810S', 'Eduino', 'Yeskin', 'M', '2003-11-16', 'Dingjiaqiao', 7, 46, 14),
(150, 'MILHHH90R07D053G', 'Jeri', 'Brunon', 'F', '2003-03-23', 'Woniuhe', 21, 27, 13);

-- --------------------------------------------------------

--
-- Struttura della tabella `presenza`
--

CREATE TABLE `presenza` (
  `IdPersona` int NOT NULL,
  `IdFunzione` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `presenza`
--

INSERT INTO `presenza` (`IdPersona`, `IdFunzione`) VALUES
(6, 2),
(12, 2),
(41, 2),
(113, 2),
(126, 2),
(141, 2),
(35, 3),
(41, 3),
(122, 3),
(141, 3),
(3, 4),
(63, 4),
(81, 5),
(101, 5),
(124, 5),
(49, 6),
(50, 6),
(54, 6),
(10, 7),
(11, 7),
(49, 7),
(63, 7),
(121, 7),
(14, 8),
(67, 8),
(122, 8),
(10, 9),
(85, 9),
(26, 10),
(41, 10),
(6, 11),
(61, 11),
(69, 11),
(83, 11),
(102, 11),
(108, 11),
(111, 11),
(8, 12),
(40, 12),
(117, 12),
(30, 13),
(40, 13),
(90, 13),
(100, 13),
(121, 13),
(19, 14),
(33, 14),
(43, 14),
(54, 14),
(66, 14),
(105, 14),
(112, 14),
(129, 14),
(103, 15),
(9, 16),
(140, 16),
(148, 16),
(66, 17),
(92, 17),
(111, 18),
(67, 19),
(130, 19),
(13, 20),
(26, 20),
(85, 20),
(110, 20),
(118, 20),
(132, 20),
(7, 21),
(21, 21),
(36, 21),
(69, 22),
(85, 22),
(8, 23),
(126, 23),
(135, 23),
(32, 24),
(66, 24),
(107, 24),
(127, 24),
(4, 25),
(46, 25),
(58, 25),
(111, 25),
(129, 25),
(90, 26),
(62, 27),
(77, 27),
(20, 28),
(44, 28),
(23, 29),
(48, 30),
(59, 30),
(74, 31),
(14, 32),
(65, 32),
(51, 33),
(61, 33),
(72, 33),
(75, 33),
(92, 33),
(107, 33),
(136, 33),
(25, 35),
(10, 36),
(25, 36),
(49, 36),
(128, 36),
(145, 37),
(48, 38),
(57, 38),
(72, 38),
(116, 38),
(129, 38),
(51, 39),
(60, 39),
(73, 39),
(20, 40),
(18, 41),
(46, 41),
(150, 41),
(97, 42),
(80, 43),
(34, 44),
(115, 44),
(122, 44),
(135, 44),
(69, 45),
(39, 46),
(49, 46),
(109, 46),
(139, 47),
(9, 48),
(13, 48),
(94, 48),
(100, 48),
(137, 48),
(29, 49),
(62, 49),
(82, 49),
(120, 49),
(141, 49),
(19, 50),
(66, 50),
(64, 51),
(120, 51),
(127, 51),
(140, 51),
(23, 52),
(88, 52),
(101, 52),
(27, 53),
(60, 53),
(84, 53),
(135, 53),
(149, 53),
(39, 54),
(79, 54),
(106, 54),
(38, 55),
(84, 56),
(43, 57),
(51, 57),
(75, 57),
(27, 58),
(44, 59),
(57, 59),
(66, 59),
(119, 59),
(135, 59),
(144, 59),
(148, 59),
(19, 60),
(137, 60),
(119, 61),
(29, 62),
(149, 62),
(34, 63),
(50, 63),
(61, 63),
(71, 63),
(74, 63),
(117, 63),
(2, 64),
(99, 64),
(120, 64),
(60, 66),
(75, 66),
(121, 66),
(136, 66),
(45, 67),
(111, 67),
(24, 68),
(52, 68),
(141, 68),
(41, 69),
(69, 69),
(92, 69),
(34, 70),
(65, 70),
(102, 70),
(148, 70),
(5, 72),
(84, 72),
(95, 72),
(81, 73),
(27, 75),
(96, 75),
(103, 75),
(130, 75),
(66, 77),
(34, 78),
(39, 78),
(115, 78),
(22, 80),
(90, 81),
(100, 81),
(135, 81),
(15, 82),
(55, 82),
(86, 82),
(141, 82),
(83, 83),
(54, 84),
(94, 84),
(46, 85),
(97, 85),
(122, 85),
(27, 86),
(116, 86),
(84, 87),
(133, 88),
(34, 89),
(40, 89),
(45, 89),
(140, 89),
(141, 89),
(84, 90),
(141, 90),
(14, 91),
(33, 91),
(141, 91),
(36, 92),
(96, 92),
(112, 92),
(75, 93),
(117, 93),
(2, 94),
(9, 94),
(40, 94),
(41, 94),
(83, 94),
(133, 94),
(137, 94),
(40, 95),
(68, 95),
(72, 95),
(17, 96),
(25, 96),
(33, 96),
(38, 96);

-- --------------------------------------------------------

--
-- Struttura della tabella `rito`
--

CREATE TABLE `rito` (
  `IdRito` int NOT NULL,
  `Tipo` enum('Battesimo','Confessione','Eucarestia','Cresima','Matrimonio','Estrema unzione','Funerale','Ordine episcopale','Ordine presbiterato','Ordine diaconato') NOT NULL,
  `Testimone1` int DEFAULT NULL,
  `Testimone2` int DEFAULT NULL,
  `Testimone3` int DEFAULT NULL,
  `Testimone4` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `rito`
--

INSERT INTO `rito` (`IdRito`, `Tipo`, `Testimone1`, `Testimone2`, `Testimone3`, `Testimone4`) VALUES
(1, 'Ordine episcopale', NULL, NULL, NULL, NULL),
(2, 'Ordine presbiterato', NULL, NULL, NULL, NULL),
(3, 'Ordine diaconato', NULL, NULL, NULL, NULL),
(4, 'Battesimo', 8, 11, NULL, NULL),
(5, 'Ordine episcopale', NULL, NULL, NULL, NULL),
(6, 'Ordine episcopale', NULL, NULL, NULL, NULL),
(7, 'Ordine episcopale', NULL, NULL, NULL, NULL),
(8, 'Ordine episcopale', NULL, NULL, NULL, NULL),
(9, 'Ordine presbiterato', NULL, NULL, NULL, NULL),
(10, 'Ordine presbiterato', NULL, NULL, NULL, NULL),
(11, 'Ordine presbiterato', NULL, NULL, NULL, NULL),
(12, 'Ordine presbiterato', NULL, NULL, NULL, NULL),
(13, 'Ordine diaconato', NULL, NULL, NULL, NULL),
(14, 'Ordine diaconato', NULL, NULL, NULL, NULL),
(15, 'Battesimo', 23, 55, NULL, NULL),
(16, 'Battesimo', 67, 100, NULL, NULL),
(17, 'Battesimo', 1, 98, NULL, NULL),
(18, 'Battesimo', 29, 71, NULL, NULL),
(19, 'Ordine diaconato', NULL, NULL, NULL, NULL),
(20, 'Ordine diaconato', NULL, NULL, NULL, NULL),
(21, 'Confessione', NULL, NULL, NULL, NULL),
(22, 'Confessione', NULL, NULL, NULL, NULL),
(23, 'Confessione', NULL, NULL, NULL, NULL),
(24, 'Confessione', NULL, NULL, NULL, NULL),
(25, 'Eucarestia', NULL, NULL, NULL, NULL),
(26, 'Eucarestia', NULL, NULL, NULL, NULL),
(27, 'Eucarestia', NULL, NULL, NULL, NULL),
(28, 'Eucarestia', NULL, NULL, NULL, NULL),
(29, 'Confessione', NULL, NULL, NULL, NULL),
(30, 'Eucarestia', NULL, NULL, NULL, NULL),
(31, 'Cresima', 149, NULL, NULL, NULL),
(32, 'Cresima', 112, NULL, NULL, NULL),
(33, 'Cresima', NULL, NULL, NULL, NULL),
(34, 'Cresima', NULL, NULL, NULL, NULL),
(35, 'Matrimonio', 6, 7, 8, 9),
(36, 'Matrimonio', 24, 88, 99, 111),
(37, 'Matrimonio', 61, 95, 137, 17),
(38, 'Matrimonio', 36, 55, 82, 90),
(39, 'Matrimonio', 40, 50, 60, 70),
(40, 'Cresima', 4, NULL, NULL, NULL),
(41, 'Estrema unzione', NULL, NULL, NULL, NULL),
(42, 'Estrema unzione', NULL, NULL, NULL, NULL),
(43, 'Estrema unzione', NULL, NULL, NULL, NULL),
(44, 'Estrema unzione', NULL, NULL, NULL, NULL),
(45, 'Funerale', NULL, NULL, NULL, NULL),
(46, 'Funerale', NULL, NULL, NULL, NULL),
(47, 'Funerale', NULL, NULL, NULL, NULL),
(48, 'Funerale', NULL, NULL, NULL, NULL),
(49, 'Estrema unzione', NULL, NULL, NULL, NULL),
(50, 'Funerale', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `sacerdote`
--

CREATE TABLE `sacerdote` (
  `IdSacerdote` int NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Cognome` varchar(50) NOT NULL,
  `DataN` date NOT NULL,
  `LuogoN` varchar(50) NOT NULL,
  `DataM` date DEFAULT NULL,
  `IsEmerito` tinyint(1) NOT NULL DEFAULT '0',
  `IdRito` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `sacerdote`
--

INSERT INTO `sacerdote` (`IdSacerdote`, `Nome`, `Cognome`, `DataN`, `LuogoN`, `DataM`, `IsEmerito`, `IdRito`) VALUES
(2, 'Domenico', 'Accorsini', '2022-05-01', 'boh', NULL, 0, 2),
(3, 'Adamo', 'Affri', '2022-05-01', 'boh', NULL, 0, 2),
(4, 'Sergio', 'Agosti', '2022-05-01', 'boh', NULL, 0, 2),
(5, 'Alfredo', 'Albertelli', '2022-05-01', 'boh', NULL, 0, 2),
(6, 'Silvio', 'Anelli', '2022-05-01', 'boh', NULL, 0, 1),
(7, 'Stefano', 'Antonelli', '2022-05-01', 'boh', NULL, 0, 2),
(8, 'Fausto', 'Arrisi', '2022-05-01', 'boh', NULL, 0, 2),
(9, 'Guido Renato', 'Balzarini', '2022-05-01', 'boh', NULL, 0, 2),
(10, 'Igino', 'Barani', '2022-05-01', 'boh', NULL, 0, 2),
(11, 'Felice', 'Domenico', '2022-05-01', 'boh', NULL, 0, 2),
(12, 'Guerrino', 'Barbattini', '2022-05-01', 'boh', NULL, 0, 2),
(13, 'Romeo', 'Barbieri', '2022-05-01', 'boh', NULL, 0, 2),
(14, 'Giuseppe', 'Basini', '2022-05-01', 'boh', NULL, 0, 2),
(15, 'Josimar', 'Batista de Mesquita Junior', '2022-05-01', 'boh', NULL, 0, 2),
(16, 'Fabio', 'Battiato', '2022-05-01', 'boh', NULL, 0, 2),
(17, 'Luigi', 'Bavagnoli', '2022-05-01', 'boh', NULL, 0, 2),
(18, 'Giovanni', 'Bergomi', '2022-05-01', 'boh', NULL, 0, 2),
(19, 'Giuseppe', 'Berni', '2022-05-01', 'boh', NULL, 0, 2),
(20, 'Matteo', 'Bersani', '2022-05-01', 'boh', NULL, 0, 2),
(21, 'Angelo Fiorenzo', 'Bertolotti', '2022-05-01', 'boh', NULL, 0, 2),
(22, 'Giuseppe', 'Bertuzzi', '2022-05-01', 'boh', NULL, 0, 2),
(23, 'Mauro', 'Bianchi', '2022-05-01', 'boh', NULL, 0, 2),
(24, 'Boniface Le\'opold', 'Bikwe', '2022-05-01', 'boh', NULL, 0, 2),
(25, 'Agelo', 'Bisoni', '2022-05-01', 'boh', NULL, 0, 2),
(26, 'Deno Martial', 'Boblae', '2022-05-01', 'boh', NULL, 0, 2),
(27, 'Olimpo', 'Bongioni', '2022-05-01', 'boh', NULL, 0, 2),
(28, 'Giambattista', 'Bontempi', '2022-05-01', 'boh', NULL, 0, 2),
(29, 'Artemio', 'Bonzanini', '2022-05-01', 'boh', NULL, 0, 2),
(30, 'Pier Luigi', 'Boracco', '2022-05-01', 'boh', NULL, 0, 2),
(31, 'Luigi', 'Brigati', '2022-05-01', 'boh', NULL, 0, 2),
(32, ' Josuè', 'Brito da Silvia', '2022-05-01', 'boh', NULL, 0, 2),
(33, 'Pietro', 'Bulla', '2022-05-01', 'boh', NULL, 0, 2),
(34, 'Paolo', 'Buscarini', '2022-05-01', 'boh', NULL, 0, 2),
(35, 'Angelo', 'Busi', '2022-05-01', 'boh', NULL, 0, 2),
(36, 'Pier Giovanni', 'Cacchioli', '2022-05-01', 'boh', NULL, 0, 2),
(37, 'Alfonso', 'Calamari', '2022-05-01', 'boh', NULL, 0, 2),
(38, 'Giuseppe', 'Calamari', '2022-05-01', 'boh', NULL, 0, 2),
(39, 'Lorenzo', 'Campagnoli', '2022-05-01', 'boh', NULL, 0, 2),
(40, 'Andrea', 'Campisi', '2022-05-01', 'boh', NULL, 0, 2),
(41, 'Franco', 'Capelli', '2022-05-01', 'boh', NULL, 0, 2),
(42, 'Mario', 'Cappelletti', '2022-05-01', 'boh', NULL, 0, 2),
(43, 'Giovanni', 'Capra', '2022-05-01', 'boh', NULL, 0, 2),
(44, 'Paolo', 'Capra', '2022-05-01', 'boh', NULL, 0, 2),
(45, 'Claudio', 'Carbeni', '2022-05-01', 'boh', NULL, 0, 2),
(46, 'Bruno Luigi', 'Cardinali', '2022-05-01', 'boh', NULL, 0, 2),
(47, 'Luigi', 'Carini', '2022-05-01', 'boh', NULL, 0, 2),
(48, 'Donato', 'Casella', '2022-05-01', 'boh', NULL, 0, 2),
(49, 'Massimo', 'Cassola', '2022-05-01', 'boh', NULL, 0, 2),
(50, 'Francesco', 'Cattadori', '2022-05-01', 'boh', NULL, 0, 2),
(51, 'Franco', 'Cattivelli', '2022-05-01', 'boh', NULL, 0, 2),
(52, 'Silvio', 'Cavalli', '2022-05-01', 'boh', NULL, 0, 2),
(53, 'Angelo', 'Cavanna', '2022-05-01', 'boh', NULL, 0, 2),
(54, 'Pietro', 'Cesena', '2022-05-01', 'boh', NULL, 0, 2),
(55, 'Massimo', 'Cassola', '2022-05-01', 'boh', NULL, 0, 2),
(56, 'Ferdinando', 'Cherubin', '2022-05-01', 'boh', NULL, 0, 2),
(57, 'Paolino', 'Chiapparoli', '2022-05-01', 'boh', NULL, 0, 2),
(58, 'Giovanni', 'Cicala', '2022-05-01', 'boh', NULL, 0, 2),
(59, 'Paolo', 'Cignatta', '2022-05-01', 'boh', NULL, 0, 2),
(60, 'Umberto', 'Ciullo', '2022-05-01', 'boh', NULL, 0, 2),
(61, 'Emilio', 'Coari', '2022-05-01', 'boh', NULL, 0, 2),
(62, 'Stefano', 'Coppellotti', '2022-05-01', 'boh', NULL, 0, 2),
(63, 'Renzo', 'Corbelletta', '2022-05-01', 'boh', NULL, 0, 2),
(64, 'Lelio', 'Casta', '2022-05-01', 'boh', NULL, 0, 2),
(65, 'Giovanni', 'Costantino', '2022-05-01', 'boh', NULL, 0, 2),
(66, 'Stefano', 'Cremona', '2022-05-01', 'boh', NULL, 0, 2),
(67, 'Natale', 'Croci', '2022-05-01', 'boh', NULL, 0, 2),
(68, 'Bruno', 'Crotti', '2022-05-01', 'boh', NULL, 0, 2),
(69, 'Piercarlo', 'Curti', '2022-05-01', 'boh', NULL, 0, 2),
(70, 'Pietro', 'Dacrema', '2022-05-01', 'boh', NULL, 0, 2),
(71, 'Costantino Tomaso', 'Dadda', '2022-05-01', 'boh', NULL, 0, 2),
(72, 'Pierluigi', 'Dallavalle', '2022-05-01', 'boh', NULL, 0, 2),
(73, 'Giancarlo', 'Dallospedale', '2022-05-01', 'boh', NULL, 0, 2),
(74, 'Lazzaro', 'Delle Donne', '2022-05-01', 'boh', NULL, 0, 2),
(75, 'Matteo', 'Di Paola', '2022-05-01', 'boh', NULL, 0, 2),
(76, 'Celso', 'Dosi', '2022-05-01', 'boh', NULL, 0, 2),
(77, 'Giampiero', 'Esopi', '2022-05-01', 'boh', NULL, 0, 2),
(78, 'Angelo Umberto', 'Ferdenzi', '2022-05-01', 'boh', NULL, 0, 2),
(79, 'Dario', 'Ferenc', '2022-05-01', 'boh', NULL, 0, 2),
(80, 'Giacomo', 'Ferraglio', '2022-05-01', 'boh', NULL, 0, 2),
(81, 'Lino', 'Ferrari', '2022-05-01', 'boh', NULL, 0, 2),
(82, 'Pio', 'Ferrari', '2022-05-01', 'boh', NULL, 0, 2),
(83, 'Luiz Carlos', 'Figuredo Mendes', '2022-05-01', 'boh', NULL, 0, 2),
(84, 'Luigi', 'Fontana', '2022-05-01', 'boh', NULL, 0, 2),
(85, 'Giuseppe', 'Formaleoni', '2022-05-01', 'boh', NULL, 0, 2),
(86, 'Luigi', 'Fornari', '2022-05-01', 'boh', NULL, 0, 2),
(87, 'Marco', 'Forni', '2022-05-01', 'boh', NULL, 0, 2),
(88, 'Giuseppe', 'Frazzani', '2022-05-01', 'boh', NULL, 0, 2),
(89, 'Andrea', 'Fusetti', '2022-05-01', 'boh', NULL, 0, 2),
(90, 'Luigi', 'Gaggero', '2022-05-01', 'boh', NULL, 0, 2),
(91, 'Fabio', 'Galli', '2022-05-01', 'boh', NULL, 0, 2),
(92, 'Francesco', 'Gandolfi', '2022-05-01', 'boh', NULL, 0, 2),
(93, 'Stefano Garilli', 'Ferenc', '2022-05-01', 'boh', NULL, 0, 2),
(94, 'Giovanni', 'Ghisoni', '2022-05-01', 'boh', NULL, 0, 2),
(95, 'Michele', 'Giannarelli', '2022-05-01', 'boh', NULL, 0, 2),
(96, 'Marco', 'Giovanelli', '2022-05-01', 'boh', NULL, 0, 2),
(97, 'Germano', 'Gregori', '2022-05-01', 'boh', NULL, 0, 2),
(98, 'Lodovico', 'Groppi', '2022-05-01', 'boh', NULL, 0, 2),
(99, 'Gian Marco', 'Guarnieri', '2022-05-01', 'boh', NULL, 0, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `utente`
--

CREATE TABLE `utente` (
  `Username` varchar(100) NOT NULL,
  `Password` varchar(256) NOT NULL,
  `Ruolo` enum('sacerdote','vescovo','diacono','') NOT NULL,
  `IdSacerdote` int DEFAULT NULL,
  `IdVescovo` int DEFAULT NULL,
  `IdDiacono` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `vescovo`
--

CREATE TABLE `vescovo` (
  `IdVescovo` int NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Cognome` varchar(50) NOT NULL,
  `DataN` date NOT NULL,
  `LuogoN` varchar(50) NOT NULL,
  `DataM` date DEFAULT NULL,
  `IsEmerito` tinyint(1) NOT NULL DEFAULT '0',
  `IdRito` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `vescovo`
--

INSERT INTO `vescovo` (`IdVescovo`, `Nome`, `Cognome`, `DataN`, `LuogoN`, `DataM`, `IsEmerito`, `IdRito`) VALUES
(1, 'Michele', 'Tomasi', '1965-07-07', 'Bolzano', NULL, 0, 1),
(2, 'Adriano', 'Cevolotto', '1958-04-29', 'Treviso', NULL, 0, 1);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `affidamento_diaconale`
--
ALTER TABLE `affidamento_diaconale`
  ADD PRIMARY KEY (`IdAffDiac`),
  ADD KEY `IdDiacono` (`IdDiacono`),
  ADD KEY `IdParrocchia` (`IdParrocchia`);

--
-- Indici per le tabelle `affidamento_monastico`
--
ALTER TABLE `affidamento_monastico`
  ADD PRIMARY KEY (`IdAffMon`),
  ADD KEY `IdOrdMon` (`IdOrdMon`),
  ADD KEY `IdParrocchia` (`IdParrocchia`);

--
-- Indici per le tabelle `affidamento_sacerdotale`
--
ALTER TABLE `affidamento_sacerdotale`
  ADD PRIMARY KEY (`IdParrocchia`,`IdSacerdote`),
  ADD KEY `IdSacerdote` (`IdSacerdote`),
  ADD KEY `IdParrocchia` (`IdParrocchia`);

--
-- Indici per le tabelle `assistenza`
--
ALTER TABLE `assistenza`
  ADD PRIMARY KEY (`IdDiacono`,`IdFunzione`),
  ADD KEY `IdFunzione` (`IdFunzione`),
  ADD KEY `IdDiacono` (`IdDiacono`);

--
-- Indici per le tabelle `celebrazione`
--
ALTER TABLE `celebrazione`
  ADD PRIMARY KEY (`IdSacerdote`,`IdFunzione`),
  ADD KEY `IdFunzione` (`IdFunzione`),
  ADD KEY `IdSacerdote` (`IdSacerdote`);

--
-- Indici per le tabelle `comando`
--
ALTER TABLE `comando`
  ADD PRIMARY KEY (`IdVescovo`,`IdDiocesi`),
  ADD KEY `IdDiocesi` (`IdDiocesi`),
  ADD KEY `IdVescovo` (`IdVescovo`);

--
-- Indici per le tabelle `comune`
--
ALTER TABLE `comune`
  ADD PRIMARY KEY (`IdComune`),
  ADD KEY `IdDiocesi` (`IdDiocesi`);

--
-- Indici per le tabelle `confine`
--
ALTER TABLE `confine`
  ADD PRIMARY KEY (`IdDiocesi1`,`IdDiocesi2`),
  ADD KEY `IdDiocesi2` (`IdDiocesi2`),
  ADD KEY `IdDiocesi1` (`IdDiocesi1`) USING BTREE;

--
-- Indici per le tabelle `diacono`
--
ALTER TABLE `diacono`
  ADD PRIMARY KEY (`IdDiacono`),
  ADD KEY `IdRito` (`IdRito`);

--
-- Indici per le tabelle `diocesi`
--
ALTER TABLE `diocesi`
  ADD PRIMARY KEY (`IdDiocesi`),
  ADD UNIQUE KEY `Nome` (`Nome`);

--
-- Indici per le tabelle `funzione`
--
ALTER TABLE `funzione`
  ADD PRIMARY KEY (`IdFunzione`),
  ADD KEY `IdParrocchia` (`IdParrocchia`),
  ADD KEY `IdVescovo` (`IdVescovo`),
  ADD KEY `IdRito` (`IdRito`);

--
-- Indici per le tabelle `impartizione`
--
ALTER TABLE `impartizione`
  ADD PRIMARY KEY (`IdRito`,`IdPersona`),
  ADD KEY `IdPersona` (`IdPersona`),
  ADD KEY `IdRito` (`IdRito`);

--
-- Indici per le tabelle `ordine_monastico`
--
ALTER TABLE `ordine_monastico`
  ADD PRIMARY KEY (`IdOrdMon`);

--
-- Indici per le tabelle `parrocchia`
--
ALTER TABLE `parrocchia`
  ADD PRIMARY KEY (`IdParrocchia`),
  ADD KEY `IdDiocesi` (`IdDiocesi`),
  ADD KEY `IdComune` (`IdComune`);

--
-- Indici per le tabelle `partecipazione`
--
ALTER TABLE `partecipazione`
  ADD PRIMARY KEY (`IdOrdMon`,`IdFunzione`),
  ADD KEY `IdFunzione` (`IdFunzione`),
  ADD KEY `IdOrdMon` (`IdOrdMon`);

--
-- Indici per le tabelle `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`IdPersona`),
  ADD KEY `Padre` (`Padre`),
  ADD KEY `Madre` (`Madre`),
  ADD KEY `IdParrocchia` (`IdParrocchia`);

--
-- Indici per le tabelle `presenza`
--
ALTER TABLE `presenza`
  ADD PRIMARY KEY (`IdPersona`,`IdFunzione`),
  ADD KEY `IdFunzione` (`IdFunzione`),
  ADD KEY `IdPersona` (`IdPersona`);

--
-- Indici per le tabelle `rito`
--
ALTER TABLE `rito`
  ADD PRIMARY KEY (`IdRito`),
  ADD KEY `Testimone1` (`Testimone1`),
  ADD KEY `Testimone2` (`Testimone2`),
  ADD KEY `Testimone3` (`Testimone3`),
  ADD KEY `Testimone4` (`Testimone4`);

--
-- Indici per le tabelle `sacerdote`
--
ALTER TABLE `sacerdote`
  ADD PRIMARY KEY (`IdSacerdote`),
  ADD KEY `IdRito` (`IdRito`);

--
-- Indici per le tabelle `utente`
--
ALTER TABLE `utente`
  ADD PRIMARY KEY (`Username`),
  ADD KEY `IdDiacono` (`IdDiacono`),
  ADD KEY `IdSacerdote` (`IdSacerdote`),
  ADD KEY `IdVescovo` (`IdVescovo`);

--
-- Indici per le tabelle `vescovo`
--
ALTER TABLE `vescovo`
  ADD PRIMARY KEY (`IdVescovo`),
  ADD KEY `IdRito` (`IdRito`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `affidamento_diaconale`
--
ALTER TABLE `affidamento_diaconale`
  MODIFY `IdAffDiac` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT per la tabella `affidamento_monastico`
--
ALTER TABLE `affidamento_monastico`
  MODIFY `IdAffMon` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `comune`
--
ALTER TABLE `comune`
  MODIFY `IdComune` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT per la tabella `diacono`
--
ALTER TABLE `diacono`
  MODIFY `IdDiacono` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `diocesi`
--
ALTER TABLE `diocesi`
  MODIFY `IdDiocesi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `funzione`
--
ALTER TABLE `funzione`
  MODIFY `IdFunzione` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT per la tabella `ordine_monastico`
--
ALTER TABLE `ordine_monastico`
  MODIFY `IdOrdMon` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parrocchia`
--
ALTER TABLE `parrocchia`
  MODIFY `IdParrocchia` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT per la tabella `persona`
--
ALTER TABLE `persona`
  MODIFY `IdPersona` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT per la tabella `rito`
--
ALTER TABLE `rito`
  MODIFY `IdRito` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT per la tabella `sacerdote`
--
ALTER TABLE `sacerdote`
  MODIFY `IdSacerdote` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT per la tabella `vescovo`
--
ALTER TABLE `vescovo`
  MODIFY `IdVescovo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `affidamento_diaconale`
--
ALTER TABLE `affidamento_diaconale`
  ADD CONSTRAINT `affidamento_diaconale_ibfk_1` FOREIGN KEY (`IdDiacono`) REFERENCES `diacono` (`IdDiacono`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `affidamento_diaconale_ibfk_2` FOREIGN KEY (`IdParrocchia`) REFERENCES `parrocchia` (`IdParrocchia`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Limiti per la tabella `affidamento_sacerdotale`
--
ALTER TABLE `affidamento_sacerdotale`
  ADD CONSTRAINT `affidamento_sacerdotale_ibfk_1` FOREIGN KEY (`IdParrocchia`) REFERENCES `parrocchia` (`IdParrocchia`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `affidamento_sacerdotale_ibfk_2` FOREIGN KEY (`IdSacerdote`) REFERENCES `sacerdote` (`IdSacerdote`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Limiti per la tabella `assistenza`
--
ALTER TABLE `assistenza`
  ADD CONSTRAINT `assistenza_ibfk_1` FOREIGN KEY (`IdDiacono`) REFERENCES `diacono` (`IdDiacono`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `assistenza_ibfk_2` FOREIGN KEY (`IdFunzione`) REFERENCES `funzione` (`IdFunzione`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Limiti per la tabella `celebrazione`
--
ALTER TABLE `celebrazione`
  ADD CONSTRAINT `celebrazione_ibfk_1` FOREIGN KEY (`IdFunzione`) REFERENCES `funzione` (`IdFunzione`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `celebrazione_ibfk_2` FOREIGN KEY (`IdSacerdote`) REFERENCES `sacerdote` (`IdSacerdote`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Limiti per la tabella `comando`
--
ALTER TABLE `comando`
  ADD CONSTRAINT `comando_ibfk_1` FOREIGN KEY (`IdDiocesi`) REFERENCES `diocesi` (`IdDiocesi`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `comando_ibfk_2` FOREIGN KEY (`IdVescovo`) REFERENCES `vescovo` (`IdVescovo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Limiti per la tabella `comune`
--
ALTER TABLE `comune`
  ADD CONSTRAINT `comune_ibfk_1` FOREIGN KEY (`IdDiocesi`) REFERENCES `diocesi` (`IdDiocesi`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Limiti per la tabella `confine`
--
ALTER TABLE `confine`
  ADD CONSTRAINT `confine_ibfk_1` FOREIGN KEY (`IdDiocesi1`) REFERENCES `diocesi` (`IdDiocesi`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `confine_ibfk_2` FOREIGN KEY (`IdDiocesi2`) REFERENCES `diocesi` (`IdDiocesi`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `confine_ibfk_3` FOREIGN KEY (`IdDiocesi1`) REFERENCES `diocesi` (`IdDiocesi`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Limiti per la tabella `diacono`
--
ALTER TABLE `diacono`
  ADD CONSTRAINT `diacono_ibfk_1` FOREIGN KEY (`IdRito`) REFERENCES `rito` (`IdRito`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Limiti per la tabella `funzione`
--
ALTER TABLE `funzione`
  ADD CONSTRAINT `funzione_ibfk_1` FOREIGN KEY (`IdParrocchia`) REFERENCES `parrocchia` (`IdParrocchia`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `funzione_ibfk_2` FOREIGN KEY (`IdRito`) REFERENCES `rito` (`IdRito`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `funzione_ibfk_3` FOREIGN KEY (`IdVescovo`) REFERENCES `vescovo` (`IdVescovo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Limiti per la tabella `impartizione`
--
ALTER TABLE `impartizione`
  ADD CONSTRAINT `impartizione_ibfk_1` FOREIGN KEY (`IdPersona`) REFERENCES `persona` (`IdPersona`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `impartizione_ibfk_2` FOREIGN KEY (`IdRito`) REFERENCES `persona` (`IdPersona`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Limiti per la tabella `parrocchia`
--
ALTER TABLE `parrocchia`
  ADD CONSTRAINT `parrocchia_ibfk_1` FOREIGN KEY (`IdComune`) REFERENCES `comune` (`IdComune`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `parrocchia_ibfk_2` FOREIGN KEY (`IdDiocesi`) REFERENCES `diocesi` (`IdDiocesi`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Limiti per la tabella `partecipazione`
--
ALTER TABLE `partecipazione`
  ADD CONSTRAINT `partecipazione_ibfk_1` FOREIGN KEY (`IdFunzione`) REFERENCES `funzione` (`IdFunzione`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `partecipazione_ibfk_2` FOREIGN KEY (`IdOrdMon`) REFERENCES `ordine_monastico` (`IdOrdMon`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Limiti per la tabella `presenza`
--
ALTER TABLE `presenza`
  ADD CONSTRAINT `presenza_ibfk_1` FOREIGN KEY (`IdFunzione`) REFERENCES `funzione` (`IdFunzione`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `presenza_ibfk_2` FOREIGN KEY (`IdPersona`) REFERENCES `persona` (`IdPersona`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Limiti per la tabella `rito`
--
ALTER TABLE `rito`
  ADD CONSTRAINT `rito_ibfk_1` FOREIGN KEY (`Testimone1`) REFERENCES `persona` (`IdPersona`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `rito_ibfk_2` FOREIGN KEY (`Testimone2`) REFERENCES `persona` (`IdPersona`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `rito_ibfk_3` FOREIGN KEY (`Testimone3`) REFERENCES `persona` (`IdPersona`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `rito_ibfk_4` FOREIGN KEY (`Testimone4`) REFERENCES `persona` (`IdPersona`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Limiti per la tabella `sacerdote`
--
ALTER TABLE `sacerdote`
  ADD CONSTRAINT `sacerdote_ibfk_1` FOREIGN KEY (`IdRito`) REFERENCES `rito` (`IdRito`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Limiti per la tabella `utente`
--
ALTER TABLE `utente`
  ADD CONSTRAINT `utente_ibfk_1` FOREIGN KEY (`IdDiacono`) REFERENCES `diacono` (`IdDiacono`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `utente_ibfk_2` FOREIGN KEY (`IdSacerdote`) REFERENCES `sacerdote` (`IdSacerdote`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `utente_ibfk_3` FOREIGN KEY (`IdVescovo`) REFERENCES `vescovo` (`IdVescovo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Limiti per la tabella `vescovo`
--
ALTER TABLE `vescovo`
  ADD CONSTRAINT `vescovo_ibfk_1` FOREIGN KEY (`IdRito`) REFERENCES `rito` (`IdRito`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
