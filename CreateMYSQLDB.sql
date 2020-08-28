CREATE DATABASE IF NOT EXISTS alm;
use alm;

CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `fares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) DEFAULT NULL,
  `pickup` varchar(50) DEFAULT NULL COMMENT 'Street address',
  `dropoff` varchar(50) DEFAULT NULL COMMENT 'Street address',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `fare_charge` int(11) DEFAULT NULL COMMENT 'USD in pennies',
  `driver_fee` int(11) DEFAULT NULL COMMENT 'USD in pennies',
  `passenger_rating` tinyint(3) unsigned DEFAULT NULL COMMENT 'From 0 to 5',
  `driver_rating` tinyint(3) unsigned DEFAULT NULL COMMENT 'From 0 to 5',
  PRIMARY KEY (`id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `fares_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;


INSERT IGNORE INTO `employees` (`username`, `password`) VALUES ('fred', 'fredpassword');
INSERT IGNORE INTO `employees` (`username`, `password`) VALUES ('barney', 'barneypassword');
INSERT IGNORE INTO `employees` (`username`, `password`) VALUES ('mihai', 'mihaipassword');
INSERT IGNORE INTO `employees` (`username`, `password`) VALUES ('betty', 'bettypassword');


INSERT IGNORE INTO `fares` (`emp_id`, `pickup`, `dropoff`, `start`, `end`, `fare_charge`, `driver_fee`, `passenger_rating`, `driver_rating`) VALUES ((select `id` from `employees` where `username`='betty') , '87 Wooly Way, Topsoil, WA', '55 Mammoth Way, Bedrock, WA', '2014-06-19 16:13:00', '2014-06-19 16:34:00', '1527', '1145', '3', '4');
INSERT IGNORE INTO `fares` (`emp_id`, `pickup`, `dropoff`, `start`, `end`, `fare_charge`, `driver_fee`, `passenger_rating`, `driver_rating`) VALUES ((select `id` from `employees` where `username`='betty'), '18 Wooly Way, Bedrock, WA', '73 Mammoth Way, Limestone, WA', '2015-01-20 17:00:00', '2015-01-20 17:02:00', '743', '557', '2', '3');
INSERT IGNORE INTO `fares` (`emp_id`, `pickup`, `dropoff`, `start`, `end`, `fare_charge`, `driver_fee`, `passenger_rating`, `driver_rating`) VALUES ((select `id` from `employees` where `username`='betty'), '42 Mammoth Way, Rock Gardens, WA', '71 Hunting Lane, Bedrock, WA', '2015-04-28 00:20:00', '2015-04-28 00:40:00', '1682', '1261', '5', '2');
INSERT IGNORE INTO `fares` (`emp_id`, `pickup`, `dropoff`, `start`, `end`, `fare_charge`, `driver_fee`, `passenger_rating`, `driver_rating`) VALUES ((select `id` from `employees` where `username`='mihai'), '25 Hunting Lane, Topsoil, WA', '4 Mammoth Way, Limestone, WA', '2014-08-26 04:32:00', '2014-08-26 04:38:00', '900', '675', '1', '2');
INSERT IGNORE INTO `fares` (`emp_id`, `pickup`, `dropoff`, `start`, `end`, `fare_charge`, `driver_fee`, `passenger_rating`, `driver_rating`) VALUES ((select `id` from `employees` where `username`='mihai'), '1 Wooly Way, Rock Gardens, WA', '19 Wooly Way, Rock Gardens, WA', '2014-11-05 22:58:00', '2014-11-05 23:02:00', '718', '538', '2', '1');
INSERT IGNORE INTO `fares` (`emp_id`, `pickup`, `dropoff`, `start`, `end`, `fare_charge`, `driver_fee`, `passenger_rating`, `driver_rating`) VALUES ((select `id` from `employees` where `username`='mihai'), '36 Hard Rock Pl, Rock Gardens, WA', '38 Shale St, Limestone, WA', '2014-05-20 07:04:00', '2014-05-20 07:26:00', '567', '425', '4', '2');
INSERT IGNORE INTO `fares` (`emp_id`, `pickup`, `dropoff`, `start`, `end`, `fare_charge`, `driver_fee`, `passenger_rating`, `driver_rating`) VALUES ((select `id` from `employees` where `username`='fred'), '37 Hunting Lane, Rock Gardens, WA', '83 Brontosaurus Blvd, Topsoil, WA', '2014-04-08 16:00:00', '2014-04-08 16:24:00', '2878', '2158', '1', '5');
INSERT IGNORE INTO `fares` (`emp_id`, `pickup`, `dropoff`, `start`, `end`, `fare_charge`, `driver_fee`, `passenger_rating`, `driver_rating`) VALUES ((select `id` from `employees` where `username`='fred'), '84 Mammoth Way, Bedrock, WA', '40 Stegasaurus St, Limestone, WA', '2014-05-06 01:18:00', '2014-05-06 01:29:00', '1910', '1432', '5', '1');
INSERT IGNORE INTO `fares` (`emp_id`, `pickup`, `dropoff`, `start`, `end`, `fare_charge`, `driver_fee`, `passenger_rating`, `driver_rating`) VALUES ((select `id` from `employees` where `username`='barney'), '97 Stegasaurus St, Bedrock, WA', '93 Shale St, Bedrock, WA', '2014-12-13 10:43:00', '2014-12-13 11:20:00', '1869', '1401', '3', '2');
INSERT IGNORE INTO `fares` (`emp_id`, `pickup`, `dropoff`, `start`, `end`, `fare_charge`, `driver_fee`, `passenger_rating`, `driver_rating`) VALUES ((select `id` from `employees` where `username`='barney'), '43 Brontosaurus Blvd, Bedrock, WA', '51 Stegasaurus St, Rock Gardens, WA', '2014-05-17 10:41:00', '2014-05-17 10:53:00', '1460', '1095', '3', '2');

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Eliminarea datelor din tabel `account`
--

INSERT INTO `account` (`username`, `id`, `password`) VALUES
('dudu', '569a0763-ecbf-48c8-8497-ad6313fe4aed', '666'),
('mihai', NULL, '666'),
('andrei', NULL, '666');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `atcontrollers`
--

DROP TABLE IF EXISTS `atcontrollers`;
CREATE TABLE IF NOT EXISTS `atcontrollers` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `dob` datetime DEFAULT NULL,
  `joiningDate` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `airport` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_7en5ocppnji5rplr2159xmp8w` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Eliminarea datelor din tabel `atcontrollers`
--

INSERT INTO `atcontrollers` (`id`, `dob`, `joiningDate`, `name`, `username`, `airport`) VALUES
('8e47186f-b38b-4596-b8b7-8841ce2bef49', '1990-12-14 00:00:00', '2020-08-03 10:28:27', 'Andrei Costin', 'andrei', 'Cluj-Napoca');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `atmanagers`
--

DROP TABLE IF EXISTS `atmanagers`;
CREATE TABLE IF NOT EXISTS `atmanagers` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `dob` datetime DEFAULT NULL,
  `joiningDate` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_mbv8ap6t5qy64i6wni75we65i` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Eliminarea datelor din tabel `atmanagers`
--

INSERT INTO `atmanagers` (`id`, `dob`, `joiningDate`, `name`, `username`, `company`) VALUES
('99103482-d303-4dac-a76f-ac94ff891dd3', '2020-03-22 23:56:55', '2020-03-22 23:56:55', 'Mihai Filip-Dud', 'dudu', 'TAROM'),
('75f35d9f-76f1-4431-a10b-fdc207686e25', '1998-09-27 00:00:00', '2020-07-31 13:03:25', 'Mihai Filip-Dud', 'mihai', 'Tarom');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `plane`
--



--
-- Eliminarea datelor din tabel `plane`
--


-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `planeschedule`
--

DROP TABLE IF EXISTS `planeschedule`;
CREATE TABLE IF NOT EXISTS `planeschedule` (
  `code` varchar(255) COLLATE utf8_bin NOT NULL,
  `airport` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `arrival` datetime DEFAULT NULL,
  `departure` datetime DEFAULT NULL,
  `destination` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`code`),
  KEY `FKmd5bsunwnteovnpao47n2qqca` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

DROP TABLE IF EXISTS `plane`;
CREATE TABLE IF NOT EXISTS `plane` (
  `ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `company` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `plane` (`ID`, `company`, `model`) VALUES
('123', 'Tarom', 'A320'),
('556', 'Tarom', '747');


--
-- Eliminarea datelor din tabel `planeschedule`
--

INSERT INTO `planeschedule` (`code`, `airport`, `arrival`, `departure`, `destination`, `status`, `ID`) VALUES
('678', 'Cluj-Napoca', '2020-08-04 17:27:00', '2020-08-04 20:10:00', 'Paris', 'OK', '556'),
('987', 'Cluj-Napoca', '2020-08-03 13:23:00', '2020-08-03 14:55:00', 'Viena', 'OK', '123');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `DTYPE` varchar(31) COLLATE utf8_bin NOT NULL,
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `dob` datetime DEFAULT NULL,
  `joiningDate` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `airport` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Constrângeri pentru tabele eliminate
--

--
-- Constrângeri pentru tabele `planeschedule`
--
ALTER TABLE `planeschedule`
  ADD CONSTRAINT `FKmd5bsunwnteovnpao47n2qqca` FOREIGN KEY (`ID`) REFERENCES `plane` (`ID`);
COMMIT;
