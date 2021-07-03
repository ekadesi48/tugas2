-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2020 at 08:57 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `northwind`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(15) DEFAULT NULL,
  `Description` text,
  `Picture` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`, `Picture`) VALUES
(1, 'Beveragess', 'Soft drinks, coffees, teas, beers, and ales', NULL),
(2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings', ''),
(3, 'Confections', 'Desserts, candies, and sweet breads', ''),
(4, 'Dairy Products', 'Cheeses', ''),
(5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal', ''),
(6, 'Meat/Poultry', 'Prepared meats', ''),
(7, 'Produce', 'Dried fruit and bean curd', ''),
(8, 'dresses', 'female fashion', NULL),
(9, 'Pramoedya Anant', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` varchar(5) NOT NULL DEFAULT '',
  `CompanyName` varchar(40) DEFAULT NULL,
  `ContactName` varchar(30) DEFAULT NULL,
  `ContactTitle` varchar(30) DEFAULT NULL,
  `Address` varchar(60) DEFAULT NULL,
  `City` varchar(15) DEFAULT NULL,
  `Region` varchar(15) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `Country` varchar(15) DEFAULT NULL,
  `Phone` varchar(24) DEFAULT NULL,
  `Fax` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
('ALFKI', 'Alfreds Futterkiste', 'Maria Anders', 'Sales Representative', 'Obere Str. 57', 'Berlin', '', '12209', 'Germany', '030-0074321', '030-0076545'),
('ANATR', 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Owner', 'Avda. de la Constituci?n 2222', 'M?xico D.F.', '', '05021', 'Mexico', '(5) 555-4729', '(5) 555-3745'),
('ANTON', 'ANTON', 'PT Jaya Abadi', 'Owner', 'Mataderos  2312', 'M?xico D.F.', '', '05023', 'Mexico', '(5) 555-3932', ''),
('AROUT', 'Around the Horn', 'Thomas Hardy', 'Sales Representative', '120 Hanover Sq.', 'London', '', 'WA1 1DP', 'United Kingdom', '(171) 555-7788', '(171) 555-6750'),
('BERGS', 'Berglunds snabbk?p', 'Christina Berglund', 'Order Administrator', 'Berguvsv?gen  8', 'Lule?', '', 'S-958 22', 'Sweden', '0921-12 34 65', '0921-12 34 67'),
('BLAUS', 'Blauer See Delikatessen', 'Hanna Moos', 'Sales Representative', 'Forsterstr. 57', 'Mannheim', '', '68306', 'Germany', '0621-08460', '0621-08924'),
('BLONP', 'Blondel p?re et fils', 'Fr?d?rique Citeaux', 'Marketing Manager', '24, place Kl?ber', 'Strasbourg', '', '67000', 'France', '88.60.15.31', '88.60.15.32'),
('BOLID', 'B?lido Comidas preparadas', 'Mart?n Sommer', 'Owner', 'C/ Araquil, 67', 'Madrid', '', '28023', 'Spain', '(91) 555 22 82', '(91) 555 91 99'),
('BONAP', 'Bon app\'', 'Laurence Lebihan', 'Owner', '12, rue des Bouchers', 'Marseille', '', '13008', 'France', '91.24.45.40', '91.24.45.41'),
('BOTTM', 'Bottom-Dollar Markets', 'Elizabeth Lincoln', 'Accounting Manager', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada', '(604) 555-4729', '(604) 555-3745'),
('BSBEV', 'B\'s Beverages', 'Victoria Ashworth', 'Sales Representative', 'Fauntleroy Circus', 'London', '', 'EC2 5NT', 'United Kingdom', '(171) 555-1212', ''),
('CACTU', 'Cactus Comidas para llevar', 'Patricio Simpson', 'Sales Agent', 'Cerrito 333', 'Buenos Aires', '', '1010', 'Argentina', '(1) 135-5555', '(1) 135-4892'),
('CENTC', 'Centro comercial Moctezuma', 'Francisco Chang', 'Marketing Manager', 'Sierras de Granada 9993', 'M?xico D.F.', '', '05022', 'Mexico', '(5) 555-3392', '(5) 555-7293'),
('CHOPS', 'Chop-suey Chinese', 'Yang Wang', 'Owner', 'Hauptstr. 29', 'Bern', '', '3012', 'Switzerland', '0452-076545', ''),
('COMMI', 'Com?rcio Mineiro', 'Pedro Afonso', 'Sales Associate', 'Av. dos Lus?adas, 23', 'S?o Paulo', 'SP', '05432-043', 'Brazil', '(11) 555-7647', ''),
('CONSH', 'Consolidated Holdings', 'Elizabeth Brown', 'Sales Representative', 'Berkeley Gardens\r\n12  Brewery', 'London', '', 'WX1 6LT', 'United Kingdom', '(171) 555-2282', '(171) 555-9199'),
('DRACD', 'Drachenblut Delikatessen', 'Sven Ottlieb', 'Order Administrator', 'Walserweg 21', 'Aachen', '', '52066', 'Germany', '0241-039123', '0241-059428'),
('dsfsd', ';', 'asdas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('DUMON', 'Du monde entier', 'Janine Labrune', 'Owner', '67, rue des Cinquante Otages', 'Nantes', '', '44000', 'France', '40.67.88.88', '40.67.89.89'),
('EASTC', 'Eastern Connection', 'Ann Devon', 'Sales Agent', '35 King George', 'London', '', 'WX3 6FW', 'United Kingdom', '(171) 555-0297', '(171) 555-3373'),
('ERNSH', 'Ernst Handel', 'Roland Mendel', 'Sales Manager', 'Kirchgasse 6', 'Graz', '', '8010', 'Austria', '7675-3425', '7675-3426'),
('FAMIA', 'Familia Arquibaldo', 'Aria Cruz', 'Marketing Assistant', 'Rua Or?s, 92', 'S?o Paulo', 'SP', '05442-030', 'Brazil', '(11) 555-9857', ''),
('FISSA', 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'Accounting Manager', 'C/ Moralzarzal, 86', 'Madrid', '', '28034', 'Spain', '(91) 555 94 44', '(91) 555 55 93'),
('FOLIG', 'Folies gourmandes', 'Martine Ranc', 'Assistant Sales Agent', '184, chauss?e de Tournai', 'Lille', '', '59000', 'France', '20.16.10.16', '20.16.10.17'),
('FOLKO', 'Folk och f? HB', 'Maria Larsson', 'Owner', '?kergatan 24', 'Br?cke', '', 'S-844 67', 'Sweden', '0695-34 67 21', ''),
('FRANK', 'Frankenversand', 'Peter Franken', 'Marketing Manager', 'Berliner Platz 43', 'M?nchen', '', '80805', 'Germany', '089-0877310', '089-0877451'),
('FRANR', 'France restauration', 'Carine Schmitt', 'Marketing Manager', '54, rue Royale', 'Nantes', '', '44000', 'France', '40.32.21.21', '40.32.21.20'),
('FRANS', 'Franchi S.p.A.', 'Paolo Accorti', 'Sales Representative', 'Via Monte Bianco 34', 'Torino', '', '10100', 'Italy', '011-4988260', '011-4988261'),
('FURIB', 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez', 'Sales Manager', 'Jardim das rosas n. 32', 'Lisboa', '', '1675', 'Portugal', '(1) 354-2534', '(1) 354-2535'),
('GALED', 'Galer?a del gastr?nomo', 'Eduardo Saavedra', 'Marketing Manager', 'Rambla de Catalu?a, 23', 'Barcelona', '', '08022', 'Spain', '(93) 203 4560', '(93) 203 4561'),
('GODOS', 'Godos Cocina T?pica', 'Jos? Pedro Freyre', 'Sales Manager', 'C/ Romero, 33', 'Sevilla', '', '41101', 'Spain', '(95) 555 82 82', ''),
('GOURL', 'Gourmet Lanchonetes', 'Andr? Fonseca', 'Sales Associate', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil', '(11) 555-9482', ''),
('GREAL', 'Great Lakes Food Market', 'Howard Snyder', 'Marketing Manager', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'United States', '(503) 555-7555', ''),
('GROSR', 'GROSELLA-Restaurante', 'Manuel Pereira', 'Owner', '5? Ave. Los Palos Grandes', 'Caracas', 'DF', '1081', 'Venezuela', '(2) 283-2951', '(2) 283-3397'),
('HANAR', 'Hanari Carnes', 'Mario Pontes', 'Accounting Manager', 'Rua do Pa?o, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil', '(21) 555-0091', '(21) 555-8765'),
('HILAA', 'HILARI?N-Abastos', 'Carlos Hern?ndez', 'Sales Representative', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Crist?bal', 'T?chira', '5022', 'Venezuela', '(5) 555-1340', '(5) 555-1948'),
('HUNGC', 'Hungry Coyote Import Store', 'Yoshi Latimer', 'Sales Representative', 'City Center Plaza\r\n516 Main St.', 'Elgin', 'OR', '97827', 'United States', '(503) 555-6874', '(503) 555-2376'),
('HUNGO', 'Hungry Owl All-Night Grocers', 'Patricia McKenna', 'Sales Associate', '8 Johnstown Road', 'Cork', 'Co. Cork', '', 'Ireland', '2967 542', '2967 3333'),
('ISLAT', 'Island Trading', 'Helen Bennett', 'Marketing Manager', 'Garden House\r\nCrowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'United Kingdom', '(198) 555-8888', ''),
('KOENE', 'K?niglich Essen', 'Philip Cramer', 'Sales Associate', 'Maubelstr. 90', 'Brandenburg', '', '14776', 'Germany', '0555-09876', ''),
('LACOR', 'La corne d\'abondance', 'Daniel Tonini', 'Sales Representative', '67, avenue de l\'Europe', 'Versailles', '', '78000', 'France', '30.59.84.10', '30.59.85.11'),
('LAMAI', 'La maison d\'Asie', 'Annette Roulet', 'Sales Manager', '1 rue Alsace-Lorraine', 'Toulouse', '', '31000', 'France', '61.77.61.10', '61.77.61.11'),
('LAUGB', 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', 'Marketing Assistant', '1900 Oak St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canada', '(604) 555-3392', '(604) 555-7293'),
('LAZYK', 'Lazy K Kountry Store', 'John Steel', 'Marketing Manager', '12 Orchestra Terrace', 'Walla Walla', 'WA', '99362', 'United States', '(509) 555-7969', '(509) 555-6221'),
('LEHMS', 'Lehmanns Marktstand', 'Renate Messner', 'Sales Representative', 'Magazinweg 7', 'Frankfurt a.M.', '', '60528', 'Germany', '069-0245984', '069-0245874'),
('LETSS', 'Let\'s Stop N Shop', 'Jaime Yorres', 'Owner', '87 Polk St.\r\nSuite 5', 'San Francisco', 'CA', '94117', 'United States', '(415) 555-5938', ''),
('LILAS', 'LILA-Supermercado', 'Carlos Gonz?lez', 'Accounting Manager', 'Carrera 52 con Ave. Bol?var #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela', '(9) 331-6954', '(9) 331-7256'),
('LINOD', 'LINO-Delicateses', 'Felipe Izquierdo', 'Owner', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela', '(8) 34-56-12', '(8) 34-93-93'),
('LONEP', 'Lonesome Pine Restaurant', 'Fran Wilson', 'Sales Manager', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'United States', '(503) 555-9573', '(503) 555-9646'),
('MAGAA', 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Marketing Manager', 'Via Ludovico il Moro 22', 'Bergamo', '', '24100', 'Italy', '035-640230', '035-640231'),
('MAISD', 'Maison Dewey', 'Catherine Dewey', 'Sales Agent', 'Rue Joseph-Bens 532', 'Bruxelles', '', 'B-1180', 'Belgium', '(02) 201 24 67', '(02) 201 24 68'),
('MEREP', 'M?re Paillarde', 'Jean Fresni?re', 'Marketing Assistant', '43 rue St. Laurent', 'Montr?al', 'Qu?bec', 'H1J 1C3', 'Canada', '(514) 555-8054', '(514) 555-8055'),
('MORGK', 'Morgenstern Gesundkost', 'Alexander Feuer', 'Marketing Assistant', 'Heerstr. 22', 'Leipzig', '', '04179', 'Germany', '0342-023176', ''),
('NORTS', 'North/South', 'Simon Crowther', 'Sales Associate', 'South House\r\n300 Queensbridge', 'London', '', 'SW7 1RZ', 'United Kingdom', '(171) 555-7733', '(171) 555-2530'),
('OCEAN', 'Oc?ano Atl?ntico Ltda.', 'Yvonne Moncada', 'Sales Agent', 'Ing. Gustavo Moncada 8585\r\nPiso 20-A', 'Buenos Aires', '', '1010', 'Argentina', '(1) 135-5333', '(1) 135-5535'),
('OLDWO', 'Old World Delicatessen', 'Rene Phillips', 'Sales Representative', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'United States', '(907) 555-7584', '(907) 555-2880'),
('OTTIK', 'Ottilies K?seladen', 'Henriette Pfalzheim', 'Owner', 'Mehrheimerstr. 369', 'K?ln', '', '50739', 'Germany', '0221-0644327', '0221-0765721'),
('PARIS', 'Paris sp?cialit', 'Marie Bertrand', 'Owner', '265, boulevard Charonne', 'Paris', '', '75012', 'France', '(1) 42.34.22.66', '(1) 42.34.22.77'),
('PERIC', 'Pericles Comidas cl?sicas', 'Guillermo Fern?ndez', 'Sales Representative', 'Calle Dr. Jorge Cash 321', 'M?xico D.F.', '', '05033', 'Mexico', '(5) 552-3745', '(5) 545-3745'),
('PICCO', 'Piccolo und mehr', 'Georg Pipps', 'Sales Manager', 'Geislweg 14', 'Salzburg', '', '5020', 'Austria', '6562-9722', '6562-9723'),
('PRINI', 'Princesa Isabel Vinhos', 'Isabel de Castro', 'Sales Representative', 'Estrada da sa?de n. 58', 'Lisboa', '', '1756', 'Portugal', '(1) 356-5634', ''),
('QUEDE', 'Que Del?cia', 'Bernardo Batista', 'Accounting Manager', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil', '(21) 555-4252', '(21) 555-4545'),
('QUEEN', 'Queen Cozinha', 'L?cia Carvalho', 'Marketing Assistant', 'Alameda dos Can?rios, 891', 'S?o Paulo', 'SP', '05487-020', 'Brazil', '(11) 555-1189', ''),
('QUICK', 'QUICK-Stop', 'Horst Kloss', 'Accounting Manager', 'Taucherstra?e 10', 'Cunewalde', '', '01307', 'Germany', '0372-035188', ''),
('RANCH', 'Rancho grande', 'Sergio Guti?rrez', 'Sales Representative', 'Av. del Libertador 900', 'Buenos Aires', '', '1010', 'Argentina', '(1) 123-5555', '(1) 123-5556'),
('RATTC', 'Rattlesnake Canyon Grocery', 'Paula Wilson', 'Assistant Sales Representative', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'United States', '(505) 555-5939', '(505) 555-3620'),
('REGGC', 'Reggiani Caseifici', 'Maurizio Moroni', 'Sales Associate', 'Strada Provinciale 124', 'Reggio Emilia', '', '42100', 'Italy', '0522-556721', '0522-556722'),
('RICAR', 'Ricardo Adocicados', 'Janete Limeira', 'Assistant Sales Agent', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil', '(21) 555-3412', ''),
('RICSU', 'Richter Supermarkt', 'Michael Holz', 'Sales Manager', 'Grenzacherweg 237', 'Gen?ve', '', '1203', 'Switzerland', '0897-034214', ''),
('ROMEY', 'Romero y tomillo', 'Alejandra Camino', 'Accounting Manager', 'Gran V?a, 1', 'Madrid', '', '28001', 'Spain', '(91) 745 6200', '(91) 745 6210'),
('sadas', 'asdsadsa', ';', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('SANTG', 'Sant? Gourmet', 'Jonas Bergulfsen', 'Owner', 'Erling Skakkes gate 78', 'Stavern', '', '4110', 'Norway', '07-98 92 35', '07-98 92 47'),
('SAVEA', 'Save-a-lot Markets', 'Jose Pavarotti', 'Sales Representative', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'United States', '(208) 555-8097', ''),
('SEVES', 'Seven Seas Imports', 'Hari Kumar', 'Sales Manager', '90 Wadhurst Rd.', 'London', '', 'OX15 4NB', 'United Kingdom', '(171) 555-1717', '(171) 555-5646'),
('SIMOB', 'Simons bistro', 'Jytte Petersen', 'Owner', 'Vinb?ltet 34', 'K?benhavn', '', '1734', 'Denmark', '31 12 34 56', '31 13 35 57'),
('SPECD', 'Sp?cialit?s du monde', 'Dominique Perrier', 'Marketing Manager', '25, rue Lauriston', 'Paris', '', '75016', 'France', '(1) 47.55.60.10', '(1) 47.55.60.20'),
('SPLIR', 'Split Rail Beer & Ale', 'Art Braunschweiger', 'Sales Manager', 'P.O. Box 555', 'Lander', 'WY', '82520', 'United States', '(307) 555-4680', '(307) 555-6525'),
('SUPRD', 'Supr?mes d?lices', 'Pascale Cartrain', 'Accounting Manager', 'Boulevard Tirou, 255', 'Charleroi', '', 'B-6000', 'Belgium', '(071) 23 67 22 20', '(071) 23 67 22 21'),
('THEBI', 'The Big Cheese', 'Liz Nixon', 'Marketing Manager', '89 Jefferson Way\r\nSuite 2', 'Portland', 'OR', '97201', 'United States', '(503) 555-3612', ''),
('THECR', 'The Cracker Box', 'Liu Wong', 'Marketing Assistant', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'United States', '(406) 555-5834', '(406) 555-8083'),
('TOMSP', 'Toms Spezialit?ten', 'Karin Josephs', 'Marketing Manager', 'Luisenstr. 48', 'M?nster', '', '44087', 'Germany', '0251-031259', '0251-035695'),
('TORTU', 'Tortuga Restaurante', 'Miguel Angel Paolino', 'Owner', 'Avda. Azteca 123', 'M?xico D.F.', '', '05033', 'Mexico', '(5) 555-2933', ''),
('TRADH', 'Tradi??o Hipermercados', 'Anabela Domingues', 'Sales Representative', 'Av. In?s de Castro, 414', 'S?o Paulo', 'SP', '05634-030', 'Brazil', '(11) 555-2167', '(11) 555-2168'),
('TRAIH', 'Trail\'s Head Gourmet Provisioners', 'Helvetius Nagy', 'Sales Associate', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'United States', '(206) 555-8257', '(206) 555-2174'),
('VAFFE', 'Vaffeljernet', 'Palle Ibsen', 'Sales Manager', 'Smagsl?get 45', '?rhus', '', '8200', 'Denmark', '86 21 32 43', '86 22 33 44'),
('VICTE', 'Victuailles en stock', 'Mary Saveley', 'Sales Agent', '2, rue du Commerce', 'Lyon', '', '69004', 'France', '78.32.54.86', '78.32.54.87'),
('VINET', 'Vins et alcools Chevalier', 'Paul Henriot', 'Accounting Manager', '59 rue de l\'Abbaye', 'Reims', '', '51100', 'France', '26.47.15.10', '26.47.15.11'),
('WANDK', 'Die Wandernde Kuh', 'Rita M?ller', 'Sales Representative', 'Adenauerallee 900', 'Stuttgart', '', '70563', 'Germany', '0711-020361', '0711-035428'),
('WARTH', 'Wartian Herkku', 'Pirkko Koskitalo', 'Accounting Manager', 'Torikatu 38', 'Oulu', '', '90110', 'Finland', '981-443655', '981-443655'),
('WELLI', 'Wellington Importadora', 'Paula Parente', 'Sales Manager', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil', '(14) 555-8122', ''),
('WHITC', 'White Clover Markets', 'Karl Jablonski', 'Owner', '305 - 14th Ave. S.\r\nSuite 3B', 'Seattle', 'WA', '98128', 'United States', '(206) 555-4112', '(206) 555-4115'),
('WILMK', 'Wilman Kala', 'Matti Karttunen', 'Owner/Marketing Assistant', 'Keskuskatu 45', 'Helsinki', '', '21240', 'Finland', '90-224 8858', '90-224 8858'),
('WOLZA', 'Wolski  Zajazd', 'Zbyszek Piestrzeniewicz', 'Owner', 'ul. Filtrowa 68', 'Warszawa', '', '01-012', 'Poland', '(26) 642-7012', '(26) 642-7012');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `EmployeeID` int(11) NOT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `FirstName` varchar(10) DEFAULT NULL,
  `Title` varchar(30) DEFAULT NULL,
  `TitleOfCourtesy` varchar(25) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `HireDate` date DEFAULT NULL,
  `Address` varchar(60) DEFAULT NULL,
  `City` varchar(15) DEFAULT NULL,
  `Region` varchar(15) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `Country` varchar(15) DEFAULT NULL,
  `HomePhone` varchar(24) DEFAULT NULL,
  `Extension` varchar(4) DEFAULT NULL,
  `Photo` varchar(40) DEFAULT NULL,
  `Notes` text,
  `ReportsTo` int(11) DEFAULT NULL,
  `sex` enum('M','F') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EmployeeID`, `LastName`, `FirstName`, `Title`, `TitleOfCourtesy`, `BirthDate`, `HireDate`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `HomePhone`, `Extension`, `Photo`, `Notes`, `ReportsTo`, `sex`) VALUES
(1, 'Davolio', 'Nancy', 'Sales Representative', 'Ms.', '1968-12-08', '1992-05-01', '507 - 20th Ave. E.\r\nApt. 2A', 'Seattle', 'WA', '98122', 'United States', '(206) 555-9857', '5467', '', 'Education includes a BA in psychology from Colorado State University.  She also completed \"The Art of the Cold Call.\"  Nancy is a member of Toastmasters International.', 2, NULL),
(2, 'Fuller', 'Andrew', 'Vice President, Sales', 'Dr.', '1952-02-19', '1992-08-14', '908 W. Capital Way', 'Tacoma', 'WA', '98401', 'United States', '(206) 555-9482', '3457', '', 'Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas.  He is fluent in French and Italian and reads German.  He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales.  Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.', 0, NULL),
(3, 'Leverling', 'Janet', 'Sales Representative', 'Ms.', '1963-08-30', '1992-04-01', '722 Moss Bay Blvd.', 'Kirkland', 'WA', '98033', 'United States', '(206) 555-3412', '3355', '', 'Janet has a BS degree in chemistry from Boston College).  She has also completed a certificate program in food retailing management.  Janet was hired as a sales associate and was promoted to sales representative.', 2, NULL),
(4, 'Peacock', 'Margaret', 'Sales Representative', 'Mrs.', '1958-09-19', '1993-05-03', '4110 Old Redmond Rd.', 'Redmond', 'WA', '98052', 'United States', '(206) 555-8122', '5176', '', 'Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle.', 2, NULL),
(5, 'Buchanan', 'Steven', 'Sales Manager', 'Mr.', '1955-03-04', '1993-10-17', '14 Garrett Hill', 'London', '', 'SW1 8JR', 'United Kingdom', '(71) 555-4848', '3453', '', 'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree.  Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager.  Mr. Buchanan has completed the courses \"Successful Telemarketing\" and \"International Sales Management.\"  He is fluent in French.', 2, NULL),
(6, 'Suyama', 'Michael', 'Sales Representative', 'Mr.', '1963-07-02', '1993-10-17', 'Coventry House\r\nMiner Rd.', 'London', '', 'EC2 7JR', 'United Kingdom', '(71) 555-7773', '428', '', 'Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing).  He has also taken the courses \"Multi-Cultural Selling\" and \"Time Management for the Sales Professional.\"  He is fluent in Japanese and can read and write French, Portuguese, and Spanish.', 5, NULL),
(7, 'King', 'Robert', 'Sales Representative', 'Mr.', '1960-05-29', '1994-01-02', 'Edgeham Hollow\r\nWinchester Way', 'London', '', 'RG1 9SP', 'United Kingdom', '(71) 555-5598', '465', '', 'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company.  After completing a course entitled \"Selling in Europe,\" he was transferred to the London office.', 5, NULL),
(8, 'Callahan', 'Laura', 'Inside Sales Coordinator', 'Ms.', '1958-01-09', '1994-03-05', '4726 - 11th Ave. N.E.', 'Seattle', 'WA', '98105', 'United States', '(206) 555-1189', '2344', '', 'Laura received a BA in psychology from the University of Washington.  She has also completed a course in business French.  She reads and writes French.', 2, NULL),
(9, 'Dodsworth', 'Anne', 'Sales Representative', 'Ms.', '1969-07-02', '1994-11-15', '7 Houndstooth Rd.', 'London', '', 'WG2 7LT', 'United Kingdom', '(71) 555-4444', '452', '', 'Anne has a BA degree in English from St. Lawrence College.  She is fluent in French and German.', 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` varchar(5) DEFAULT NULL,
  `EmployeeID` int(11) DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `RequiredDate` date DEFAULT NULL,
  `ShippedDate` date DEFAULT NULL,
  `ShipVia` int(11) DEFAULT NULL,
  `Freight` float(1,0) DEFAULT '0',
  `ShipName` varchar(40) DEFAULT NULL,
  `ShipAddress` varchar(60) DEFAULT NULL,
  `ShipCity` varchar(15) DEFAULT NULL,
  `ShipRegion` varchar(15) DEFAULT NULL,
  `ShipPostalCode` varchar(10) DEFAULT NULL,
  `ShipCountry` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`) VALUES
(1, 'ALFKI', 1, '2020-03-16', '2020-03-16', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `odID` int(10) UNSIGNED NOT NULL,
  `OrderID` int(11) DEFAULT '0',
  `ProductID` int(11) DEFAULT '0',
  `UnitPrice` float(1,0) DEFAULT '0',
  `Quantity` smallint(6) DEFAULT '1',
  `Discount` float(1,0) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(40) DEFAULT NULL,
  `SupplierID` int(11) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `QuantityPerUnit` varchar(20) DEFAULT NULL,
  `UnitPrice` float(1,0) DEFAULT '0',
  `UnitsInStock` smallint(6) DEFAULT '0',
  `UnitsOnOrder` smallint(6) DEFAULT '0',
  `ReorderLevel` smallint(6) DEFAULT '0',
  `Discontinued` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
(4, 'Chef Anton\'s Cajun Seasoning', 2, 2, '48 - 6 oz jars', 0, 53, 0, 0, 0),
(5, 'Chef Anton\'s Gumbo Mix', 2, 2, '36 boxes', 0, 0, 0, 0, 1),
(6, 'Grandma\'s Boysenberry Spread', 3, 2, '12 - 8 oz jars', 0, 120, 0, 25, 0),
(7, 'Uncle Bob\'s Organic Dried Pears', 3, 7, '12 - 1 lb pkgs.', 0, 15, 0, 10, 0),
(8, 'Northwoods Cranberry Sauce', 3, 2, '12 - 12 oz jars', 0, 6, 0, 0, 0),
(9, 'Mishi Kobe Niku', 4, 6, '18 - 500 g pkgs.', 0, 29, 0, 0, 1),
(10, 'Ikura', 4, 8, '12 - 200 ml jars', 0, 31, 0, 0, 0),
(11, 'Queso Cabrales', 5, 4, '1 kg pkg.', 0, 22, 30, 30, 0),
(12, 'Queso Manchego La Pastora', 5, 4, '10 - 500 g pkgs.', 0, 86, 0, 0, 0),
(13, 'Konbu', 6, 8, '2 kg box', 0, 24, 0, 5, 0),
(14, 'Tofu', 6, 7, '40 - 100 g pkgs.', 0, 35, 0, 0, 0),
(15, 'Genen Shouyu', 6, 2, '24 - 250 ml bottles', 0, 39, 0, 5, 0),
(16, 'Pavlova', 7, 3, '32 - 500 g boxes', 0, 29, 0, 10, 0),
(17, 'Alice Mutton', 7, 6, '20 - 1 kg tins', 0, 0, 0, 0, 1),
(18, 'Carnarvon Tigers', 7, 8, '16 kg pkg.', 0, 42, 0, 0, 0),
(19, 'Teatime Chocolate Biscuits', 8, 3, '10 boxes x 12 pieces', 0, 25, 0, 5, 0),
(20, 'Sir Rodney\'s Marmalade', 8, 3, '30 gift boxes', 0, 40, 0, 0, 0),
(21, 'Sir Rodney\'s Scones', 8, 3, '24 pkgs. x 4 pieces', 0, 3, 40, 5, 0),
(22, 'Gustaf\'s Kn?ckebr?d', 9, 5, '24 - 500 g pkgs.', 0, 104, 0, 25, 0),
(23, 'Tunnbr?d', 9, 5, '12 - 250 g pkgs.', 0, 61, 0, 25, 0),
(24, 'Guaran? Fant?stica', 10, 1, '12 - 355 ml cans', 0, 20, 0, 0, 1),
(25, 'NuNuCa Nu?-Nougat-Creme', 11, 3, '20 - 450 g glasses', 0, 76, 0, 30, 0),
(26, 'Gumb?r Gummib?rchen', 11, 3, '100 - 250 g bags', 0, 15, 0, 0, 0),
(27, 'Schoggi Schokolade', 11, 3, '100 - 100 g pieces', 0, 49, 0, 30, 0),
(28, 'R?ssle Sauerkraut', 12, 7, '25 - 825 g cans', 0, 26, 0, 0, 1),
(29, 'Th?ringer Rostbratwurst', 12, 6, '50 bags x 30 sausgs.', 0, 0, 0, 0, 1),
(30, 'Nord-Ost Matjeshering', 13, 8, '10 - 200 g glasses', 0, 10, 0, 15, 0),
(31, 'Gorgonzola Telino', 14, 4, '12 - 100 g pkgs', 0, 0, 70, 20, 0),
(32, 'Mascarpone Fabioli', 14, 4, '24 - 200 g pkgs.', 0, 9, 40, 25, 0),
(33, 'Geitost', 15, 4, '500 g', 0, 112, 0, 20, 0),
(34, 'Sasquatch Ale', 16, 1, '24 - 12 oz bottles', 0, 111, 0, 15, 0),
(35, 'Steeleye Stout', 16, 1, '24 - 12 oz bottles', 0, 20, 0, 15, 0),
(36, 'Inlagd Sill', 17, 8, '24 - 250 g  jars', 0, 112, 0, 20, 0),
(37, 'Gravad lax', 17, 8, '12 - 500 g pkgs.', 0, 11, 50, 25, 0),
(38, 'C?te de Blaye', 18, 1, '12 - 75 cl bottles', 0, 17, 0, 15, 0),
(39, 'Chartreuse verte', 18, 1, '750 cc per bottle', 0, 69, 0, 5, 0),
(40, 'Boston Crab Meat', 19, 8, '24 - 4 oz tins', 0, 123, 0, 30, 0),
(41, 'Jack\'s New England Clam Chowder', 19, 8, '12 - 12 oz cans', 0, 85, 0, 10, 0),
(42, 'Singaporean Hokkien Fried Mee', 20, 5, '32 - 1 kg pkgs.', 0, 26, 0, 0, 1),
(43, 'Ipoh Coffee', 20, 1, '16 - 500 g tins', 0, 17, 10, 25, 0),
(44, 'Gula Malacca', 20, 2, '20 - 2 kg bags', 0, 27, 0, 15, 0),
(45, 'R?gede sild', 21, 8, '1k pkg.', 0, 5, 70, 15, 0),
(46, 'Spegesild', 21, 8, '4 - 450 g glasses', 0, 95, 0, 0, 0),
(47, 'Zaanse koeken', 22, 3, '10 - 4 oz boxes', 0, 36, 0, 0, 0),
(48, 'Chocolade', 22, 3, '10 pkgs.', 0, 15, 70, 25, 0),
(49, 'Maxilaku', 23, 3, '24 - 50 g pkgs.', 0, 10, 60, 15, 0),
(50, 'Valkoinen suklaa', 23, 3, '12 - 100 g bars', 0, 65, 0, 30, 0),
(51, 'Manjimup Dried Apples', 24, 7, '50 - 300 g pkgs.', 0, 20, 0, 10, 0),
(52, 'Filo Mix', 24, 5, '16 - 2 kg boxes', 0, 38, 0, 25, 0),
(53, 'Perth Pasties', 24, 6, '48 pieces', 0, 0, 0, 0, 1),
(54, 'Tourti?re', 25, 6, '16 pies', 0, 21, 0, 10, 0),
(55, 'P?t? chinois', 25, 6, '24 boxes x 2 pies', 0, 115, 0, 20, 0),
(56, 'Gnocchi di nonna Alice', 26, 5, '24 - 250 g pkgs.', 0, 21, 10, 30, 0),
(57, 'Ravioli Angelo', 26, 5, '24 - 250 g pkgs.', 0, 36, 0, 20, 0),
(58, 'Escargots de Bourgogne', 27, 8, '24 pieces', 0, 62, 0, 20, 0),
(59, 'Raclette Courdavault', 28, 4, '5 kg pkg.', 0, 79, 0, 0, 0),
(60, 'Camembert Pierrot', 28, 4, '15 - 300 g rounds', 0, 19, 0, 0, 0),
(61, 'Sirop d\'?rable', 29, 2, '24 - 500 ml bottles', 0, 113, 0, 25, 0),
(62, 'Tarte au sucre', 29, 3, '48 pies', 0, 17, 0, 0, 0),
(63, 'Vegie-spread', 7, 2, '15 - 625 g jars', 0, 24, 0, 5, 0),
(64, 'Wimmers gute Semmelkn?del', 12, 5, '20 bags x 4 pieces', 0, 22, 80, 30, 0),
(65, 'Louisiana Fiery Hot Pepper Sauce', 2, 2, '32 - 8 oz bottles', 0, 76, 0, 0, 0),
(66, 'Louisiana Hot Spiced Okra', 2, 2, '24 - 8 oz jars', 0, 4, 100, 20, 0),
(67, 'Laughing Lumberjack Lager', 16, 1, '24 - 12 oz bottles', 0, 52, 0, 10, 0),
(68, 'Scottish Longbreads', 8, 3, '10 boxes x 8 pieces', 0, 6, 10, 15, 0),
(69, 'Gudbrandsdalsost', 15, 4, '10 kg pkg.', 0, 26, 0, 15, 0),
(70, 'Outback Lager', 7, 1, '24 - 355 ml bottles', 0, 15, 10, 30, 0),
(71, 'Fl?temysost', 15, 4, '10 - 500 g pkgs.', 0, 26, 0, 0, 0),
(72, 'Mozzarella di Giovanni', 14, 4, '24 - 200 g pkgs.', 0, 14, 0, 0, 0),
(73, 'R?d Kaviar', 17, 8, '24 - 150 g jars', 0, 101, 0, 5, 0),
(74, 'Longlife Tofu', 4, 7, '5 kg pkg.', 0, 4, 20, 5, 0),
(75, 'Rh?nbr?u Klosterbier', 12, 1, '24 - 0.5 l bottles', 0, 125, 0, 25, 0),
(76, 'Lakkalik??ri', 23, 1, '500 ml', 0, 57, 0, 20, 0),
(77, 'Original Frankfurter gr?ne So?e', 12, 2, '12 boxes', 0, 32, 0, 15, 0),
(78, 'Lemon tea', NULL, NULL, '30', 9, 4000, 0, 0, 0),
(79, 'Frestea', NULL, NULL, '20', 9, 20, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shippers`
--

CREATE TABLE `shippers` (
  `ShipperID` int(11) NOT NULL,
  `CompanyName` varchar(40) DEFAULT NULL,
  `Phone` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippers`
--

INSERT INTO `shippers` (`ShipperID`, `CompanyName`, `Phone`) VALUES
(1, 'Speedy Express', '(503) 555-9831'),
(2, 'United Package', '(503) 555-3199'),
(3, 'Federal Shipping', '(503) 555-9931');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `SupplierID` int(11) NOT NULL,
  `CompanyName` varchar(40) DEFAULT NULL,
  `ContactName` varchar(30) DEFAULT NULL,
  `ContactTitle` varchar(30) DEFAULT NULL,
  `Address` varchar(60) DEFAULT NULL,
  `City` varchar(15) DEFAULT NULL,
  `Region` varchar(15) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `Country` varchar(15) DEFAULT NULL,
  `Phone` varchar(24) DEFAULT NULL,
  `Fax` varchar(24) DEFAULT NULL,
  `HomePage` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
(13, 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Sven Petersen', 'Coordinator Foreign Markets', 'Frahmredder 112a', 'Cuxhaven', '', '27478', 'Germany', '(04721) 8713', '(04721) 8714', ''),
(14, 'Formaggi Fortini s.r.l.', 'Elio Rossi', 'Sales Representative', 'Viale Dante, 75', 'Ravenna', '', '48100', 'Italy', '(0544) 60323', '(0544) 60603', '#FORMAGGI.HTM#'),
(15, 'Norske Meierier', 'Beate Vileid', 'Marketing Manager', 'Hatlevegen 5', 'Sandvika', '', '1320', 'Norway', '(0)2-953010', '', ''),
(16, 'Bigfoot Breweries', 'Cheryl Saylor', 'Regional Account Rep.', '3400 - 8th Avenue\r\nSuite 210', 'Bend', 'OR', '97101', 'United States', '(503) 555-9931', '', ''),
(17, 'Svensk Sj?f?da AB', 'Michael Bj?rn', 'Sales Representative', 'Brovallav?gen 231', 'Stockholm', '', 'S-123 45', 'Sweden', '08-123 45 67', '', ''),
(18, 'Aux joyeux eccl?siastiques', 'Guyl?ne Nodier', 'Sales Manager', '203, Rue des Francs-Bourgeois', 'Paris', '', '75004', 'France', '(1) 03.83.00.68', '(1) 03.83.00.62', ''),
(19, 'New England Seafood Cannery', 'Robb Merchant', 'Wholesale Account Agent', 'Order Processing Dept.\r\n2100 Paul Revere Blvd.', 'Boston', 'MA', '02134', 'United States', '(617) 555-3267', '(617) 555-3389', ''),
(20, 'Leka Trading', 'Chandra Leka', 'Owner', '471 Serangoon Loop, Suite #402', 'Singapore', '', '0512', 'Singapore', '555-8787', '', ''),
(21, 'Lyngbysild', 'Niels Petersen', 'Sales Manager', 'Lyngbysild\r\nFiskebakken 10', 'Lyngby', '', '2800', 'Denmark', '43844108', '43844115', ''),
(22, 'Zaanse Snoepfabriek', 'Dirk Luchte', 'Accounting Manager', 'Verkoop\r\nRijnweg 22', 'Zaandam', '', '9999 ZZ', 'Netherlands', '(12345) 1212', '(12345) 1210', ''),
(23, 'Karkki Oy', 'Anne Heikkonen', 'Product Manager', 'Valtakatu 12', 'Lappeenranta', '', '53120', 'Finland', '(953) 10956', '', ''),
(24, 'G\'day, Mate', 'Wendy Mackenzie', 'Sales Representative', '170 Prince Edward Parade\r\nHunter\'s Hill', 'Sydney', 'NSW', '2042', 'Australia', '(02) 555-5914', '(02) 555-4873', 'G\'day Mate (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#'),
(25, 'Ma Maison', 'Jean-Guy Lauzon', 'Marketing Manager', '2960 Rue St. Laurent', 'Montr?al', 'Qu?bec', 'H1J 1C3', 'Canada', '(514) 555-9022', '', ''),
(26, 'Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Order Administrator', 'Via dei Gelsomini, 153', 'Salerno', '', '84100', 'Italy', '(089) 6547665', '(089) 6547667', ''),
(27, 'Escargots Nouveaux', 'Marie Delamare', 'Sales Manager', '22, rue H. Voiron', 'Montceau', '', '71300', 'France', '85.57.00.07', '', ''),
(28, 'Gai p?turage', 'Eliane Noz', 'Sales Representative', 'Bat. B\r\n3, rue des Alpes', 'Annecy', '', '74000', 'France', '38.76.98.06', '38.76.98.58', ''),
(29, 'Forts drables', 'Chantal Goulet', 'Accounting Manager', '148 rue Chasseur', 'Bantul', 'Qu?bec', 'J2S 7S8', 'Canada', '(514) 555-2955', '(514) 555-2921', ''),
(36, NULL, 'Betty', NULL, 'Bantul', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, NULL, 'Gunardi', NULL, 'Sleman', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, NULL, 'Hendrik', NULL, 'Bantul', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, NULL, 'Misyono', 'Manager', 'Pundong', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'PT. Maju Mundur', 'Jamhari', 'Mr.', 'Jl. Sisingamangaraja', 'Yogyakarta', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Pt tes', 'COntact test', 'Manager', 'Yogya', 'Bantul', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'Wahyu', 'Widodo', 'batikkode@gmail.com', '$2y$07$BCryptRequires22Chrcte/VlQH0piJtjXl.0t1XkA8pw9dMXTpOq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`odID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `shippers`
--
ALTER TABLE `shippers`
  ADD PRIMARY KEY (`ShipperID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`SupplierID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `odID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `shippers`
--
ALTER TABLE `shippers`
  MODIFY `ShipperID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
