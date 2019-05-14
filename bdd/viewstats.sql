-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 14 mai 2019 à 10:23
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `viewstats`
--

-- --------------------------------------------------------

--
-- Structure de la table `agents`
--

DROP TABLE IF EXISTS `agents`;
CREATE TABLE IF NOT EXISTS `agents` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `age` mediumint(9) DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ville` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `telephone` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `agents`
--

INSERT INTO `agents` (`id`, `nom`, `prenom`, `age`, `adresse`, `ville`, `telephone`, `email`) VALUES
(1, 'Bowers', 'Fulton', 27, '682-9275 Ut Av.', 'Wenduine', '08 45 24 60 80', 'aliquet.molestie@magnaUt.co.uk'),
(2, 'Irwin', 'Buckminster', 28, 'CP 184, 1232 Id Route', 'Pietrarubbia', '06 68 82 85 16', 'Quisque@euligula.co.uk'),
(3, 'Lloyd', 'Oliver', 43, 'CP 963, 4126 Dis Route', 'Cavaion Veronese', '06 18 32 11 79', 'libero@habitantmorbi.org'),
(4, 'Fernandez', 'Ferdinand', 35, '2950 Diam Av.', 'Sunset Point', '01 43 26 13 02', 'adipiscing.enim.mi@tellusloremeu.edu'),
(5, 'Robinson', 'Jordan', 33, '675-730 Sit Chemin', 'San Juan de la Costa', '03 15 54 00 81', 'libero@maurisIntegersem.co.uk'),
(6, 'Austin', 'Ezra', 30, 'CP 176, 3017 Et Impasse', 'Dingwall', '06 88 18 04 21', 'scelerisque@quamPellentesquehabitant.net'),
(7, 'Stokes', 'Salvador', 30, 'CP 924, 3025 Vitae, Rd.', 'Greenock', '07 87 60 33 98', 'Sed.nunc@Donecat.co.uk'),
(8, 'Rosario', 'Tyler', 44, 'CP 981, 2146 Dis Rd.', 'Santa Inês', '03 95 81 33 66', 'quis@porttitor.org'),
(9, 'Bender', 'Stone', 49, 'Appartement 761-6482 Malesuada Av.', 'Hoyerswerda', '09 59 03 90 55', 'nec.quam.Curabitur@quisdiam.co.uk'),
(10, 'Gray', 'Quinlan', 37, 'Appartement 515-2894 In Rue', 'Waterloo', '06 04 30 34 70', 'Vivamus.nisi@etliberoProin.org'),
(11, 'Padilla', 'Jin', 38, '843-300 Turpis. Av.', 'Kayseri', '03 66 08 72 72', 'magna.nec@non.org'),
(12, 'Duffy', 'Hall', 44, 'CP 218, 1308 Dui Ave', 'Hanau', '01 77 21 13 65', 'eu.neque@cursusInteger.com'),
(13, 'Cline', 'Merrill', 34, 'CP 481, 4655 Ac Avenue', 'Trazegnies', '05 62 99 44 53', 'habitant.morbi.tristique@risusDuis.edu'),
(14, 'Savage', 'Stewart', 45, '530-4403 Nullam Rd.', 'Sooke', '07 75 87 25 88', 'tellus@eratin.edu'),
(15, 'Maddox', 'Jason', 42, '6417 Nec, Route', 'Rödermark', '04 82 74 35 79', 'lobortis.Class.aptent@ullamcorpereueuismod.org'),
(16, 'Wong', 'Zephania', 27, '1513 Libero Chemin', 'Copertino', '06 77 04 13 07', 'elit@torquentper.co.uk'),
(17, 'Knox', 'Austin', 34, '6253 Magna Route', 'Gualdo Cattaneo', '05 06 37 49 50', 'nec.leo@nascetur.ca'),
(18, 'Hudson', 'Rooney', 26, '1114 Semper Rue', 'HŽron', '03 76 83 65 48', 'Curae@Phasellusat.co.uk'),
(19, 'Solomon', 'Grant', 34, '6466 Magna. Rd.', 'La Cruz', '05 61 57 94 89', 'quam.Pellentesque.habitant@turpisNullaaliquet.org'),
(20, 'Palmer', 'Ryan', 31, 'CP 127, 7722 Tincidunt Impasse', 'Sesto Campano', '03 20 90 04 10', 'sit.amet@veliteget.co.uk'),
(21, 'Horn', 'Grant', 40, '829-5873 Varius Impasse', 'Panchià', '05 31 10 09 46', 'eget@venenatis.ca'),
(22, 'Santos', 'Grant', 31, '531-2903 Massa. Rd.', 'Vorst', '07 11 24 37 53', 'non@penatibus.co.uk'),
(23, 'Sanchez', 'Tyrone', 38, '4946 Magna. Rue', 'Goutroux', '01 63 12 31 31', 'molestie.sodales@Donecfeugiatmetus.net'),
(24, 'Garrison', 'Hunter', 46, 'CP 913, 2170 Facilisis Av.', 'Burdinne', '04 47 04 17 67', 'nec@auguemalesuadamalesuada.ca'),
(25, 'Pope', 'Callum', 42, '4888 Enim. Impasse', 'Umbertide', '09 92 78 53 89', 'adipiscing.Mauris@Maurisblandit.com'),
(26, 'Melton', 'Gary', 46, 'Appartement 672-746 Dolor Chemin', 'San Isidro', '04 64 52 75 36', 'dictum.ultricies@tempusrisusDonec.ca'),
(27, 'Kirby', 'Christopher', 30, '377-9814 Consectetuer Ave', 'Canora', '01 03 46 10 67', 'neque@sitamet.ca'),
(28, 'Estes', 'Armando', 39, 'CP 956, 1687 Condimentum Avenue', 'Duluth', '05 57 56 43 99', 'nec.tellus@placeratorcilacus.edu'),
(29, 'Sutton', 'Finn', 31, '7147 Magna Ave', 'St. Albert', '02 80 14 58 08', 'molestie.in.tempus@loremtristiquealiquet.net'),
(30, 'Kent', 'John', 49, '3358 Sed Route', 'Scala Coeli', '07 46 65 67 84', 'semper.Nam.tempor@purusMaecenas.com'),
(31, 'Ayala', 'Oren', 29, '7601 Donec Chemin', 'Bourges', '06 28 53 97 56', 'nec@liberoInteger.com'),
(32, 'Case', 'Wang', 34, '150-7938 Ullamcorper Rd.', 'Eugene', '05 29 69 18 96', 'Donec@arcu.com'),
(33, 'Roberts', 'Jesse', 38, '6357 Nunc Av.', 'Kasur', '03 52 20 97 50', 'sodales.purus@scelerisque.net'),
(34, 'Kent', 'Xavier', 35, '6580 Purus Ave', 'Kanchrapara', '04 99 39 40 47', 'est.Mauris@odio.org'),
(35, 'Morse', 'Chaim', 38, '3911 Erat Route', 'Malonne', '08 04 11 05 95', 'vehicula.aliquet@euismodindolor.net'),
(36, 'Anthony', 'Vance', 44, 'CP 588, 4244 Elit Av.', 'Cour-sur-Heure', '06 87 95 53 42', 'tellus@urnanec.ca'),
(37, 'Herman', 'Perry', 41, 'CP 779, 9265 Quis Ave', 'Jodoigne-Souveraine', '07 75 46 07 35', 'Sed.molestie.Sed@ac.co.uk'),
(38, 'Tran', 'Rooney', 48, 'Appartement 998-3453 Donec Rue', 'Lamorteau', '09 57 16 78 93', 'fringilla@Maurisblanditenim.edu'),
(39, 'Watts', 'Daquan', 32, 'Appartement 673-2818 Mauris. Impasse', 'Marano Lagunare', '06 94 01 28 25', 'neque@mollislectuspede.co.uk'),
(40, 'Barton', 'Lucas', 47, '622-5681 Dui. Chemin', 'Motta Camastra', '09 02 15 09 21', 'interdum@Sedcongue.com'),
(41, 'Swanson', 'Chancellor', 43, '817-9714 Consectetuer Rue', 'Hohen Neuendorf', '03 82 81 12 89', 'ipsum.sodales@ipsum.co.uk'),
(42, 'Patterson', 'Gregory', 44, 'Appartement 188-2393 Elit. Route', 'Snaaskerke', '08 22 02 45 41', 'ut.pharetra.sed@duiquis.net'),
(43, 'Ramos', 'Stephen', 47, 'Appartement 955-2818 Nulla Rue', 'Nancagua', '02 67 22 11 18', 'vehicula.risus@auctor.co.uk'),
(44, 'Garner', 'Stephen', 47, 'CP 491, 5330 Eu Impasse', 'Morinville', '02 29 82 06 61', 'elementum@dui.com'),
(45, 'Cook', 'Tate', 30, 'CP 448, 324 Ligula. Chemin', 'Sint-Laureins-Berchem', '03 91 22 97 47', 'Nullam.enim@semelitpharetra.com'),
(46, 'Petty', 'Kelly', 43, 'Appartement 558-8102 Neque. Chemin', 'Langholm', '08 88 05 88 75', 'erat.nonummy.ultricies@vel.com'),
(47, 'James', 'Garrison', 36, 'CP 258, 6381 Aliquam Chemin', 'Stene', '04 33 76 99 41', 'erat.neque@eget.co.uk'),
(48, 'Shepard', 'Baxter', 33, 'Appartement 524-5923 Ullamcorper Impasse', 'Chandannagar', '05 29 54 48 03', 'fames@tristiquepellentesquetellus.net'),
(49, 'Schneider', 'Dillon', 37, 'CP 332, 1130 Nullam Ave', 'Meeswijk', '02 90 53 67 56', 'et.magnis@mus.ca'),
(50, 'Parrish', 'Kasper', 37, '925-1218 Proin Chemin', 'Hualqui', '03 09 23 50 22', 'conubia.nostra@pellentesqueSeddictum.co.uk'),
(51, 'Guy', 'Hilel', 45, '6903 Nibh. Rd.', 'Moricone', '06 55 30 70 36', 'Aliquam.erat.volutpat@bibendumsedest.org'),
(52, 'Payne', 'Rahim', 43, 'CP 233, 7308 Ut Avenue', 'Limal', '03 66 79 57 21', 'ridiculus.mus.Proin@in.net'),
(53, 'Garcia', 'Oleg', 40, 'CP 352, 3196 Lacinia Avenue', 'Bologna', '09 57 05 02 99', 'est@ante.ca'),
(54, 'Mccall', 'Kirk', 43, '205-7573 Nullam Rd.', 'Ansfelden', '01 13 95 90 76', 'lacinia.vitae@Donecluctusaliquet.net'),
(55, 'Guzman', 'Barrett', 40, 'CP 963, 5180 Lorem Impasse', 'Biloxi', '03 05 16 01 35', 'adipiscing@Donecsollicitudinadipiscing.org'),
(56, 'Malone', 'Davis', 48, 'CP 357, 2719 Feugiat Impasse', 'San Martino in Badia/St. Martin in Thurn', '07 52 61 72 64', 'ac.tellus.Suspendisse@purus.co.uk'),
(57, 'Watkins', 'Tucker', 48, 'CP 562, 8196 Elit Route', 'Sioux City', '06 01 96 59 11', 'aliquet.diam@at.ca'),
(58, 'Hodges', 'Demetrius', 28, '5824 Nulla. Ave', 'João Pessoa', '01 40 09 88 81', 'vitae@nequenonquam.co.uk'),
(59, 'Bruce', 'Keaton', 49, '678-3739 Interdum. Av.', 'Varena', '04 04 15 36 48', 'adipiscing.elit.Etiam@dictumplacerataugue.ca'),
(60, 'Collins', 'Kieran', 34, 'Appartement 774-1002 Aliquam Rue', 'Salerno', '07 01 42 87 08', 'adipiscing.elit@risusDuis.edu'),
(61, 'Maynard', 'Walter', 47, '865-3144 Egestas Rd.', 'Ancarano', '05 38 00 91 66', 'laoreet.posuere.enim@idliberoDonec.co.uk'),
(62, 'Rasmussen', 'Harrison', 27, '3289 Penatibus Chemin', 'Sosnowiec', '01 98 13 67 23', 'bibendum@fames.org'),
(63, 'Gonzalez', 'Zeus', 40, 'CP 904, 5500 Eu Av.', 'Gaya', '08 51 56 41 31', 'Donec.est@urnaet.com'),
(64, 'Padilla', 'Phillip', 27, '5305 Enim. Avenue', 'Blenheim', '04 12 76 64 73', 'ultrices.mauris.ipsum@dolorNullasemper.org'),
(65, 'Hart', 'Hayden', 49, '754-5925 Ipsum. Avenue', 'Rijkevorsel', '05 26 22 01 71', 'dignissim.lacus.Aliquam@justoProin.co.uk'),
(66, 'Casey', 'Walker', 44, '9007 Neque Rd.', 'Sacramento', '05 51 42 94 82', 'velit@Duis.co.uk'),
(67, 'Bean', 'Merrill', 47, 'CP 790, 7639 Neque Ave', 'Richmond', '08 10 93 58 44', 'tortor.nibh.sit@ligulaAeneaneuismod.net'),
(68, 'Little', 'Merritt', 47, '919-3476 Ligula Ave', 'Lerum', '08 32 62 73 76', 'ut.sem.Nulla@nonegestasa.edu'),
(69, 'Montgomery', 'Demetrius', 33, 'CP 557, 8202 Orci Ave', 'Heestert', '01 89 60 63 75', 'est.Nunc.laoreet@Cum.com'),
(70, 'Tanner', 'Garth', 37, 'CP 876, 1562 Aliquam Impasse', 'Bossire', '04 85 36 90 78', 'a.arcu.Sed@posuere.org'),
(71, 'Peck', 'Edward', 44, 'CP 401, 3452 In Route', 'Tonk', '03 53 26 82 24', 'fermentum@euismod.org'),
(72, 'Turner', 'Hamilton', 33, '781-744 Rhoncus. Av.', 'Thurso', '02 50 43 45 10', 'sem.vitae@ullamcorperDuisat.net'),
(73, 'Shields', 'Benjamin', 46, '220-2926 Fringilla Avenue', 'Verrebroek', '02 02 67 15 97', 'facilisis.Suspendisse.commodo@leoMorbineque.ca'),
(74, 'Cline', 'Abel', 47, 'Appartement 579-4352 Dui Chemin', 'Nijkerk', '04 56 90 65 21', 'Aliquam.erat.volutpat@sit.com'),
(75, 'Ward', 'Rahim', 33, 'CP 819, 9434 Molestie Av.', 'San Marcello', '09 61 23 38 06', 'non.egestas.a@dui.ca'),
(76, 'Spencer', 'Jerome', 32, '8259 Pede Av.', 'Dion-Valmont', '02 80 48 98 76', 'Vestibulum.ante.ipsum@nisl.edu'),
(77, 'Perkins', 'Raphael', 27, 'CP 590, 5145 Nullam Avenue', 'Coldstream', '08 23 47 50 48', 'enim.condimentum.eget@Integervulputaterisus.com'),
(78, 'Levy', 'Eric', 35, '558-6075 Dictum Impasse', 'Rulles', '05 84 78 49 17', 'Cum@Suspendissesagittis.com'),
(79, 'Mullen', 'Jamal', 46, 'CP 115, 3483 Dictum Avenue', 'Doel', '08 86 23 25 94', 'mauris.sapien.cursus@pellentesque.edu'),
(80, 'Hinton', 'Rudyard', 37, 'CP 257, 2337 Morbi Ave', 'Autelbas', '06 44 22 23 75', 'neque.pellentesque.massa@lacusUtnec.ca'),
(81, 'Campos', 'Caldwell', 31, 'CP 704, 7832 Sed, Impasse', 'Trani', '06 58 30 55 76', 'accumsan@turpisnecmauris.org'),
(82, 'Skinner', 'Tate', 46, '417-3829 Etiam Chemin', 'Itter', '08 07 37 96 51', 'tellus.eu.augue@metus.co.uk'),
(83, 'Mcfadden', 'Hop', 48, 'CP 574, 2797 Aliquet, Rue', 'Thionville', '09 89 01 30 56', 'Aenean@utmiDuis.net'),
(84, 'Byers', 'Zeph', 42, '8332 Blandit Av.', 'La Higuera', '04 62 04 95 13', 'Mauris@a.ca'),
(85, 'Mcconnell', 'Ezekiel', 28, 'Appartement 296-5074 Cras Ave', 'Camrose', '05 75 89 19 51', 'nisi@nonquam.co.uk'),
(86, 'Buckner', 'Nigel', 45, '352-7106 Suscipit Chemin', 'Kukatpalle', '09 66 53 07 97', 'Nunc@diamnunc.edu'),
(87, 'Cleveland', 'Chandler', 34, '1110 Duis Rd.', 'Darwin', '02 07 04 76 34', 'at.velit.Cras@Cumsociis.com'),
(88, 'Aguirre', 'Keefe', 41, 'Appartement 853-8288 Est Avenue', 'Pinto', '09 88 21 88 08', 'faucibus.leo@Phasellus.org'),
(89, 'Bolton', 'Marsden', 48, '115-9182 Tellus. Ave', 'Köthen', '08 85 27 40 78', 'ut.nulla.Cras@Classaptenttaciti.com'),
(90, 'Anthony', 'Herrod', 29, 'Appartement 513-4128 Phasellus Route', 'Bekkerzeel', '07 32 92 08 20', 'et@Fusce.ca'),
(91, 'West', 'Axel', 45, '659-905 Ipsum. Rd.', 'Lille', '03 29 76 53 90', 'lorem@nibh.org'),
(92, 'Warner', 'Felix', 47, '800-4471 Sem Chemin', 'Fresno', '08 47 31 71 14', 'Fusce@aptenttaciti.net'),
(93, 'Gibson', 'Hasad', 38, 'Appartement 471-7587 Quis Ave', 'Etobicoke', '02 18 00 71 66', 'mauris@pharetra.co.uk'),
(94, 'Smith', 'Kuame', 44, '275-6466 Eget, Av.', 'San Martino in Pensilis', '03 48 14 64 22', 'auctor.velit@feugiat.co.uk'),
(95, 'Levine', 'Donovan', 46, '4951 Parturient Av.', 'Cumnock', '08 29 32 52 73', 'id.nunc@auguemalesuadamalesuada.ca'),
(96, 'Sosa', 'Russell', 47, 'CP 633, 7571 Metus. Rue', 'Bearberry', '09 57 25 40 74', 'mi@metus.net'),
(97, 'Bowen', 'Denton', 42, 'CP 490, 3269 Turpis. Avenue', 'Valfabbrica', '06 75 69 28 74', 'aliquet.vel.vulputate@elitCurabitur.edu'),
(98, 'Mcleod', 'Ezra', 43, '370-1710 Imperdiet Route', 'Amravati', '03 93 70 23 66', 'tempor.lorem@Namtempor.com'),
(99, 'Bernard', 'Benjamin', 29, '8197 Eu Av.', 'Attimis', '01 63 96 59 90', 'nec@Sed.co.uk'),
(100, 'Coleman', 'Lawrence', 39, 'Appartement 321-1820 Malesuada Rue', 'Sombreffe', '01 23 15 75 38', 'Aenean.egestas@ut.com');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) COLLATE utf8_bin NOT NULL,
  `email` varchar(200) COLLATE utf8_bin NOT NULL,
  `password` varchar(200) COLLATE utf8_bin NOT NULL,
  `role` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `username`, `email`, `password`, `role`) VALUES
(1, 'admin', 'admin@mail.com', 'password123', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
