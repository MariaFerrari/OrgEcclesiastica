-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Creato il: Mag 16, 2022 alle 08:23
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

-- --------------------------------------------------------

--
-- Struttura della tabella `assistenza`
--

CREATE TABLE `assistenza` (
  `IdDiacono` int NOT NULL,
  `IdFunzione` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `celebrazione`
--

CREATE TABLE `celebrazione` (
  `IdSacerdote` int NOT NULL,
  `IdFunzione` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(2, '2020-09-26 10:00:00', 'Rito', 3, 1, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `impartizione`
--

CREATE TABLE `impartizione` (
  `IdRito` int NOT NULL,
  `IdPersona` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `Padre` int NOT NULL,
  `Madre` int NOT NULL,
  `IdParrocchia` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(2, 'Ordine presbiterato', NULL, NULL, NULL, NULL);

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
  MODIFY `IdAffDiac` int NOT NULL AUTO_INCREMENT;

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
  MODIFY `IdDiacono` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `diocesi`
--
ALTER TABLE `diocesi`
  MODIFY `IdDiocesi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `funzione`
--
ALTER TABLE `funzione`
  MODIFY `IdFunzione` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `IdPersona` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `rito`
--
ALTER TABLE `rito`
  MODIFY `IdRito` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Limiti per la tabella `vescovo`
--
ALTER TABLE `vescovo`
  ADD CONSTRAINT `vescovo_ibfk_1` FOREIGN KEY (`IdRito`) REFERENCES `rito` (`IdRito`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
