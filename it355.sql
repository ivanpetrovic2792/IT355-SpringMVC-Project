-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2018 at 08:15 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it355`
--

-- --------------------------------------------------------

--
-- Table structure for table `evidencijaservisa`
--

CREATE TABLE `evidencijaservisa` (
  `EVIDENCIJAID` int(11) NOT NULL,
  `SERVISID` int(11) DEFAULT NULL,
  `KORISNIKID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `KORISNIKID` int(11) NOT NULL,
  `ROLEID` int(11) DEFAULT NULL,
  `KORISNIKEMAIL` varchar(30) DEFAULT NULL,
  `KORISNIKPASSWORD` varchar(20) DEFAULT NULL,
  `KORISNIKIME` varchar(30) DEFAULT NULL,
  `KORISNIKPREZIME` varchar(30) DEFAULT NULL,
  `KORISNIKAKTIVAN` smallint(6) DEFAULT NULL,
  `KORISNIKREGISTROVAN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ENABLED` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`KORISNIKID`, `ROLEID`, `KORISNIKEMAIL`, `KORISNIKPASSWORD`, `KORISNIKIME`, `KORISNIKPREZIME`, `KORISNIKAKTIVAN`, `KORISNIKREGISTROVAN`, `ENABLED`) VALUES
(10, 1, 'ivan@gmail.com', 'ivan123', 'ivan', 'ivan', 1, '2018-08-12 21:27:28', 1),
(11, 2, 'sad@gmail.com', 'rade123', 'rade', 'lackovic', 1, '2018-08-12 21:27:30', 1),
(12, 2, 'ivan1@gmail.com', 'ivan1234', 'ivan', 'petrovic', 1, '2018-08-12 21:27:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `markatelefona`
--

CREATE TABLE `markatelefona` (
  `MARKAID` int(11) NOT NULL,
  `MARKANAZIV` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `markatelefona`
--

INSERT INTO `markatelefona` (`MARKAID`, `MARKANAZIV`) VALUES
(1, 'NOKIA'),
(2, 'Samsung'),
(3, 'Huawei'),
(4, 'Xiaomi'),
(6, 'Alcatel'),
(7, 'TESLA');

-- --------------------------------------------------------

--
-- Table structure for table `rola`
--

CREATE TABLE `rola` (
  `ROLEID` int(11) NOT NULL,
  `ROLENAZIV` varchar(30) DEFAULT NULL,
  `ROLEAKTIVNA` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rola`
--

INSERT INTO `rola` (`ROLEID`, `ROLENAZIV`, `ROLEAKTIVNA`) VALUES
(1, 'ROLE_ADMIN', 1),
(2, 'ROLE_USER', 1);

-- --------------------------------------------------------

--
-- Table structure for table `servis`
--

CREATE TABLE `servis` (
  `SERVISID` int(11) NOT NULL,
  `TELEFONID` int(11) DEFAULT NULL,
  `PROBLEM` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servis`
--

INSERT INTO `servis` (`SERVISID`, `TELEFONID`, `PROBLEM`) VALUES
(2, 2, 'Crkao ekran'),
(3, 1, 'ne radi');

-- --------------------------------------------------------

--
-- Table structure for table `telefon`
--

CREATE TABLE `telefon` (
  `TELEFONID` int(11) NOT NULL,
  `MARKAID` int(11) DEFAULT NULL,
  `TELEFONNAZIV` varchar(20) DEFAULT NULL,
  `TELEFONOPIS` varchar(50) DEFAULT NULL,
  `TELEFONMEMORIJA` varchar(50) DEFAULT NULL,
  `TELEFONPROCESOR` varchar(50) DEFAULT NULL,
  `TELEFONKAMERA` varchar(50) DEFAULT NULL,
  `TELEFONVODOOTPORAN` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `telefon`
--

INSERT INTO `telefon` (`TELEFONID`, `MARKAID`, `TELEFONNAZIV`, `TELEFONOPIS`, `TELEFONMEMORIJA`, `TELEFONPROCESOR`, `TELEFONKAMERA`, `TELEFONVODOOTPORAN`) VALUES
(1, 1, '3310', '0', '0', '0', '0', '0'),
(2, 2, 'S9+', 'najbolji telefon', '5GB', '1GHz + 2.5GHz', '12Mpx+10Mpx+4Mpx', '1'),
(3, 1, 'N95', 'telefon moje mladosti i starosti', '1GB', '0', '20Mpx', '0'),
(4, 3, 'P20', 'kineski telefon', '6GB', '2Ghz', '100mpx', '1');

-- --------------------------------------------------------

--
-- Table structure for table `zakazivanjeservisa`
--

CREATE TABLE `zakazivanjeservisa` (
  `ZAKAZIVANJEID` int(11) NOT NULL,
  `KORISNIKID` int(11) DEFAULT NULL,
  `OPISPROBLEMA` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zakazivanjeservisa`
--

INSERT INTO `zakazivanjeservisa` (`ZAKAZIVANJEID`, `KORISNIKID`, `OPISPROBLEMA`) VALUES
(1, 10, 'CRKO :)'),
(3, 11, 'asdasdasd'),
(4, 11, 'S9 ugasio se');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `evidencijaservisa`
--
ALTER TABLE `evidencijaservisa`
  ADD PRIMARY KEY (`EVIDENCIJAID`),
  ADD KEY `FK_231241534` (`SERVISID`),
  ADD KEY `FK_231241534sadas` (`KORISNIKID`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`KORISNIKID`),
  ADD KEY `FK_rq47n0312t8cfv32ivssfj8pq` (`ROLEID`);

--
-- Indexes for table `markatelefona`
--
ALTER TABLE `markatelefona`
  ADD PRIMARY KEY (`MARKAID`);

--
-- Indexes for table `rola`
--
ALTER TABLE `rola`
  ADD PRIMARY KEY (`ROLEID`);

--
-- Indexes for table `servis`
--
ALTER TABLE `servis`
  ADD PRIMARY KEY (`SERVISID`),
  ADD KEY `FK_7od0djl5vq132wpha8wt1w1hf` (`TELEFONID`);

--
-- Indexes for table `telefon`
--
ALTER TABLE `telefon`
  ADD PRIMARY KEY (`TELEFONID`),
  ADD KEY `FK_g1g5airxxo7tmcq5gin82237c` (`MARKAID`);

--
-- Indexes for table `zakazivanjeservisa`
--
ALTER TABLE `zakazivanjeservisa`
  ADD PRIMARY KEY (`ZAKAZIVANJEID`),
  ADD KEY `FK_asdasd123` (`KORISNIKID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `evidencijaservisa`
--
ALTER TABLE `evidencijaservisa`
  MODIFY `EVIDENCIJAID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `KORISNIKID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `markatelefona`
--
ALTER TABLE `markatelefona`
  MODIFY `MARKAID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `servis`
--
ALTER TABLE `servis`
  MODIFY `SERVISID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `telefon`
--
ALTER TABLE `telefon`
  MODIFY `TELEFONID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `zakazivanjeservisa`
--
ALTER TABLE `zakazivanjeservisa`
  MODIFY `ZAKAZIVANJEID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `evidencijaservisa`
--
ALTER TABLE `evidencijaservisa`
  ADD CONSTRAINT `FK_231241534` FOREIGN KEY (`SERVISID`) REFERENCES `servis` (`SERVISID`),
  ADD CONSTRAINT `FK_231241534sadas` FOREIGN KEY (`KORISNIKID`) REFERENCES `korisnik` (`KORISNIKID`);

--
-- Constraints for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD CONSTRAINT `FK_rq47n0312t8cfv32ivssfj8pq` FOREIGN KEY (`ROLEID`) REFERENCES `rola` (`ROLEID`);

--
-- Constraints for table `servis`
--
ALTER TABLE `servis`
  ADD CONSTRAINT `FK_7od0djl5vq132wpha8wt1w1hf` FOREIGN KEY (`TELEFONID`) REFERENCES `telefon` (`TELEFONID`);

--
-- Constraints for table `telefon`
--
ALTER TABLE `telefon`
  ADD CONSTRAINT `FK_g1g5airxxo7tmcq5gin82237c` FOREIGN KEY (`MARKAID`) REFERENCES `markatelefona` (`MARKAID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `zakazivanjeservisa`
--
ALTER TABLE `zakazivanjeservisa`
  ADD CONSTRAINT `FK_asdasd123` FOREIGN KEY (`KORISNIKID`) REFERENCES `korisnik` (`KORISNIKID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
