-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 05, 2021 at 02:01 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `JourneePersonnel`
--

-- --------------------------------------------------------

--
-- Table structure for table `Employe`
--

CREATE TABLE `Employe` (
  `EmpID` int(11) NOT NULL,
  `EmpNom` varchar(80) NOT NULL,
  `EmpPrenom` varchar(50) NOT NULL,
  `EmpMail` varchar(80) NOT NULL,
  `EmpCodID` int(11) NOT NULL,
  `EmpLocID` int(11) NOT NULL,
  `EmpDomID` int(11) NOT NULL,
  `EmpSouper` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Employe`
--

INSERT INTO `Employe` (`EmpID`, `EmpNom`, `EmpPrenom`, `EmpMail`, `EmpCodID`, `EmpLocID`, `EmpDomID`, `EmpSouper`) VALUES
(27, 'Thewissen', 'Aurélie', 'a@th.be', 3, 3, 4, 'oui'),
(28, 'Nesse', 'Emma', 'emma@nesse.be', 2, 2, 1, 'oui'),
(29, 'Prijs', 'Sandrine', 'sand@prijs.be', 3, 1, 2, 'non'),
(30, 'Jolie', 'Emilie', 'joli@emilie.be', 3, 8, 3, 'oui'),
(32, 'Bruel', 'Patrick', 'patrick@bruel.be', 2, 6, 2, 'non'),
(33, 'Stiers', 'Nathan', 'nath@stiers.be', 1, 4, 4, 'non'),
(34, 'Schyns', 'Noé', 'noe@schyns.be', 1, 1, 4, 'non'),
(35, 'Addhari', 'Selim', 'selim@ad.com', 2, 6, 2, 'non'),
(38, 'Dumont', 'Laurent', 'laurent@dumont.com', 2, 5, 3, 'non'),
(39, 'Claude', 'Cabri', 'claude@cabri.com', 3, 8, 3, 'oui'),
(40, 'Varre', 'Julie', 'julie@varre.be', 1, 4, 4, 'oui'),
(41, 'Storder', 'Sacha', 'sacha@storder.be', 1, 1, 1, 'oui'),
(42, 'Rousse', 'Brune', 'b@b.com', 1, 1, 1, 'oui');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Employe`
--
ALTER TABLE `Employe`
  ADD PRIMARY KEY (`EmpID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Employe`
--
ALTER TABLE `Employe`
  MODIFY `EmpID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
