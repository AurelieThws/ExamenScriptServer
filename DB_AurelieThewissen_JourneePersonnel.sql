-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 10, 2021 at 04:45 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `JourneePersonnel`
--
CREATE DATABASE IF NOT EXISTS `JourneePersonnel` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `JourneePersonnel`;

-- --------------------------------------------------------

--
-- Table structure for table `Activite`
--

DROP TABLE IF EXISTS `Activite`;
CREATE TABLE `Activite` (
  `ActID` int(11) NOT NULL,
  `ActTitre` varchar(80) NOT NULL,
  `ActDescription` text NOT NULL,
  `ActNombreMax` tinyint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Activite`
--

INSERT INTO `Activite` (`ActID`, `ActTitre`, `ActDescription`, `ActNombreMax`) VALUES
(21, 'Cuisine', 'Au menu du cours de cuisine tapas du monde: -Bocconcini fritti (Italie) -Calamari fritti (Grèce) -Salade de poulpes (Croatie) -Tzatziki', 15),
(22, 'Course', 'Foncez à toute allure sur les plus beaux circuits du monde. GT, Rallye ou Formule 1™ choisissez votre style. Défiez vos amis, vos proches, vos enfants ou vos collègues, sur le même circuit.', 10),
(23, 'Karting', 'Circuit réputé dans le monde entier grâce à l’organisation d’épreuves internationales, le Karting des Fagnes reste pourtant accessible à tous.', 13),
(24, 'Escape-game', 'Envie de connaître des sensations de stress et de reflexion intense? L\'escape gamme te permettra de te mettre toi et ton équipe à l\'épreuve.', 15),
(25, 'Rien', 'Il est tout à fait possible de pas choisir d\'activité. Nous serons ravie de vous voir une prochaine fois.', 100);

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

DROP TABLE IF EXISTS `Admin`;
CREATE TABLE `Admin` (
  `AdmID` int(11) NOT NULL,
  `AdmLogin` varchar(60) NOT NULL,
  `AdmPassword` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`AdmID`, `AdmLogin`, `AdmPassword`) VALUES
(5, 'nath@stiers', '$2y$10$.7PwUuuKIzhZua3A34MT4OIZa03iFoiMQhn0ySzbTynQrfx82h4d.'),
(6, 'aure@the', '$2y$10$N5oGuHrNeYcvAQ6nyZBFaej0w4kH5HNQ/J0er5kC/EJUYoUfnZ/3C'),
(7, 'sandrine@goo', '$2y$10$NCXkyoB81VSUi9RNbBvH5eo2AerzSFCdt2OeotHWXYEkqxEL0H/PW'),
(9, 'raph@ver', '$2y$10$mujngdT41f0eLjwXSQXKHeAG3buKQNimboo8iiP/wRKRAQWqTEAVi');

-- --------------------------------------------------------

--
-- Table structure for table `CodePostal`
--

DROP TABLE IF EXISTS `CodePostal`;
CREATE TABLE `CodePostal` (
  `CpCode` int(7) NOT NULL,
  `CpVille` varchar(100) NOT NULL,
  `CpProvince` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CodePostal`
--

INSERT INTO `CodePostal` (`CpCode`, `CpVille`, `CpProvince`) VALUES
(1000, 'BRUXELLES', 'Bruxelles'),
(1030, 'SCHAERBEEK', 'Bruxelles'),
(1040, 'ETTERBEEK', 'Bruxelles'),
(1050, 'IXELLES', 'Bruxelles'),
(1060, 'SAINT-GILLES', 'Bruxelles'),
(1070, 'ANDERLECHT', 'Bruxelles'),
(1080, 'MOLENBEEK-SAINT-JEAN', 'Bruxelles'),
(1081, 'KOEKELBERG', 'Bruxelles'),
(1082, 'BERCHEM-SAINTE-AGATHE', 'Bruxelles'),
(1083, 'GANSHOREN', 'Bruxelles'),
(1090, 'JETTE', 'Bruxelles'),
(1140, 'EVERE', 'Bruxelles'),
(1150, 'WOLUWE-SAINT-PIERRE', 'Bruxelles'),
(1160, 'AUDERGHEM', 'Bruxelles'),
(1170, 'WATERMAEL-BOITSFORT', 'Bruxelles'),
(1180, 'UCCLE', 'Bruxelles'),
(1190, 'FOREST', 'Bruxelles'),
(1200, 'WOLUWE-SAINT-LAMBERT', 'Bruxelles'),
(1210, 'SAINT-JOSSE-TEN-NOODE', 'Bruxelles'),
(1300, 'WAVRE', 'Brabant Wallon'),
(1310, 'LA HULPE', 'Brabant Wallon'),
(1315, 'INCOURT', 'Brabant Wallon'),
(1320, 'BEAUVECHAIN', 'Brabant Wallon'),
(1325, 'CHAUMONT-GISTOUX', 'Brabant Wallon'),
(1330, 'RIXENSART', 'Brabant Wallon'),
(1340, 'OTTIGNIES-LOUVAIN-LA-NEUVE', 'Brabant Wallon'),
(1350, 'ORP-JAUCHE', 'Brabant Wallon'),
(1357, 'HÉLÉCINE', 'Brabant Wallon'),
(1360, 'PERWEZ', 'Brabant Wallon'),
(1367, 'RAMILLIES', 'Brabant Wallon'),
(1370, 'JODOIGNE', 'Brabant Wallon'),
(1380, 'LASNE', 'Brabant Wallon'),
(1390, 'GREZ-DOICEAU', 'Brabant Wallon'),
(1400, 'NIVELLES', 'Brabant Wallon'),
(1410, 'WATERLOO', 'Brabant Wallon'),
(1420, 'BRAINE-L\'ALLEUD', 'Brabant Wallon'),
(1430, 'REBECQ', 'Brabant Wallon'),
(1435, 'MONT-SAINT-GUIBERT', 'Brabant Wallon'),
(1440, 'BRAINE-LE-CHÂTEAU', 'Brabant Wallon'),
(1450, 'CHASTRE', 'Brabant Wallon'),
(1457, 'WALHAIN', 'Brabant Wallon'),
(1460, 'ITTRE', 'Brabant Wallon'),
(1470, 'GENAPPE', 'Brabant Wallon'),
(1480, 'TUBIZE', 'Brabant Wallon'),
(1490, 'COURT-SAINT-ETIENNE', 'Brabant Wallon'),
(1495, 'VILLERS-LA-VILLE', 'Brabant Wallon'),
(1500, 'HALLE', 'Brabant Flamand'),
(1540, 'HERNE', 'Brabant Flamand'),
(1547, 'BIÉVÈNE', 'Brabant Flamand'),
(1560, 'HOEILAART', 'Brabant Flamand'),
(1570, 'GALMAARDEN', 'Brabant Flamand'),
(1600, 'SINT-PIETERS-LEEUW', 'Brabant Flamand'),
(1620, 'DROGENBOS', 'Brabant Flamand'),
(1630, 'LINKEBEEK', 'Brabant Flamand'),
(1640, 'RHODE-SAINT-GENÈSE', 'Brabant Flamand'),
(1650, 'BEERSEL', 'Brabant Flamand'),
(1670, 'PEPINGEN', 'Brabant Flamand'),
(1700, 'DILBEEK', 'Brabant Flamand'),
(1730, 'ASSE', 'Brabant Flamand'),
(1740, 'TERNAT', 'Brabant Flamand'),
(1745, 'OPWIJK', 'Brabant Flamand'),
(1750, 'LENNIK', 'Brabant Flamand'),
(1755, 'GOOIK', 'Brabant Flamand'),
(1760, 'ROOSDAAL', 'Brabant Flamand'),
(1770, 'LIEDEKERKE', 'Brabant Flamand'),
(1780, 'WEMMEL', 'Brabant Flamand'),
(1785, 'MERCHTEM', 'Brabant Flamand'),
(1790, 'AFFLIGEM', 'Brabant Flamand'),
(1800, 'VILVOORDE', 'Brabant Flamand'),
(1820, 'STEENOKKERZEEL', 'Brabant Flamand'),
(1830, 'MACHELEN', 'Brabant Flamand'),
(1840, 'LONDERZEEL', 'Brabant Flamand'),
(1850, 'GRIMBERGEN', 'Brabant Flamand'),
(1860, 'MEISE', 'Brabant Flamand'),
(1880, 'KAPELLE-OP-DEN-BOS', 'Brabant Flamand'),
(1910, 'KAMPENHOUT', 'Brabant Flamand'),
(1930, 'ZAVENTEM', 'Brabant Flamand'),
(1950, 'KRAAINEM', 'Brabant Flamand'),
(1970, 'WEZEMBEEK-OPPEM', 'Brabant Flamand'),
(1980, 'ZEMST', 'Brabant Flamand'),
(2000, 'ANTWERPEN', 'Anvers'),
(2018, 'ANTWERPEN', 'Anvers'),
(2020, 'ANTWERPEN', 'Anvers'),
(2030, 'ANTWERPEN', 'Anvers'),
(2040, 'ANTWERPEN', 'Anvers'),
(2050, 'ANTWERPEN', 'Anvers'),
(2060, 'ANTWERPEN', 'Anvers'),
(2070, 'ZWIJNDRECHT', 'Anvers'),
(2110, 'WIJNEGEM', 'Anvers'),
(2150, 'BORSBEEK', 'Anvers'),
(2160, 'WOMMELGEM', 'Anvers'),
(2200, 'HERENTALS', 'Anvers'),
(2220, 'HEIST-OP-DEN-BERG', 'Anvers'),
(2230, 'HERSELT', 'Anvers'),
(2235, 'HULSHOUT', 'Anvers'),
(2240, 'ZANDHOVEN', 'Anvers'),
(2250, 'OLEN', 'Anvers'),
(2260, 'WESTERLO', 'Anvers'),
(2270, 'HERENTHOUT', 'Anvers'),
(2275, 'LILLE', 'Anvers'),
(2280, 'GROBBENDONK', 'Anvers'),
(2290, 'VORSELAAR', 'Anvers'),
(2300, 'TURNHOUT', 'Anvers'),
(2310, 'RIJKEVORSEL', 'Anvers'),
(2320, 'HOOGSTRATEN', 'Anvers'),
(2330, 'MERKSPLAS', 'Anvers'),
(2340, 'BEERSE', 'Anvers'),
(2350, 'VOSSELAAR', 'Anvers'),
(2360, 'OUD-TURNHOUT', 'Anvers'),
(2370, 'ARENDONK', 'Anvers'),
(2380, 'RAVELS', 'Anvers'),
(2387, 'BAARLE-HERTOG', 'Anvers'),
(2390, 'MALLE', 'Anvers'),
(2400, 'MOL', 'Anvers'),
(2430, 'LAAKDAL', 'Anvers'),
(2440, 'GEEL', 'Anvers'),
(2450, 'MEERHOUT', 'Anvers'),
(2460, 'KASTERLEE', 'Anvers'),
(2470, 'RETIE', 'Anvers'),
(2480, 'DESSEL', 'Anvers'),
(2490, 'BALEN', 'Anvers'),
(2500, 'LIER', 'Anvers'),
(2520, 'RANST', 'Anvers'),
(2530, 'BOECHOUT', 'Anvers'),
(2540, 'HOVE', 'Anvers'),
(2547, 'LINT', 'Anvers'),
(2550, 'KONTICH', 'Anvers'),
(2560, 'NIJLEN', 'Anvers'),
(2570, 'DUFFEL', 'Anvers'),
(2580, 'PUTTE', 'Anvers'),
(2590, 'BERLAAR', 'Anvers'),
(2620, 'HEMIKSEM', 'Anvers'),
(2627, 'SCHELLE', 'Anvers'),
(2630, 'AARTSELAAR', 'Anvers'),
(2640, 'MORTSEL', 'Anvers'),
(2650, 'EDEGEM', 'Anvers'),
(2800, 'MECHELEN', 'Anvers'),
(2820, 'BONHEIDEN', 'Anvers'),
(2830, 'WILLEBROEK', 'Anvers'),
(2840, 'RUMST', 'Anvers'),
(2845, 'NIEL', 'Anvers'),
(2850, 'BOOM', 'Anvers'),
(2860, 'SINT-KATELIJNE-WAVER', 'Anvers'),
(2870, 'PUURS-SINT-AMANDS', 'Anvers'),
(2880, 'BORNEM', 'Anvers'),
(2900, 'SCHOTEN', 'Anvers'),
(2910, 'ESSEN', 'Anvers'),
(2920, 'KALMTHOUT', 'Anvers'),
(2930, 'BRASSCHAAT', 'Anvers'),
(2940, 'STABROEK', 'Anvers'),
(2950, 'KAPELLEN', 'Anvers'),
(2960, 'BRECHT', 'Anvers'),
(2970, 'SCHILDE', 'Anvers'),
(2980, 'ZOERSEL', 'Anvers'),
(2990, 'WUUSTWEZEL', 'Anvers'),
(3000, 'LEUVEN', 'Brabant Flamand'),
(3020, 'HERENT', 'Brabant Flamand'),
(3040, 'HULDENBERG', 'Brabant Flamand'),
(3050, 'OUD-HEVERLEE', 'Brabant Flamand'),
(3060, 'BERTEM', 'Brabant Flamand'),
(3070, 'KORTENBERG', 'Brabant Flamand'),
(3080, 'TERVUREN', 'Brabant Flamand'),
(3090, 'OVERIJSE', 'Brabant Flamand'),
(3110, 'ROTSELAAR', 'Brabant Flamand'),
(3120, 'TREMELO', 'Brabant Flamand'),
(3130, 'BEGIJNENDIJK', 'Brabant Flamand'),
(3140, 'KEERBERGEN', 'Brabant Flamand'),
(3150, 'HAACHT', 'Brabant Flamand'),
(3190, 'BOORTMEERBEEK', 'Brabant Flamand'),
(3200, 'AARSCHOT', 'Brabant Flamand'),
(3210, 'LUBBEEK', 'Brabant Flamand'),
(3220, 'HOLSBEEK', 'Brabant Flamand'),
(3270, 'SCHERPENHEUVEL-ZICHEM', 'Brabant Flamand'),
(3290, 'DIEST', 'Brabant Flamand'),
(3300, 'TIENEN', 'Brabant Flamand'),
(3320, 'HOEGAARDEN', 'Brabant Flamand'),
(3350, 'LINTER', 'Brabant Flamand'),
(3360, 'BIERBEEK', 'Brabant Flamand'),
(3370, 'BOUTERSEM', 'Brabant Flamand'),
(3380, 'GLABBEEK', 'Brabant Flamand'),
(3390, 'TIELT-WINGE', 'Brabant Flamand'),
(3400, 'LANDEN', 'Brabant Flamand'),
(3440, 'ZOUTLEEUW', 'Brabant Flamand'),
(3450, 'GEETBETS', 'Brabant Flamand'),
(3460, 'BEKKEVOORT', 'Brabant Flamand'),
(3470, 'KORTENAKEN', 'Brabant Flamand'),
(3500, 'HASSELT', 'Limbourg'),
(3520, 'ZONHOVEN', 'Limbourg'),
(3530, 'HOUTHALEN-HELCHTEREN', 'Limbourg'),
(3540, 'HERK-DE-STAD', 'Limbourg'),
(3545, 'HALEN', 'Limbourg'),
(3550, 'HEUSDEN-ZOLDER', 'Limbourg'),
(3560, 'LUMMEN', 'Limbourg'),
(3570, 'ALKEN', 'Limbourg'),
(3580, 'BERINGEN', 'Limbourg'),
(3590, 'DIEPENBEEK', 'Limbourg'),
(3600, 'GENK', 'Limbourg'),
(3620, 'LANAKEN', 'Limbourg'),
(3630, 'MAASMECHELEN', 'Limbourg'),
(3640, 'KINROOI', 'Limbourg'),
(3650, 'DILSEN-STOKKEM', 'Limbourg'),
(3665, 'AS', 'Limbourg'),
(3670, 'OUDSBERGEN', 'Limbourg'),
(3680, 'MAASEIK', 'Limbourg'),
(3690, 'ZUTENDAAL', 'Limbourg'),
(3700, 'TONGEREN', 'Limbourg'),
(3717, 'HERSTAPPE', 'Limbourg'),
(3720, 'KORTESSEM', 'Limbourg'),
(3730, 'HOESELT', 'Limbourg'),
(3740, 'BILZEN', 'Limbourg'),
(3770, 'RIEMST', 'Limbourg'),
(3790, 'FOURONS', 'Limbourg'),
(3800, 'SINT-TRUIDEN', 'Limbourg'),
(3830, 'WELLEN', 'Limbourg'),
(3840, 'BORGLOON', 'Limbourg'),
(3850, 'NIEUWERKERKEN', 'Limbourg'),
(3870, 'HEERS', 'Limbourg'),
(3890, 'GINGELOM', 'Limbourg'),
(3900, 'PELT', 'Limbourg'),
(3920, 'LOMMEL', 'Limbourg'),
(3930, 'HAMONT-ACHEL', 'Limbourg'),
(3940, 'HECHTEL-EKSEL', 'Limbourg'),
(3945, 'HAM', 'Limbourg'),
(3950, 'BOCHOLT', 'Limbourg'),
(3960, 'BREE', 'Limbourg'),
(3970, 'LEOPOLDSBURG', 'Limbourg'),
(3980, 'TESSENDERLO', 'Limbourg'),
(3990, 'PEER', 'Limbourg'),
(4000, 'LIÈGE', 'Liège'),
(4020, 'LIÈGE', 'Liège'),
(4040, 'HERSTAL', 'Liège'),
(4050, 'CHAUDFONTAINE', 'Liège'),
(4100, 'SERAING', 'Liège'),
(4120, 'NEUPRÉ', 'Liège'),
(4130, 'ESNEUX', 'Liège'),
(4140, 'SPRIMONT', 'Liège'),
(4160, 'ANTHISNES', 'Liège'),
(4170, 'COMBLAIN-AU-PONT', 'Liège'),
(4180, 'HAMOIR', 'Liège'),
(4190, 'FERRIÈRES', 'Liège'),
(4210, 'BURDINNE', 'Liège'),
(4217, 'HÉRON', 'Liège'),
(4219, 'WASSEIGES', 'Liège'),
(4250, 'GEER', 'Liège'),
(4257, 'BERLOZ', 'Liège'),
(4260, 'BRAIVES', 'Liège'),
(4280, 'HANNUT', 'Liège'),
(4287, 'LINCENT', 'Liège'),
(4300, 'WAREMME', 'Liège'),
(4317, 'FAIMES', 'Liège'),
(4340, 'AWANS', 'Liège'),
(4347, 'FEXHE-LE-HAUT-CLOCHER', 'Liège'),
(4350, 'REMICOURT', 'Liège'),
(4357, 'DONCEEL', 'Liège'),
(4360, 'OREYE', 'Liège'),
(4367, 'CRISNÉE', 'Liège'),
(4400, 'FLÉMALLE', 'Liège'),
(4420, 'SAINT-NICOLAS', 'Liège'),
(4430, 'ANS', 'Liège'),
(4450, 'JUPRELLE', 'Liège'),
(4460, 'GRÂCE-HOLLOGNE', 'Liège'),
(4470, 'SAINT-GEORGES-SUR-MEUSE', 'Liège'),
(4480, 'ENGIS', 'Liège'),
(4500, 'HUY', 'Liège'),
(4520, 'WANZE', 'Liège'),
(4530, 'VILLERS-LE-BOUILLET', 'Liège'),
(4537, 'VERLAINE', 'Liège'),
(4540, 'AMAY', 'Liège'),
(4550, 'NANDRIN', 'Liège'),
(4557, 'TINLOT', 'Liège'),
(4560, 'CLAVIER', 'Liège'),
(4570, 'MARCHIN', 'Liège'),
(4577, 'MODAVE', 'Liège'),
(4590, 'OUFFET', 'Liège'),
(4600, 'VISÉ', 'Liège'),
(4607, 'DALHEM', 'Liège'),
(4610, 'BEYNE-HEUSAY', 'Liège'),
(4620, 'FLÉRON', 'Liège'),
(4630, 'SOUMAGNE', 'Liège'),
(4650, 'HERVE', 'Liège'),
(4670, 'BLÉGNY', 'Liège'),
(4680, 'OUPEYE', 'Liège'),
(4690, 'BASSENGE', 'Liège'),
(4700, 'EUPEN', 'Liège'),
(4710, 'LONTZEN', 'Liège'),
(4720, 'LA CALAMINE', 'Liège'),
(4730, 'RAEREN', 'Liège'),
(4750, 'BUTGENBACH', 'Liège'),
(4760, 'BULLANGE', 'Liège'),
(4770, 'AMBLÈVE', 'Liège'),
(4780, 'SAINT-VITH', 'Liège'),
(4790, 'BURG-REULAND', 'Liège'),
(4800, 'VERVIERS', 'Liège'),
(4820, 'DISON', 'Liège'),
(4830, 'LIMBOURG', 'Liège'),
(4837, 'BAELEN', 'Liège'),
(4840, 'WELKENRAEDT', 'Liège'),
(4845, 'JALHAY', 'Liège'),
(4850, 'PLOMBIÈRES', 'Liège'),
(4860, 'PEPINSTER', 'Liège'),
(4870, 'TROOZ', 'Liège'),
(4877, 'OLNE', 'Liège'),
(4880, 'AUBEL', 'Liège'),
(4890, 'THIMISTER-CLERMONT', 'Liège'),
(4900, 'SPA', 'Liège'),
(4910, 'THEUX', 'Liège'),
(4920, 'AYWAILLE', 'Liège'),
(4950, 'WAIMES', 'Liège'),
(4960, 'MALMEDY', 'Liège'),
(4970, 'STAVELOT', 'Liège'),
(4980, 'TROIS-PONTS', 'Liège'),
(4987, 'STOUMONT', 'Liège'),
(4990, 'LIERNEUX', 'Liège'),
(5000, 'NAMUR', 'Namur'),
(5030, 'GEMBLOUX', 'Namur'),
(5060, 'SAMBREVILLE', 'Namur'),
(5070, 'FOSSES-LA-VILLE', 'Namur'),
(5080, 'LA BRUYÈRE', 'Namur'),
(5140, 'SOMBREFFE', 'Namur'),
(5150, 'FLOREFFE', 'Namur'),
(5170, 'PROFONDEVILLE', 'Namur'),
(5190, 'JEMEPPE-SUR-SAMBRE', 'Namur'),
(5300, 'ANDENNE', 'Namur'),
(5310, 'EGHEZÉE', 'Namur'),
(5330, 'ASSESSE', 'Namur'),
(5340, 'GESVES', 'Namur'),
(5350, 'OHEY', 'Namur'),
(5360, 'HAMOIS', 'Namur'),
(5370, 'HAVELANGE', 'Namur'),
(5377, 'SOMME-LEUZE', 'Namur'),
(5380, 'FERNELMONT', 'Namur'),
(5500, 'DINANT', 'Namur'),
(5520, 'ONHAYE', 'Namur'),
(5530, 'YVOIR', 'Namur'),
(5537, 'ANHÉE', 'Namur'),
(5540, 'HASTIÈRE', 'Namur'),
(5550, 'VRESSE-SUR-SEMOIS', 'Namur'),
(5555, 'BIÈVRE', 'Namur'),
(5560, 'HOUYET', 'Namur'),
(5570, 'BEAURAING', 'Namur'),
(5575, 'GEDINNE', 'Namur'),
(5580, 'ROCHEFORT', 'Namur'),
(5590, 'CINEY', 'Namur'),
(5600, 'PHILIPPEVILLE', 'Namur'),
(5620, 'FLORENNES', 'Namur'),
(5630, 'CERFONTAINE', 'Namur'),
(5640, 'METTET', 'Namur'),
(5650, 'WALCOURT', 'Namur'),
(5660, 'COUVIN', 'Namur'),
(5670, 'VIROINVAL', 'Namur'),
(5680, 'DOISCHE', 'Namur'),
(6000, 'CHARLEROI', 'Hainaut'),
(6110, 'MONTIGNY-LE-TILLEUL', 'Hainaut'),
(6120, 'HAM-SUR-HEURE', 'Hainaut'),
(6140, 'FONTAINE-L\'EVÊQUE', 'Hainaut'),
(6150, 'ANDERLUES', 'Hainaut'),
(6180, 'COURCELLES', 'Hainaut'),
(6200, 'CHÂTELET', 'Hainaut'),
(6210, 'LES BONS VILLERS', 'Hainaut'),
(6220, 'FLEURUS', 'Hainaut'),
(6230, 'PONT-À-CELLES', 'Hainaut'),
(6240, 'FARCIENNES', 'Hainaut'),
(6250, 'AISEAU-PRESLES', 'Hainaut'),
(6280, 'GERPINNES', 'Hainaut'),
(6440, 'FROIDCHAPELLE', 'Hainaut'),
(6460, 'CHIMAY', 'Hainaut'),
(6470, 'SIVRY-RANCE', 'Hainaut'),
(6500, 'BEAUMONT', 'Hainaut'),
(6530, 'THUIN', 'Hainaut'),
(6540, 'LOBBES', 'Hainaut'),
(6560, 'ERQUELINNES', 'Hainaut'),
(6567, 'MERBES-LE-CHÂTEAU', 'Hainaut'),
(6590, 'MOMIGNIES', 'Hainaut'),
(6600, 'BASTOGNE', 'Luxembourg'),
(6630, 'MARTELANGE', 'Luxembourg'),
(6637, 'FAUVILLERS', 'Luxembourg'),
(6640, 'VAUX-SUR-SÛRE', 'Luxembourg'),
(6660, 'HOUFFALIZE', 'Luxembourg'),
(6670, 'GOUVY', 'Luxembourg'),
(6680, 'SAINTE-ODE', 'Luxembourg'),
(6687, 'BERTOGNE', 'Luxembourg'),
(6690, 'VIELSALM', 'Luxembourg'),
(6700, 'ARLON', 'Luxembourg'),
(6717, 'ATTERT', 'Luxembourg'),
(6720, 'HABAY', 'Luxembourg'),
(6730, 'TINTIGNY', 'Luxembourg'),
(6740, 'ETALLE', 'Luxembourg'),
(6747, 'SAINT-LÉGER', 'Luxembourg'),
(6750, 'MUSSON', 'Luxembourg'),
(6760, 'VIRTON', 'Luxembourg'),
(6767, 'ROUVROY', 'Luxembourg'),
(6769, 'MEIX-DEVANT-VIRTON', 'Luxembourg'),
(6780, 'MESSANCY', 'Luxembourg'),
(6790, 'AUBANGE', 'Luxembourg'),
(6800, 'LIBRAMONT-CHEVIGNY', 'Luxembourg'),
(6810, 'CHINY', 'Luxembourg'),
(6820, 'FLORENVILLE', 'Luxembourg'),
(6830, 'BOUILLON', 'Luxembourg'),
(6840, 'NEUFCHÂTEAU', 'Luxembourg'),
(6850, 'PALISEUL', 'Luxembourg'),
(6860, 'LÉGLISE', 'Luxembourg'),
(6870, 'SAINT-HUBERT', 'Luxembourg'),
(6880, 'BERTRIX', 'Luxembourg'),
(6887, 'HERBEUMONT', 'Luxembourg'),
(6890, 'LIBIN', 'Luxembourg'),
(6900, 'MARCHE-EN-FAMENNE', 'Luxembourg'),
(6920, 'WELLIN', 'Luxembourg'),
(6927, 'TELLIN', 'Luxembourg'),
(6929, 'DAVERDISSE', 'Luxembourg'),
(6940, 'DURBUY', 'Luxembourg'),
(6950, 'NASSOGNE', 'Luxembourg'),
(6960, 'MANHAY', 'Luxembourg'),
(6970, 'TENNEVILLE', 'Luxembourg'),
(6980, 'LA ROCHE-EN-ARDENNE', 'Luxembourg'),
(6987, 'RENDEUX', 'Luxembourg'),
(6990, 'HOTTON', 'Luxembourg'),
(6997, 'EREZÉE', 'Luxembourg'),
(7000, 'MONS', 'Hainaut'),
(7040, 'QUÉVY', 'Hainaut'),
(7050, 'JURBISE', 'Hainaut'),
(7060, 'SOIGNIES', 'Hainaut'),
(7070, 'LE ROEULX', 'Hainaut'),
(7080, 'FRAMERIES', 'Hainaut'),
(7090, 'BRAINE-LE-COMTE', 'Hainaut'),
(7100, 'LA LOUVIÈRE', 'Hainaut'),
(7120, 'ESTINNES', 'Hainaut'),
(7130, 'BINCHE', 'Hainaut'),
(7140, 'MORLANWELZ', 'Hainaut'),
(7160, 'CHAPELLE-LEZ-HERLAIMONT', 'Hainaut'),
(7170, 'MANAGE', 'Hainaut'),
(7180, 'SENEFFE', 'Hainaut'),
(7190, 'ECAUSSINNES', 'Hainaut'),
(7300, 'BOUSSU', 'Hainaut'),
(7320, 'BERNISSART', 'Hainaut'),
(7330, 'SAINT-GHISLAIN', 'Hainaut'),
(7340, 'COLFONTAINE', 'Hainaut'),
(7350, 'HENSIES', 'Hainaut'),
(7370, 'DOUR', 'Hainaut'),
(7380, 'QUIÉVRAIN', 'Hainaut'),
(7387, 'HONNELLES', 'Hainaut'),
(7390, 'QUAREGNON', 'Hainaut'),
(7500, 'TOURNAI', 'Hainaut'),
(7600, 'PÉRUWELZ', 'Hainaut'),
(7610, 'RUMES', 'Hainaut'),
(7620, 'BRUNEHAUT', 'Hainaut'),
(7640, 'ANTOING', 'Hainaut'),
(7700, 'MOUSCRON', 'Hainaut'),
(7730, 'ESTAIMPUIS', 'Hainaut'),
(7740, 'PECQ', 'Hainaut'),
(7750, 'MONT-DE-L\'ENCLUS', 'Hainaut'),
(7760, 'CELLES', 'Hainaut'),
(7780, 'COMINES-WARNETON', 'Hainaut'),
(7800, 'ATH', 'Hainaut'),
(7830, 'SILLY', 'Hainaut'),
(7850, 'ENGHIEN', 'Hainaut'),
(7860, 'LESSINES', 'Hainaut'),
(7870, 'LENS', 'Hainaut'),
(7880, 'FLOBECQ', 'Hainaut'),
(7890, 'ELLEZELLES', 'Hainaut'),
(7900, 'LEUZE-EN-HAINAUT', 'Hainaut'),
(7910, 'FRASNES-LEZ-ANVAING', 'Hainaut'),
(7940, 'BRUGELETTE', 'Hainaut'),
(7950, 'CHIÈVRES', 'Hainaut'),
(7970, 'BELOEIL', 'Hainaut'),
(8000, 'BRUGGE', 'Flandre-Occidentale'),
(8020, 'OOSTKAMP', 'Flandre-Occidentale'),
(8210, 'ZEDELGEM', 'Flandre-Occidentale'),
(8300, 'KNOKKE-HEIST', 'Flandre-Occidentale'),
(8340, 'DAMME', 'Flandre-Occidentale'),
(8370, 'BLANKENBERGE', 'Flandre-Occidentale'),
(8377, 'ZUIENKERKE', 'Flandre-Occidentale'),
(8400, 'OOSTENDE', 'Flandre-Occidentale'),
(8420, 'DE HAAN', 'Flandre-Occidentale'),
(8430, 'MIDDELKERKE', 'Flandre-Occidentale'),
(8450, 'BREDENE', 'Flandre-Occidentale'),
(8460, 'OUDENBURG', 'Flandre-Occidentale'),
(8470, 'GISTEL', 'Flandre-Occidentale'),
(8480, 'ICHTEGEM', 'Flandre-Occidentale'),
(8490, 'JABBEKE', 'Flandre-Occidentale'),
(8500, 'KORTRIJK', 'Flandre-Occidentale'),
(8520, 'KUURNE', 'Flandre-Occidentale'),
(8530, 'HARELBEKE', 'Flandre-Occidentale'),
(8540, 'DEERLIJK', 'Flandre-Occidentale'),
(8550, 'ZWEVEGEM', 'Flandre-Occidentale'),
(8560, 'WEVELGEM', 'Flandre-Occidentale'),
(8570, 'ANZEGEM', 'Flandre-Occidentale'),
(8580, 'AVELGEM', 'Flandre-Occidentale'),
(8587, 'ESPIERRES-HELCHIN', 'Flandre-Occidentale'),
(8600, 'DIKSMUIDE', 'Flandre-Occidentale'),
(8610, 'KORTEMARK', 'Flandre-Occidentale'),
(8620, 'NIEUWPOORT', 'Flandre-Occidentale'),
(8630, 'VEURNE', 'Flandre-Occidentale'),
(8640, 'VLETEREN', 'Flandre-Occidentale'),
(8647, 'LO-RENINGE', 'Flandre-Occidentale'),
(8650, 'HOUTHULST', 'Flandre-Occidentale'),
(8660, 'DE PANNE', 'Flandre-Occidentale'),
(8670, 'KOKSIJDE', 'Flandre-Occidentale'),
(8680, 'KOEKELARE', 'Flandre-Occidentale'),
(8690, 'ALVERINGEM', 'Flandre-Occidentale'),
(8700, 'TIELT', 'Flandre-Occidentale'),
(8710, 'WIELSBEKE', 'Flandre-Occidentale'),
(8720, 'DENTERGEM', 'Flandre-Occidentale'),
(8730, 'BEERNEM', 'Flandre-Occidentale'),
(8740, 'PITTEM', 'Flandre-Occidentale'),
(8750, 'WINGENE', 'Flandre-Occidentale'),
(8755, 'RUISELEDE', 'Flandre-Occidentale'),
(8760, 'MEULEBEKE', 'Flandre-Occidentale'),
(8770, 'INGELMUNSTER', 'Flandre-Occidentale'),
(8780, 'OOSTROZEBEKE', 'Flandre-Occidentale'),
(8790, 'WAREGEM', 'Flandre-Occidentale'),
(8800, 'ROESELARE', 'Flandre-Occidentale'),
(8810, 'LICHTERVELDE', 'Flandre-Occidentale'),
(8820, 'TORHOUT', 'Flandre-Occidentale'),
(8830, 'HOOGLEDE', 'Flandre-Occidentale'),
(8840, 'STADEN', 'Flandre-Occidentale'),
(8850, 'ARDOOIE', 'Flandre-Occidentale'),
(8860, 'LENDELEDE', 'Flandre-Occidentale'),
(8870, 'IZEGEM', 'Flandre-Occidentale'),
(8880, 'LEDEGEM', 'Flandre-Occidentale'),
(8890, 'MOORSLEDE', 'Flandre-Occidentale'),
(8900, 'IEPER', 'Flandre-Occidentale'),
(8920, 'LANGEMARK-POELKAPELLE', 'Flandre-Occidentale'),
(8930, 'MENEN', 'Flandre-Occidentale'),
(8940, 'WERVIK', 'Flandre-Occidentale'),
(8950, 'HEUVELLAND', 'Flandre-Occidentale'),
(8957, 'MESSINES', 'Flandre-Occidentale'),
(8970, 'POPERINGE', 'Flandre-Occidentale'),
(8980, 'ZONNEBEKE', 'Flandre-Occidentale'),
(9000, 'GENT', 'Flandre-Orientale'),
(9060, 'ZELZATE', 'Flandre-Orientale'),
(9070, 'DESTELBERGEN', 'Flandre-Orientale'),
(9080, 'LOCHRISTI', 'Flandre-Orientale'),
(9090, 'MELLE', 'Flandre-Orientale'),
(9100, 'SINT-NIKLAAS', 'Flandre-Orientale'),
(9120, 'BEVEREN-WAAS', 'Flandre-Orientale'),
(9140, 'TEMSE', 'Flandre-Orientale'),
(9150, 'KRUIBEKE', 'Flandre-Orientale'),
(9160, 'LOKEREN', 'Flandre-Orientale'),
(9170, 'SINT-GILLIS-WAAS', 'Flandre-Orientale'),
(9180, 'MOERBEKE-WAAS', 'Flandre-Orientale'),
(9185, 'WACHTEBEKE', 'Flandre-Orientale'),
(9190, 'STEKENE', 'Flandre-Orientale'),
(9200, 'DENDERMONDE', 'Flandre-Orientale'),
(9220, 'HAMME', 'Flandre-Orientale'),
(9230, 'WETTEREN', 'Flandre-Orientale'),
(9240, 'ZELE', 'Flandre-Orientale'),
(9250, 'WAASMUNSTER', 'Flandre-Orientale'),
(9255, 'BUGGENHOUT', 'Flandre-Orientale'),
(9260, 'WICHELEN', 'Flandre-Orientale'),
(9270, 'LAARNE', 'Flandre-Orientale'),
(9280, 'LEBBEKE', 'Flandre-Orientale'),
(9290, 'BERLARE', 'Flandre-Orientale'),
(9300, 'AALST', 'Flandre-Orientale'),
(9340, 'LEDE', 'Flandre-Orientale'),
(9400, 'NINOVE', 'Flandre-Orientale'),
(9420, 'ERPE-MERE', 'Flandre-Orientale'),
(9450, 'HAALTERT', 'Flandre-Orientale'),
(9470, 'DENDERLEEUW', 'Flandre-Orientale'),
(9500, 'GERAARDSBERGEN', 'Flandre-Orientale'),
(9520, 'SINT-LIEVENS-HOUTEM', 'Flandre-Orientale'),
(9550, 'HERZELE', 'Flandre-Orientale'),
(9570, 'LIERDE', 'Flandre-Orientale'),
(9600, 'RENAIX', 'Flandre-Orientale'),
(9620, 'ZOTTEGEM', 'Flandre-Orientale'),
(9630, 'ZWALM', 'Flandre-Orientale'),
(9660, 'BRAKEL', 'Flandre-Orientale'),
(9667, 'HOREBEKE', 'Flandre-Orientale'),
(9680, 'MAARKEDAL', 'Flandre-Orientale'),
(9690, 'KLUISBERGEN', 'Flandre-Orientale'),
(9700, 'OUDENAARDE', 'Flandre-Orientale'),
(9770, 'KRUISEM', 'Flandre-Orientale'),
(9790, 'WORTEGEM-PETEGEM', 'Flandre-Orientale'),
(9800, 'DEINZE', 'Flandre-Orientale'),
(9810, 'NAZARETH', 'Flandre-Orientale'),
(9820, 'MERELBEKE', 'Flandre-Orientale'),
(9830, 'SINT-MARTENS-LATEM', 'Flandre-Orientale'),
(9840, 'DE PINTE', 'Flandre-Orientale'),
(9860, 'OOSTERZELE', 'Flandre-Orientale'),
(9870, 'ZULTE', 'Flandre-Orientale'),
(9880, 'AALTER', 'Flandre-Orientale'),
(9890, 'GAVERE', 'Flandre-Orientale'),
(9900, 'EEKLO', 'Flandre-Orientale'),
(9930, 'LIEVEGEM', 'Flandre-Orientale'),
(9940, 'EVERGEM', 'Flandre-Orientale'),
(9960, 'ASSENEDE', 'Flandre-Orientale'),
(9970, 'KAPRIJKE', 'Flandre-Orientale'),
(9980, 'SINT-LAUREINS', 'Flandre-Orientale'),
(9990, 'MALDEGEM', 'Flandre-Orientale');

-- --------------------------------------------------------

--
-- Table structure for table `Domaine`
--

DROP TABLE IF EXISTS `Domaine`;
CREATE TABLE `Domaine` (
  `DomID` int(11) NOT NULL,
  `DomTitre` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Domaine`
--

INSERT INTO `Domaine` (`DomID`, `DomTitre`) VALUES
(1, 'Urbanisme'),
(2, 'Technique'),
(3, 'Finance'),
(4, 'Informatique');

-- --------------------------------------------------------

--
-- Table structure for table `Employe`
--

DROP TABLE IF EXISTS `Employe`;
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
(32, 'Bruel', 'Patrick', 'patrick@bruel.be', 1370, 2, 2, 'non'),
(33, 'Stiers', 'Nathan', 'nath@stiers.be', 1430, 4, 4, 'non'),
(34, 'Schyns', 'Noa', 'noe@schyns.be', 1410, 9, 4, 'non'),
(35, 'Addhari', 'Selim', 'selim@ad.com', 1310, 6, 2, 'non'),
(38, 'Dumont', 'Laurent', 'laurent@dumont.com', 1350, 5, 3, 'non'),
(39, 'Claude', 'Cabri', 'claude@cabri.com', 6200, 8, 3, 'oui'),
(40, 'Varre', 'Julie', 'julie@varre.be', 4217, 1, 4, 'oui'),
(41, 'Storder', 'Sacha', 'sacha@storder.be', 2160, 1, 1, 'oui'),
(42, 'Grosfils', 'Harold', 'harold@grosfils.com', 1150, 1, 1, 'oui'),
(43, 'Binamé', 'Adrien', 'adrien@biname.com', 1080, 6, 2, 'oui'),
(44, 'Nesse', 'Emma', 'emma@ness.be', 3580, 8, 1, 'non'),
(45, 'Preijs', 'Sandrine', 'sandrine@preijs.be', 4560, 1, 4, 'oui'),
(46, 'Gooris', 'Kali', 'kali@gooris.com', 1000, 1, 1, 'oui'),
(47, 'Gooris', 'Sandrine', 'sandrine@gooris.be', 1200, 8, 4, 'oui'),
(48, 'Neige', 'Blanche', 'blanche@neige.be', 1190, 7, 2, 'non'),
(50, 'kirale', 'Sha', 'sha@kirale.be', 1310, 4, 4, 'oui'),
(51, 'Tic', 'Tac', 'tic@tac.be', 1140, 2, 3, 'oui'),
(52, 'Georges', 'Louis', 'louis@goeroge.be', 1460, 7, 1, 'oui');

-- --------------------------------------------------------

--
-- Table structure for table `Locomotion`
--

DROP TABLE IF EXISTS `Locomotion`;
CREATE TABLE `Locomotion` (
  `LocID` int(11) NOT NULL,
  `LocTitre` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Locomotion`
--

INSERT INTO `Locomotion` (`LocID`, `LocTitre`) VALUES
(1, 'voiture'),
(2, 'vélo'),
(3, 'pied'),
(4, 'bus'),
(5, 'autre'),
(6, 'tank'),
(7, 'balais'),
(8, 'panda'),
(9, 'gondole');

-- --------------------------------------------------------

--
-- Table structure for table `Participation`
--

DROP TABLE IF EXISTS `Participation`;
CREATE TABLE `Participation` (
  `ParID` int(11) NOT NULL,
  `ParActID` int(11) NOT NULL,
  `ParEmpID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Participation`
--

INSERT INTO `Participation` (`ParID`, `ParActID`, `ParEmpID`) VALUES
(1, 25, 26),
(3, 21, 28),
(4, 21, 29),
(7, 25, 32),
(8, 22, 33),
(9, 25, 34),
(10, 23, 35),
(13, 21, 38),
(14, 21, 39),
(15, 22, 40),
(16, 24, 42),
(17, 23, 43),
(18, 21, 44),
(19, 24, 45),
(20, 21, 46),
(21, 24, 47),
(22, 24, 48),
(24, 23, 50),
(25, 22, 51),
(26, 23, 52);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Activite`
--
ALTER TABLE `Activite`
  ADD PRIMARY KEY (`ActID`);

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`AdmID`);

--
-- Indexes for table `CodePostal`
--
ALTER TABLE `CodePostal`
  ADD PRIMARY KEY (`CpCode`);

--
-- Indexes for table `Domaine`
--
ALTER TABLE `Domaine`
  ADD PRIMARY KEY (`DomID`);

--
-- Indexes for table `Employe`
--
ALTER TABLE `Employe`
  ADD PRIMARY KEY (`EmpID`);

--
-- Indexes for table `Locomotion`
--
ALTER TABLE `Locomotion`
  ADD PRIMARY KEY (`LocID`);

--
-- Indexes for table `Participation`
--
ALTER TABLE `Participation`
  ADD PRIMARY KEY (`ParID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Activite`
--
ALTER TABLE `Activite`
  MODIFY `ActID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `Admin`
--
ALTER TABLE `Admin`
  MODIFY `AdmID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Domaine`
--
ALTER TABLE `Domaine`
  MODIFY `DomID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Employe`
--
ALTER TABLE `Employe`
  MODIFY `EmpID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `Locomotion`
--
ALTER TABLE `Locomotion`
  MODIFY `LocID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Participation`
--
ALTER TABLE `Participation`
  MODIFY `ParID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
