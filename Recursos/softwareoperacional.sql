-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: softwareoperacional
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activerecordlog`
--

DROP TABLE IF EXISTS `activerecordlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `activerecordlog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `action` varchar(20) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `idModel` int(10) unsigned DEFAULT NULL,
  `field` varchar(45) DEFAULT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activerecordlog`
--

LOCK TABLES `activerecordlog` WRITE;
/*!40000 ALTER TABLE `activerecordlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `activerecordlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analisis`
--

DROP TABLE IF EXISTS `analisis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `analisis` (
  `idAnalisis` int(11) NOT NULL AUTO_INCREMENT,
  `fechaAnalisis` date NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Imagen` varchar(200) NOT NULL,
  PRIMARY KEY (`idAnalisis`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analisis`
--

LOCK TABLES `analisis` WRITE;
/*!40000 ALTER TABLE `analisis` DISABLE KEYS */;
INSERT INTO `analisis` VALUES (1,'2017-11-15','ssasa','ana_.jpg'),(2,'2017-11-02','GHGHG','analisis_.jpg'),(3,'2017-11-16','ggftg','analisis_.png'),(4,'2017-11-16','uhjhjhhj','analisis_.jpg'),(5,'2017-11-15','Reporte sustenstacion','analisis_.png');
/*!40000 ALTER TABLE `analisis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `area` (
  `idArea` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idArea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'Capital Goods','Training'),(2,'Consumer Services','Sales'),(3,'Consumer Services','Marketing'),(4,'Technology','Support'),(5,'Finance','Engineering'),(6,'Transportation','Product Management'),(7,'Finance','Marketing'),(8,'Consumer Non-Durables','Marketing'),(9,'n/a','Engineering'),(10,'n/a','Support'),(11,'Finance','Training'),(12,'Consumer Services','Business Development'),(13,'n/a','Human Resources'),(14,'n/a','Support'),(15,'Consumer Services','Accounting'),(16,'Public Utilities','Product Management'),(17,'Finance','Product Management'),(18,'Capital Goods','Human Resources'),(19,'Finance','Accounting'),(20,'Consumer Services','Engineering'),(21,'Energy','Legal'),(22,'n/a','Marketing'),(23,'Finance','Product Management'),(24,'Finance','Support'),(25,'n/a','Services'),(26,'Consumer Non-Durables','Product Management'),(27,'n/a','Sales'),(28,'n/a','Sales'),(29,'Consumer Services','Training'),(30,'Health Care','Support'),(31,'n/a','Services'),(32,'Energy','Engineering'),(33,'n/a','Human Resources'),(34,'n/a','Business Development'),(35,'Consumer Non-Durables','Services'),(36,'Health Care','Human Resources'),(37,'Health Care','Legal'),(38,'Consumer Non-Durables','Services'),(39,'n/a','Sales'),(40,'n/a','Sales'),(41,'Energy','Support'),(42,'Finance','Research and Development'),(43,'Consumer Services','Human Resources'),(44,'n/a','Business Development'),(45,'Consumer Non-Durables','Training'),(46,'n/a','Support'),(47,'n/a','Business Development'),(48,'Consumer Services','Accounting'),(49,'Basic Industries','Human Resources'),(50,'n/a','Services'),(51,'n/a','Engineering'),(52,'n/a','Human Resources'),(53,'Basic Industries','Sales'),(54,'Finance','Accounting'),(55,'Technology','Accounting'),(56,'n/a','Human Resources'),(57,'Health Care','Legal'),(58,'n/a','Human Resources'),(59,'n/a','Research and Development'),(60,'Health Care','Sales'),(61,'n/a','Sales'),(62,'Finance','Engineering'),(63,'Capital Goods','Human Resources'),(64,'n/a','Legal'),(65,'n/a','Support'),(66,'n/a','Product Management'),(67,'Miscellaneous','Legal'),(68,'Health Care','Support'),(69,'Finance','Support'),(70,'n/a','Services'),(71,'Energy','Engineering'),(72,'Health Care','Support'),(73,'n/a','Accounting'),(74,'n/a','Accounting'),(75,'Consumer Durables','Training'),(76,'Finance','Training'),(77,'Consumer Services','Services'),(78,'Health Care','Legal'),(79,'Public Utilities','Training'),(80,'Energy','Marketing'),(81,'Finance','Accounting'),(82,'Basic Industries','Human Resources'),(83,'Energy','Business Development'),(84,'Health Care','Support'),(85,'Technology','Support'),(86,'n/a','Accounting'),(87,'Basic Industries','Support'),(88,'Finance','Legal'),(89,'Finance','Marketing'),(90,'Finance','Training'),(91,'Consumer Services','Business Development'),(92,'Finance','Legal'),(93,'n/a','Training'),(94,'Technology','Support'),(95,'Public Utilities','Accounting'),(96,'n/a','Support'),(97,'Capital Goods','Research and Development'),(98,'Health Care','Legal'),(99,'Consumer Durables','Support'),(100,'Technology','Product Management');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria`
--

DROP TABLE IF EXISTS `auditoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auditoria` (
  `idAuditoria` int(11) NOT NULL,
  `Fechal` date NOT NULL,
  `Hora` datetime NOT NULL,
  `Ingreso` tinyint(1) NOT NULL,
  `Origen` varchar(20) NOT NULL,
  `Navegador` varchar(20) NOT NULL,
  `Accion` varchar(20) NOT NULL,
  `RegistroAccion` varchar(20) NOT NULL,
  `HoraAccion` datetime NOT NULL,
  `FechaAccion` date NOT NULL,
  PRIMARY KEY (`idAuditoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria`
--

LOCK TABLES `auditoria` WRITE;
/*!40000 ALTER TABLE `auditoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cargo` (
  `idCargo` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idCargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Electrical Engineer','service-desk'),(2,'Software Test Engineer II','Exclusive'),(3,'Executive Secretary','executive'),(4,'Mechanical Systems Engineer','Customer-focused'),(5,'VP Product Management','Reverse-engineered'),(6,'Web Designer III','installation'),(7,'VP Product Management','bi-directional'),(8,'Chemical Engineer','Upgradable'),(9,'Financial Advisor','Fundamental'),(10,'Analog Circuit Design manager','Digitized'),(11,'Geological Engineer','coherent'),(12,'Help Desk Technician','local area network'),(13,'Environmental Tech','strategy'),(14,'Structural Engineer','Robust'),(15,'Data Coordiator','Secured'),(16,'Desktop Support Technician','foreground'),(17,'Human Resources Assistant III','implementation'),(18,'VP Accounting','Intuitive'),(19,'VP Accounting','strategy'),(20,'Senior Sales Associate','task-force'),(21,'Nuclear Power Engineer','matrix'),(22,'VP Sales','orchestration'),(23,'Tax Accountant','intermediate'),(24,'Environmental Specialist','budgetary management'),(25,'Mechanical Systems Engineer','Stand-alone'),(26,'Operator','zero tolerance'),(27,'Senior Editor','coherent'),(28,'Research Associate','radical'),(29,'Senior Financial Analyst','capacity'),(30,'Internal Auditor','utilisation'),(31,'Registered Nurse','Vision-oriented'),(32,'Systems Administrator IV','Object-based'),(33,'Accounting Assistant III','installation'),(34,'Assistant Media Planner','non-volatile'),(35,'Human Resources Assistant IV','Public-key'),(36,'Senior Developer','archive'),(37,'Chemical Engineer','Self-enabling'),(38,'Account Coordinator','bifurcated'),(39,'Geologist II','even-keeled'),(40,'Human Resources Assistant IV','multi-tasking'),(41,'VP Quality Control','Profit-focused'),(42,'Accounting Assistant IV','budgetary management'),(43,'Electrical Engineer','holistic'),(44,'Associate Professor','background'),(45,'Staff Accountant II','Adaptive'),(46,'Senior Cost Accountant','Operative'),(47,'Compensation Analyst','database'),(48,'Human Resources Assistant III','throughput'),(49,'Programmer I','implementation'),(50,'Physical Therapy Assistant','Self-enabling'),(51,'Senior Financial Analyst','non-volatile'),(52,'Web Developer II','grid-enabled'),(53,'Recruiting Manager','client-server'),(54,'Professor','projection'),(55,'Media Manager I','transitional'),(56,'Director of Sales','Ameliorated'),(57,'Software Test Engineer IV','middleware'),(58,'Help Desk Operator','modular'),(59,'Research Associate','Object-based'),(60,'Media Manager II','Function-based'),(61,'Budget/Accounting Analyst III','Graphic Interface'),(62,'Recruiting Manager','attitude-oriented'),(63,'Mechanical Systems Engineer','static'),(64,'Safety Technician I','stable'),(65,'Design Engineer','project'),(66,'Account Coordinator','intangible'),(67,'Financial Advisor','Managed'),(68,'Safety Technician I','asynchronous'),(69,'Legal Assistant','benchmark'),(70,'Help Desk Operator','global'),(71,'Cost Accountant','knowledge base'),(72,'Professor','projection'),(73,'Design Engineer','Fully-configurable'),(74,'Senior Editor','local'),(75,'Human Resources Assistant III','Customer-focused'),(76,'Geologist I','Intuitive'),(77,'Engineer I','Distributed'),(78,'Staff Accountant I','next generation'),(79,'Marketing Assistant','methodology'),(80,'Senior Sales Associate','extranet'),(81,'VP Quality Control','Compatible'),(82,'Programmer III','leading edge'),(83,'Human Resources Manager','pricing structure'),(84,'Developer II','Cross-platform'),(85,'Research Nurse','Multi-lateral'),(86,'Tax Accountant','Profound'),(87,'Senior Sales Associate','Managed'),(88,'Help Desk Operator','Team-oriented'),(89,'Director of Sales','value-added'),(90,'Automation Specialist III','responsive'),(91,'Actuary','Organized'),(92,'Quality Engineer','budgetary management'),(93,'Computer Systems Analyst II','Multi-channelled'),(94,'Analyst Programmer','approach'),(95,'Programmer Analyst II','capacity'),(96,'Senior Financial Analyst','Seamless'),(97,'Physical Therapy Assistant','needs-based'),(98,'Structural Engineer','capability'),(99,'VP Marketing','database'),(100,'Recruiter','24 hour');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cliente` (
  `Cedula` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `Municipio_idMunicipio` int(11) NOT NULL,
  `Genero` varchar(10) NOT NULL,
  PRIMARY KEY (`Cedula`,`Municipio_idMunicipio`),
  KEY `fk_Cliente_Municipio1_idx` (`Municipio_idMunicipio`),
  CONSTRAINT `fk_Cliente_Municipio1` FOREIGN KEY (`Municipio_idMunicipio`) REFERENCES `municipio` (`idmunicipio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Allen','Langley','2007-08-05',45,'Masculino'),(2,'Camila','Scott','1931-08-16',96,'Masculino'),(3,'Manuel','Snow','2006-05-15',70,'Masculino'),(4,'Helena','George','1946-11-16',65,'Femenino'),(5,'Brisa','Guthrie','1906-10-17',93,'Masculino'),(6,'Kenya','Perkins','1928-09-07',61,'Masculino'),(7,'Julian','Lambert','1998-05-29',44,'Femenino'),(8,'Dillon','Wade','1978-11-02',49,'Femenino'),(9,'Sarah','Charles','1923-04-27',34,'Masculino'),(10,'Jaron','Gay','1995-02-08',52,'Masculino'),(11,'Logan','Wells','1990-03-18',33,'Femenino'),(12,'Anahi','Vega','1939-08-26',55,'Femenino'),(13,'Dayton','Moody','1947-12-29',45,'Masculino'),(14,'Yamilet','Barton','1981-05-03',56,'Femenino'),(15,'Ali','Carney','1918-01-25',84,'Femenino'),(16,'Alejandra','Johnson','1990-02-01',52,'Masculino'),(17,'Omari','Blevins','1950-11-25',53,'Masculino'),(18,'Priscilla','Potts','1981-05-06',92,'Masculino'),(19,'Phoenix','Oneal','1948-08-24',32,'Masculino'),(20,'Delilah','Davis','2006-03-06',56,'Femenino'),(21,'Clinton','Good','1913-04-02',4,'Femenino'),(22,'Urijah','Beck','1978-08-26',25,'Femenino'),(23,'Adelyn','Heath','1982-10-01',50,'Masculino'),(24,'Sterling','Figueroa','2013-07-16',69,'Femenino'),(25,'Leilani','Meyers','2006-01-30',68,'Masculino'),(26,'Amir','Le','1978-08-24',66,'Femenino'),(27,'Lana','Galloway','1988-03-14',14,'Masculino'),(28,'Ellen','Mueller','1983-05-14',27,'Masculino'),(29,'Caydence','English','1985-10-15',83,'Masculino'),(30,'Collin','Mcdaniel','1967-08-30',6,'Masculino'),(31,'Finnegan','Lloyd','1957-03-12',61,'Femenino'),(32,'Brennen','Castaneda','1957-02-05',67,'Masculino'),(33,'Alaya','Woodard','1967-04-01',92,'Femenino'),(34,'Todd','Clements','1942-09-25',83,'Femenino'),(35,'Evelynn','Hewitt','1993-04-25',43,'Masculino'),(36,'Boston','Best','1977-06-17',26,'Masculino'),(37,'Melany','Ratliff','1948-10-22',19,'Masculino'),(38,'Audrianna','Bonner','1932-12-26',40,'Femenino'),(39,'Jaidyn','Mullins','1954-05-11',30,'Masculino'),(40,'Marlon','Morton','1990-12-19',51,'Masculino'),(41,'Edgar','Monroe','1912-12-02',23,'Masculino'),(42,'Camryn','Hill','1941-04-07',68,'Masculino'),(43,'Mckinley','Hobbs','1976-02-02',5,'Masculino'),(44,'Anya','Herman','1974-08-16',23,'Femenino'),(45,'Ariella','Sosa','1968-10-24',13,'Femenino'),(46,'Emilia','Frost','1940-05-06',32,'Femenino'),(47,'Tristen','Castillo','1970-05-22',7,'Femenino'),(48,'Mustafa','Cantu','1968-06-30',70,'Masculino'),(49,'Lewis','Mccall','1930-07-20',74,'Femenino'),(50,'Baylee','Conrad','1972-10-22',71,'Masculino'),(51,'Joy','Perry','1989-06-01',7,'Femenino'),(52,'Lilah','Townsend','1922-08-29',53,'Masculino'),(53,'Kaitlyn','Workman','1960-03-08',33,'Masculino'),(54,'Ezra','Trujillo','2010-04-05',2,'Masculino'),(55,'Barrett','Vaughan','1995-05-05',5,'Femenino'),(56,'Odin','Parker','1916-07-17',30,'Femenino'),(57,'Giselle','Whitney','1926-05-15',30,'Masculino'),(58,'Anika','Larson','1996-09-24',59,'Femenino'),(59,'Chaim','Bowen','1997-08-05',61,'Femenino'),(60,'Marley','Benton','1932-04-03',79,'Femenino'),(61,'Emilia','Roberson','1925-10-09',4,'Masculino'),(62,'Kimora','Boyer','1908-04-16',33,'Femenino'),(63,'Alvaro','Odom','1978-08-01',14,'Femenino'),(64,'Cristopher','Duncan','1979-11-23',4,'Masculino'),(65,'Tyrell','Mcgowan','1958-05-30',64,'Masculino'),(66,'Miracle','Pittman','1995-06-18',86,'Masculino'),(67,'Eloise','Cooley','1965-12-08',51,'Femenino'),(68,'Rafael','Hanson','1964-07-15',21,'Masculino'),(69,'Cassandra','Everett','1971-06-24',58,'Masculino'),(70,'Amiya','Mason','1985-10-29',56,'Masculino'),(71,'Sidney','Mccarty','2003-09-03',18,'Femenino'),(72,'Lilah','Henry','1995-03-24',99,'Masculino'),(73,'Ainsley','Oneill','1966-05-12',22,'Masculino'),(74,'Harmony','Klein','1963-11-14',95,'Femenino'),(75,'Lauren','Ramirez','1971-12-06',36,'Femenino'),(76,'Charlie','Eaton','2004-07-21',73,'Femenino'),(77,'Charley','Nunez','1978-07-27',39,'Masculino'),(78,'Rose','Goodwin','1931-08-24',10,'Femenino'),(79,'Daisy','Walker','1963-05-27',57,'Masculino'),(80,'Cristiano','Murray','1937-12-07',37,'Masculino'),(81,'Mckayla','Wolfe','1972-05-21',42,'Masculino'),(82,'Gia','Reynolds','1998-02-21',20,'Femenino'),(83,'Angie','Hall','1923-06-28',25,'Masculino'),(84,'Stephen','Brown','1903-11-09',9,'Masculino'),(85,'Arianna','Hopper','1968-04-21',65,'Masculino'),(86,'Joy','Dunlap','1990-12-02',81,'Masculino'),(87,'Liliana','Sanders','1966-02-20',25,'Femenino'),(88,'Malaya','Shepard','1957-07-22',19,'Masculino'),(89,'Briana','Moran','1913-06-09',78,'Masculino'),(90,'Rhett','Spears','1973-04-08',79,'Femenino'),(91,'Natalee','Howe','2013-06-04',31,'Masculino'),(92,'Rocco','Flynn','1924-08-20',57,'Masculino'),(93,'Louis','Best','1901-03-03',7,'Femenino'),(94,'Temperance','Stuart','1950-05-20',13,'Femenino'),(95,'Brooks','Roberson','2013-04-29',77,'Femenino'),(96,'Malik','Rice','1950-06-09',23,'Masculino'),(97,'Abraham','Hodges','1989-11-25',49,'Femenino'),(98,'Sage','Cotton','1950-07-20',86,'Femenino'),(99,'Alonzo','Spears','1937-07-01',5,'Masculino'),(100,'Bristol','Reese','1994-12-22',81,'Masculino');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `departamento` (
  `idDepartamento` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idDepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'RU'),(2,'North Island'),(3,'PIE'),(4,'E'),(5,'NI'),(6,'Queensland'),(7,'Kano'),(8,'V'),(9,'Nunavut'),(10,'WV'),(11,'Meghalaya'),(12,'L'),(13,'Oklahoma'),(14,'Pomorskie'),(15,'BE'),(16,'Kerala'),(17,'CE'),(18,'LOM'),(19,'PK'),(20,'NI'),(21,'C'),(22,'Glamorgan'),(23,'BE'),(24,'IV'),(25,'RM'),(26,'Dumfriesshire'),(27,'AL'),(28,'F'),(29,'Manitoba'),(30,'Wie'),(31,'Dolnośląskie'),(32,'MA'),(33,'HE'),(34,'Ulster'),(35,'KS'),(36,'DO'),(37,'Wie'),(38,'Wie'),(39,'O'),(40,'CAM'),(41,'Gelderland'),(42,'Île-de-France'),(43,'O'),(44,'WA'),(45,'Minas Gerais'),(46,'NO'),(47,'CA'),(48,'Vienna'),(49,'NA'),(50,'Ov'),(51,'L'),(52,'Galicia'),(53,'Connacht'),(54,'H'),(55,'CAM'),(56,'Istanbul'),(57,'RJ'),(58,'TOS'),(59,'Kujawsko-pomorskie'),(60,'SIC'),(61,'QC'),(62,'BE'),(63,'NSW'),(64,'NO'),(65,'Wie'),(66,'North Island'),(67,'Connecticut'),(68,'U'),(69,'Wie'),(70,'NI'),(71,'QC'),(72,'South Island'),(73,'İzm'),(74,'Dolnośląskie'),(75,'Auvergne'),(76,'A'),(77,'Vienna'),(78,'Orkney'),(79,'Vienna'),(80,'Provence-Alpes-Côte d\'Azur'),(81,'LOM'),(82,'Gl'),(83,'CV'),(84,'G'),(85,'BA'),(86,'CT'),(87,'GA'),(88,'Minas Gerais'),(89,'NA'),(90,'HH'),(91,'Rio de Janeiro'),(92,'NI'),(93,'BE'),(94,'Cartago'),(95,'NI'),(96,'Vienna'),(97,'VIC'),(98,'HH'),(99,'West-Vlaanderen'),(100,'U');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `empleado` (
  `Cedula` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `Municipio_idMunicipio` int(11) NOT NULL,
  `Area_idArea` int(11) NOT NULL,
  `Cargo_idCargo` int(11) NOT NULL,
  `Salario` float NOT NULL,
  `fechaIngreso` date NOT NULL,
  `Genero` varchar(10) NOT NULL,
  PRIMARY KEY (`Cedula`,`Municipio_idMunicipio`,`Area_idArea`,`Cargo_idCargo`),
  KEY `fk_Empleado_Municipio_idx` (`Municipio_idMunicipio`),
  KEY `fk_Empleado_Area1_idx` (`Area_idArea`),
  KEY `fk_Empleado_Cargo1_idx` (`Cargo_idCargo`),
  CONSTRAINT `fk_Empleado_Area1` FOREIGN KEY (`Area_idArea`) REFERENCES `area` (`idarea`),
  CONSTRAINT `fk_Empleado_Cargo1` FOREIGN KEY (`Cargo_idCargo`) REFERENCES `cargo` (`idcargo`),
  CONSTRAINT `fk_Empleado_Municipio` FOREIGN KEY (`Municipio_idMunicipio`) REFERENCES `municipio` (`idmunicipio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Angelica','Kennedy','1980-08-23',89,17,18,1934.18,'2016-03-22','Femenino'),(2,'Ariel','Ferrell','1970-09-13',3,18,11,705.7,'2017-06-26','Masculino'),(3,'Jazmyn','Acevedo','1985-05-21',75,1,44,2064.7,'2017-05-15','Femenino'),(4,'Eleanor','Salas','1970-11-29',71,7,81,2816.56,'2016-07-09','Masculino'),(5,'Luciano','Kirby','1982-01-12',81,1,49,2791.39,'2017-01-09','Masculino'),(6,'Beckham','Gilbert','1975-07-20',39,21,21,2403.51,'2016-11-22','Masculino'),(7,'Emmitt','Barlow','1998-11-29',79,19,31,1355.22,'2017-05-04','Femenino'),(8,'Morgan','Donaldson','1985-08-17',76,7,65,2880.68,'2016-09-29','Masculino'),(9,'Jack','Cotton','1976-12-24',64,19,29,1385.27,'2017-06-15','Masculino'),(10,'Marina','Chang','1999-12-22',12,15,17,2373.34,'2017-01-30','Masculino'),(11,'Marlee','Franks','1980-10-23',30,11,40,2172.79,'2017-01-27','Masculino'),(12,'Rebecca','Contreras','1976-12-29',45,20,24,1159.25,'2016-06-20','Femenino'),(13,'Hayley','Booker','1971-05-28',5,13,89,2954.02,'2016-06-24','Femenino'),(14,'Zackary','Owens','1983-01-19',99,20,29,920.43,'2016-04-01','Masculino'),(15,'Alyvia','Bolton','1979-10-30',95,18,73,2211.45,'2017-08-08','Masculino'),(16,'Franco','Mueller','1986-06-01',29,15,71,1127.55,'2016-04-02','Femenino'),(17,'Phoebe','Boyle','1983-10-22',67,10,56,2628.35,'2016-06-10','Masculino'),(18,'Brynn','Henderson','1991-11-03',76,19,67,1004.47,'2017-07-28','Masculino'),(19,'Maxim','Graves','1997-11-08',55,3,73,2956.19,'2016-04-23','Masculino'),(20,'Justice','Lucas','1984-01-27',40,5,26,1144.9,'2017-06-25','Masculino'),(21,'Romeo','Ratliff','1997-03-09',8,10,91,1179.94,'2017-03-01','Femenino'),(22,'Mariah','Logan','1988-07-13',91,7,49,1978.66,'2017-04-15','Femenino'),(23,'Darrell','Gilmore','1975-09-01',84,10,12,1490.82,'2016-02-21','Femenino'),(24,'Danny','Curtis','1980-10-25',76,22,41,1909.65,'2016-08-28','Femenino'),(25,'Willa','Wilkinson','1986-06-25',69,9,34,701.39,'2017-06-02','Masculino'),(26,'Maia','Stafford','1976-10-04',55,8,34,1072.94,'2016-01-16','Masculino'),(27,'Solomon','Haney','1999-09-04',73,14,1,2862.62,'2017-06-16','Masculino'),(28,'Dax','Kaufman','1973-09-11',91,5,71,2283.15,'2016-10-13','Masculino'),(29,'Julia','Castro','1996-02-06',27,16,1,1467.9,'2016-07-04','Femenino'),(30,'Jaqueline','Riddle','1985-06-16',91,22,41,1371.38,'2016-06-12','Femenino'),(31,'Mathias','Walsh','1974-04-24',7,6,94,1753.5,'2016-10-07','Masculino'),(32,'Jolene','Lamb','1975-12-29',41,13,35,2233.02,'2017-06-04','Masculino'),(33,'Blair','Hopper','1981-12-26',26,1,95,1230.53,'2017-07-04','Masculino'),(34,'Madilynn','Bird','1987-02-28',4,17,71,2533.66,'2016-06-14','Masculino'),(35,'Dario','Mccoy','1987-12-22',85,13,17,2207.89,'2016-11-04','Masculino'),(36,'Josue','Morin','1977-03-25',74,5,21,1645.4,'2017-02-17','Masculino'),(37,'Dominic','Gillespie','1973-04-28',83,8,69,691.18,'2016-01-10','Femenino'),(38,'Eugene','Harper','1997-01-30',99,18,10,510.75,'2016-08-19','Masculino'),(39,'Katie','Butler','1976-01-28',8,10,70,1667.23,'2016-01-05','Masculino'),(40,'Carla','Collins','1972-06-01',13,14,95,1256.5,'2016-04-06','Masculino'),(41,'Nash','Gallagher','1977-08-20',77,15,93,1409.08,'2017-01-01','Masculino'),(42,'Cohen','Carpenter','1978-05-24',37,19,43,2504.69,'2016-02-01','Femenino'),(43,'Branson','Barrera','1993-12-14',88,16,81,561.11,'2016-04-20','Masculino'),(44,'Samiyah','Trevino','1979-03-13',65,15,42,1953.14,'2017-06-02','Masculino'),(45,'Maddox','Chaney','1976-03-12',96,21,87,2389.1,'2016-04-16','Femenino'),(46,'Tatiana','Franks','1982-07-14',19,4,42,922.54,'2017-05-26','Masculino'),(47,'Leigha','Charles','1998-05-29',44,5,25,1205.07,'2017-04-16','Femenino'),(48,'Xander','Lucas','1986-08-04',31,11,3,1192.59,'2016-09-06','Femenino'),(49,'Devon','Stephens','1996-11-22',85,14,49,1601.51,'2017-02-27','Femenino'),(50,'Ayana','Stark','1980-11-29',18,19,72,2574.41,'2016-11-18','Masculino'),(51,'Jude','Knox','1999-01-12',11,2,77,2254.98,'2016-06-23','Femenino'),(52,'Masen','Lamb','1990-03-30',39,12,63,2791.37,'2016-10-05','Masculino'),(53,'Jazlyn','Torres','1995-08-22',38,21,48,1183.54,'2017-07-18','Femenino'),(54,'Isai','Reese','1996-12-19',49,16,67,1865.74,'2017-06-26','Femenino'),(55,'Allison','Dickson','1992-10-25',33,7,56,2468.15,'2016-08-25','Femenino'),(56,'Kennedi','Kemp','1980-02-03',84,18,34,1333.36,'2016-01-05','Masculino'),(57,'Hector','Weaver','1995-01-29',94,4,22,2572.47,'2017-06-27','Femenino'),(58,'Kassandra','Hutchinson','1984-12-16',65,17,20,1733.6,'2016-03-03','Femenino'),(59,'Rowen','Sullivan','1975-09-23',81,22,87,2521.01,'2016-02-04','Femenino'),(60,'Patricia','Pacheco','1995-01-25',85,15,63,2446.93,'2017-01-29','Femenino'),(61,'Monica','Craig','1978-06-01',93,15,30,2820.41,'2016-07-09','Femenino'),(62,'Cheyenne','Osborn','1980-12-08',14,16,49,1077.23,'2017-04-29','Masculino'),(63,'Erika','Todd','1990-02-19',37,17,58,1133.45,'2016-09-11','Femenino'),(64,'Joel','Dunlap','1980-05-13',48,8,65,2701.3,'2016-08-20','Masculino'),(65,'Dominik','Zimmerman','1998-03-21',13,21,12,840.75,'2017-02-06','Femenino'),(66,'Dylan','Barry','1995-05-31',96,6,79,2432.64,'2017-01-03','Femenino'),(67,'Armando','Hernandez','1982-09-27',18,19,96,1749.81,'2016-12-07','Femenino'),(68,'Julissa','Simon','1978-03-27',52,13,70,2871.94,'2017-05-18','Femenino'),(69,'Hailey','Shaw','1974-07-24',68,18,8,2336.18,'2016-07-09','Femenino'),(70,'Karsyn','Lyons','1985-11-26',10,20,95,1141.39,'2017-03-31','Femenino'),(71,'Hanna','Ray','1989-09-02',59,6,39,1026.52,'2017-04-06','Masculino'),(72,'Willow','Ray','1983-08-29',36,12,88,825.22,'2016-11-30','Masculino'),(73,'Davin','Moss','1991-05-04',18,16,78,2158.37,'2016-02-16','Femenino'),(74,'Sarah','Brooks','1980-02-21',81,3,10,2263.56,'2016-08-30','Femenino'),(75,'Carlee','Burch','1993-02-16',41,10,24,2876.33,'2017-01-14','Masculino'),(76,'Philip','Winters','1975-01-31',13,8,100,2772.12,'2016-09-09','Masculino'),(77,'Zayne','Caldwell','1982-06-27',3,9,88,2849.37,'2016-11-21','Masculino'),(78,'Cynthia','Nguyen','1994-02-03',81,8,3,1484.72,'2016-01-27','Masculino'),(79,'Bethany','Larsen','1972-12-20',73,19,67,1819.24,'2017-01-15','Femenino'),(80,'Marcelo','Kline','1980-05-24',79,20,56,1641.11,'2016-05-12','Masculino'),(81,'Kyla','Montoya','1973-06-08',98,5,90,614.51,'2016-02-21','Masculino'),(82,'Elian','Webb','1999-12-12',38,22,82,1267.22,'2016-12-07','Masculino'),(83,'Raegan','Farley','1990-04-02',17,3,75,1890.08,'2016-10-07','Masculino'),(84,'Tristin','Calderon','1991-08-31',60,20,10,1320.2,'2016-05-17','Femenino'),(85,'Leslie','Boyle','1997-08-23',18,11,70,2477.07,'2017-03-21','Femenino'),(86,'Beckett','Hodge','1997-12-26',20,22,12,995.47,'2017-06-27','Femenino'),(87,'Miley','Pennington','1981-06-06',76,5,33,2352.61,'2017-04-25','Femenino'),(88,'Issac','Powell','1979-08-02',39,6,51,518.05,'2016-10-11','Masculino'),(89,'Journey','Stout','1972-07-04',6,2,96,864.52,'2016-10-19','Masculino'),(90,'Preston','Ortiz','1985-04-27',36,6,57,2365.44,'2016-01-28','Femenino'),(91,'Philip','Cunningham','1987-01-18',19,18,24,1470.44,'2017-03-01','Femenino'),(92,'Brayden','Pollard','1982-06-27',27,10,81,2494.31,'2017-04-16','Femenino'),(93,'Kiersten','Wiggins','1978-02-05',91,16,29,1876.42,'2017-04-20','Masculino'),(94,'Lylah','Sparks','1997-02-11',86,19,3,1268.28,'2016-12-26','Masculino'),(95,'Coleman','James','1970-10-12',66,22,40,2084.45,'2016-10-31','Masculino'),(96,'Presley','Horn','1984-10-03',26,2,81,1909.04,'2016-10-14','Femenino'),(97,'Connor','Puckett','1986-07-03',40,9,27,983.97,'2017-06-30','Femenino'),(98,'Trevor','Boyle','1982-09-30',40,3,84,2418.09,'2016-03-04','Masculino'),(99,'Dexter','Duncan','1994-01-23',20,16,11,2746.9,'2017-02-07','Masculino'),(100,'Jayden','Mcleod','1971-09-13',22,4,27,2541.32,'2016-11-02','Femenino'),(4023529,'Tatum','Burnett','2013-04-19',70,5,37,4346.8,'1996-04-05','Femenino'),(4049532,'Erick','Mcfadden','2009-01-04',57,61,67,3459.1,'1997-09-18','Femenino'),(4050827,'Belen','Greer','1971-01-31',80,38,15,1687.2,'1998-07-11','Masculino'),(4066261,'Elisabeth','Langley','1983-02-08',43,51,14,4363.2,'1993-05-26','Masculino'),(4188895,'Margaret','Francis','1936-12-31',99,85,72,3844.5,'2002-03-14','Femenino'),(4265804,'Jaidyn','Duffy','1967-06-25',82,81,62,3396.5,'2009-08-26','Femenino'),(4326075,'Braylon','Parker','1971-12-27',63,76,51,1719.5,'2010-07-21','Masculino'),(4464123,'Elle','Massey','1942-03-08',28,91,24,2445.5,'1991-11-25','Masculino'),(4468020,'Madelyn','Brock','1968-12-14',14,96,62,3121.7,'2005-08-21','Masculino'),(4556057,'Benson','Graham','1950-12-25',46,40,90,2733.2,'1991-07-08','Femenino'),(4711834,'River','Roberts','2003-12-28',19,77,52,2630.2,'1995-07-06','Femenino'),(4725481,'Julianna','Hendricks','1944-02-03',71,32,86,1128.3,'2005-09-28','Masculino'),(4744021,'Guillermo','Flowers','1919-10-26',44,57,72,1017,'1993-09-19','Masculino'),(4767071,'Yazmin','Hardy','1929-11-27',15,61,99,3844.9,'2004-05-25','Femenino'),(4885840,'Kieran','Briggs','1921-10-01',65,36,16,1940.5,'2010-12-06','Masculino'),(4896106,'Raphael','Reynolds','1943-11-12',55,42,14,4049.7,'2010-03-17','Femenino'),(4900421,'Joanna','Melton','1961-07-25',49,13,98,3168.3,'2011-08-25','Masculino'),(4902212,'Luke','Thornton','1975-07-04',28,24,15,3027.8,'1996-02-06','Masculino'),(4962736,'Kyron','Patterson','1996-06-08',55,66,94,4876,'2008-03-07','Masculino'),(4978033,'Jadyn','Kidd','1911-09-10',6,9,45,1675.8,'1990-09-04','Masculino'),(5062683,'Kyra','Klein','2009-04-28',48,69,29,1734,'2001-08-22','Femenino'),(5142444,'Brennen','Brown','1966-04-25',94,32,92,911.6,'2013-11-20','Masculino'),(5229844,'Eliana','Wilcox','1951-12-10',69,80,38,3112.4,'2005-01-11','Femenino'),(5236494,'Eduardo','Cooper','1935-06-09',58,66,81,2614,'1995-03-29','Femenino'),(5304584,'Mariah','Orr','1910-02-10',94,12,68,2398.3,'2005-07-10','Masculino'),(5331228,'Mariana','Boyer','1927-01-20',37,36,67,739.9,'1998-01-13','Femenino'),(5379684,'Justice','Price','1998-07-03',18,5,30,4490.7,'1995-10-03','Femenino'),(5398652,'Brooklyn','Frederick','1960-11-13',88,77,40,1549.4,'2008-11-21','Femenino'),(5435089,'Osvaldo','Davenport','1973-02-01',96,12,40,3393.5,'2005-05-04','Masculino'),(5467062,'Raina','Brewer','1952-09-07',18,61,36,2170.4,'1993-11-23','Masculino'),(5473522,'Lane','Duke','2005-09-13',39,2,4,3851.8,'1991-12-14','Masculino'),(5477289,'Arabella','Puckett','1907-09-25',2,11,82,4855.1,'1990-11-15','Femenino'),(5479232,'Myles','Carson','1976-04-26',42,6,19,3379.8,'2010-08-21','Femenino'),(5540978,'Clarissa','Cortez','1995-07-31',2,23,52,2692.2,'2000-06-15','Femenino'),(5742833,'Julianne','Hatfield','1920-11-08',26,21,93,1215,'1994-02-21','Femenino'),(5762841,'Leigha','Richards','1909-01-10',34,58,44,3408.2,'2001-12-14','Femenino'),(5835100,'Caroline','Horne','1931-11-14',42,62,66,635.1,'2010-01-16','Femenino'),(5900107,'Mariyah','Yang','1908-12-26',87,17,89,1280.8,'2010-02-08','Femenino'),(5919541,'Marianna','Alford','1913-09-08',100,7,65,693.9,'2000-08-30','Femenino'),(5985528,'Gwyneth','Monroe','1928-05-05',16,37,37,4934.7,'1996-08-13','Femenino'),(6018085,'Giuliana','Soto','1987-01-06',49,99,82,1546.4,'2013-01-30','Masculino'),(6115470,'Melanie','Sosa','2006-05-27',48,51,86,4920.3,'1998-05-18','Femenino'),(6138045,'Lexie','Fulton','1997-06-03',41,62,3,1198.9,'1999-06-20','Femenino'),(6172824,'Jocelynn','Oneill','1933-07-30',33,65,40,2446.6,'1991-04-23','Masculino'),(6191057,'Keon','Garner','1953-02-20',44,6,96,2252.6,'2012-09-10','Femenino'),(6289676,'Damian','Ruiz','1979-01-08',83,90,43,1190.3,'1998-06-16','Masculino'),(6374589,'Aron','Hayes','1961-03-14',16,52,46,4542.6,'2006-03-29','Femenino'),(6374775,'Porter','Sellers','1917-12-29',5,38,72,4131.7,'2000-03-17','Femenino'),(6486073,'Mallory','Richmond','1945-08-30',50,6,87,3245.9,'2000-05-20','Femenino'),(6558433,'Nicolas','Buck','1977-04-27',63,10,47,1154.5,'1999-09-05','Femenino'),(6650239,'Terry','Duffy','1928-09-20',6,45,93,4948.5,'2000-01-07','Masculino'),(6654427,'Angelo','Padilla','1937-01-11',72,58,97,3368,'1996-05-21','Masculino'),(6677972,'Mike','Cortez','1918-06-07',16,96,87,760.5,'2011-02-05','Masculino'),(6690118,'Kate','Salinas','2005-06-27',82,39,7,2738.9,'2008-05-26','Femenino'),(6691992,'Clarissa','Rivera','1989-06-03',49,25,80,2939.2,'1993-04-12','Femenino'),(6714551,'Isaac','Mcneil','1912-02-27',15,34,37,955.1,'2011-04-21','Masculino'),(6742332,'Evan','Mayer','1971-05-23',35,20,71,2910.1,'2004-04-02','Masculino'),(6770591,'Angelica','Guzman','1928-04-07',24,35,27,2722.8,'2006-08-21','Femenino'),(6780822,'Samiyah','Maynard','1943-02-19',67,50,66,2390.4,'2011-08-24','Masculino'),(6827746,'Marlon','Robertson','1984-03-24',58,39,93,1931.7,'2012-05-04','Femenino'),(6840489,'Skyler','Stevenson','1978-07-25',14,11,78,1506.4,'2011-12-20','Masculino'),(6973829,'Jacoby','Lawson','1911-01-16',100,18,89,919.4,'2006-01-07','Masculino'),(6999582,'Blaine','Combs','1980-07-20',28,83,26,724.3,'1999-01-02','Masculino'),(7007529,'Peyton','Hale','1999-11-12',2,24,10,877.3,'2005-02-09','Masculino'),(7107929,'Angel','Hyde','2013-01-20',97,35,35,1322.9,'2005-12-03','Masculino'),(7145494,'Maia','Beard','1977-08-20',91,3,30,3327,'2012-09-07','Masculino'),(7146358,'Callan','Hill','1928-07-01',54,90,80,1955.4,'2010-05-23','Masculino'),(7155396,'Kellan','Lynch','1906-10-01',23,29,11,3881.2,'1993-06-24','Femenino'),(7165405,'Elijah','Prince','2012-06-11',77,31,47,4947.2,'1998-01-31','Masculino'),(7203967,'Jaylyn','Bush','1973-08-27',23,43,43,971,'2002-08-14','Femenino'),(7268631,'Kenley','Hall','1914-05-03',55,3,61,3236.4,'1997-12-27','Femenino'),(7271284,'Laney','Kirkland','1994-07-20',89,90,30,2490.7,'1995-06-10','Masculino'),(7397596,'Gael','Mcdowell','1962-12-19',66,53,7,2441.1,'2002-12-12','Femenino'),(7457726,'Ahmed','Ratliff','1945-02-02',45,99,67,2917.4,'2012-12-29','Femenino'),(7478319,'Hannah','Ruiz','1920-10-05',5,58,71,3245.5,'1991-04-03','Masculino'),(7558356,'Zoe','Lawson','1977-04-10',99,67,57,798.2,'1994-03-05','Femenino'),(7729346,'Julianne','Le','1915-11-12',46,68,51,4503,'2002-12-08','Femenino'),(7807152,'Benjamin','Kelly','1939-11-22',45,72,89,2767.2,'1997-09-08','Femenino'),(7811290,'Hugh','Zimmerman','1999-05-07',24,56,34,4811.8,'1994-05-17','Femenino'),(7881491,'Eloise','Lowery','1985-07-29',73,51,45,552.4,'1997-01-07','Masculino'),(8005836,'Colin','Newman','1956-11-19',39,53,47,1904,'1997-11-14','Masculino'),(8102525,'Chance','Bullock','1971-08-15',91,100,13,2136.3,'2004-12-13','Masculino'),(8259203,'Luna','Tran','2005-01-15',59,96,8,4008.6,'2003-08-16','Masculino'),(8351684,'Adriana','Berger','2012-01-27',87,64,54,2717.2,'1992-08-13','Masculino'),(8356454,'Alyssa','Tyler','1994-10-15',93,67,87,2369.1,'1991-11-06','Femenino'),(8445630,'Kareem','Acevedo','1940-09-22',66,80,67,4235.3,'2012-08-10','Masculino'),(8518095,'Lena','Castaneda','1957-04-09',76,25,66,4705.3,'2007-09-02','Femenino'),(8535241,'Simon','Vance','1916-06-27',79,86,88,4481.4,'2003-01-26','Femenino'),(8569862,'Mariah','Greer','1917-06-13',15,60,33,4071.5,'1997-07-14','Masculino'),(8610756,'Alfredo','Webster','1981-01-01',11,39,80,2479.7,'2000-06-11','Masculino'),(8632078,'Jaron','Brennan','1937-06-30',58,42,77,4622.9,'1995-12-12','Masculino'),(8653618,'Mariam','Estrada','1923-01-17',98,67,62,3722.4,'1996-05-29','Femenino'),(8679368,'Elle','Howe','1953-11-27',21,71,93,4027.8,'2002-05-25','Masculino'),(8694524,'Shaun','Porter','2007-10-10',31,68,6,3855.9,'2009-05-30','Masculino'),(8762851,'Journee','Ewing','1916-01-15',83,74,66,2875.9,'2010-07-17','Femenino'),(8782747,'Kyla','Lawrence','1926-11-20',55,56,86,1384,'1998-10-16','Masculino'),(8887558,'Lyla','Mckinney','1966-01-30',23,99,96,3347.7,'1993-09-12','Femenino'),(8915811,'Karter','Mcfadden','1947-05-05',19,79,29,4254,'2011-09-22','Masculino'),(8967338,'Salvatore','Mejia','1945-04-13',60,11,67,1244.4,'1999-05-27','Femenino'),(8981376,'Cecilia','Cruz','1911-09-29',22,61,69,1161.1,'2006-12-23','Femenino');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `municipio` (
  `idMunicipio` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Departamento_idDepartamento` int(11) NOT NULL,
  PRIMARY KEY (`idMunicipio`,`Departamento_idDepartamento`),
  KEY `fk_Municipio_Departamento1_idx` (`Departamento_idDepartamento`),
  CONSTRAINT `fk_Municipio_Departamento1` FOREIGN KEY (`Departamento_idDepartamento`) REFERENCES `departamento` (`iddepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipio`
--

LOCK TABLES `municipio` WRITE;
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` VALUES (1,'Pont-ˆ-Celles',56),(2,'Los Angeles',3),(3,'Independence',99),(4,'Sirsa',83),(5,'Ipatinga',11),(6,'Cardiff',41),(7,'Moircy',58),(8,'San Mauro Cilento',31),(9,'Sluis',14),(10,'Cicagna',93),(11,'Buggenhout',79),(12,'Greater Hobart',9),(13,'San Donato di Ninea',75),(14,'McCallum',53),(15,'Cerignola',59),(16,'Barchi',8),(17,'Neder-Over-Heembeek',67),(18,'Ortacesus',80),(19,'Eckville',30),(20,'Otranto',14),(21,'Habergy',16),(22,'Giurdignano',78),(23,'Sant\'Eufemia a Maiella',34),(24,'Fiuminata',46),(25,'Strona',53),(26,'Thorn',73),(27,'Dorgali',69),(28,'Dolceacqua',20),(29,'Villa Santo Stefano',87),(30,'Klagenfurt',95),(31,'Quillota',24),(32,'Lower Hutt',53),(33,'Bathurst',10),(34,'Opheylissem',3),(35,'Amravati',66),(36,'Kolmont',4),(37,'Dehradun',55),(38,'Meeuwen-Gruitrode',16),(39,'Cappelle sul Tavo',29),(40,'Sefro',82),(41,'Shepparton',52),(42,'Kerkrade',79),(43,'Llanidloes',44),(44,'Forchtenstein',18),(45,'Barranca',24),(46,'Montebelluna',11),(47,'Maple Creek',74),(48,'Busso',99),(49,'Donk',46),(50,'Sandy',73),(51,'Shahjahanpur',67),(52,'Clackmannan',68),(53,'Eghezee',57),(54,'Lagundo/Algund',83),(55,'Inuvik',52),(56,'As',60),(57,'Fraser Lake',57),(58,'San Fratello',18),(59,'Gagliato',45),(60,'Lacombe County',88),(61,'Perth',25),(62,'Lambersart',60),(63,'Futrono',8),(64,'Camborne',89),(65,'Meetkerke',82),(66,'Heredia',88),(67,'Tintange',34),(68,'Carapicuíba',100),(69,'Schwalbach',97),(70,'Vico nel Lazio',98),(71,'Hualqui',46),(72,'Panchià',1),(73,'Placilla',80),(74,'Hilo',64),(75,'Donstiennes',61),(76,'Market Drayton',18),(77,'Gravelbourg',19),(78,'Alandur',84),(79,'Estevan',54),(80,'Manchester',93),(81,'Steyr',50),(82,'Thorold',69),(83,'Pirna',100),(84,'Coalhurst',52),(85,'Okotoks',10),(86,'Cirencester',68),(87,'Aurora',60),(88,'Castelbianco',73),(89,'Mignanego',82),(90,'Berwick-upon-Tweed',37),(91,'Argyle',9),(92,'Torgnon',80),(93,'Vlimmeren',18),(94,'Huppaye',88),(95,'Oristano',35),(96,'Dannevirke',6),(97,'Landelies',31),(98,'Boulogne-Billancourt',80),(99,'Francavilla in Sinni',48),(100,'Dresden',3);
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `fechaIngreso` date NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `numeroLote` int(11) NOT NULL,
  `Peso` float NOT NULL,
  `Dimesiones` varchar(20) NOT NULL,
  `Valor` float NOT NULL,
  `tipoProducto_idtipoProducto` int(11) NOT NULL,
  `empleado_Cedula` int(11) NOT NULL,
  PRIMARY KEY (`idProducto`,`tipoProducto_idtipoProducto`,`empleado_Cedula`),
  KEY `fk_producto_tipoProducto1_idx` (`tipoProducto_idtipoProducto`),
  KEY `fk_producto_empleado1_idx` (`empleado_Cedula`),
  CONSTRAINT `fk_producto_empleado1` FOREIGN KEY (`empleado_Cedula`) REFERENCES `empleado` (`cedula`),
  CONSTRAINT `fk_producto_tipoProducto1` FOREIGN KEY (`tipoProducto_idtipoProducto`) REFERENCES `tipoproducto` (`idtipoproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Black & Decker Matrix Impact Driver Head Attachment, Bdcmti','Dignissim at lacinia feugiat pretium.','1909-11-21',44,4225,86.51,'101',82297.2,19,31),(2,'Buffalo Tools 1500 Watt Heat Gun','Aenean cras nisl tellus quam!','1926-10-31',51,7438,49.56,'110',20126.7,7,78),(3,'Skil 4-1/2 Angle Grinders - 4 1/2 Angle Grinder With Metal Front 6 Amp','Ut platea sagittis mi fringilla.','1954-03-02',26,6673,87.35,'73',85912,16,28),(4,'Numax 18 Gauge 2 In 1 Brad Nailer & Stapler','Cras maecenas rutrum felis inceptos!','1970-09-30',8,3297,2.26,'111',18501.9,12,58),(5,'Kawasaki 10 Piece Screw Extractor And Drill Bit Set','Non at senectus facilisis imperdiet.','1933-02-05',24,1243,43.67,'101',53576.5,10,63),(6,'Dremel Sm500 3\" Multi-purpose Carbide Wheel','Sociis egestas curabitur at quis.','1971-03-15',45,7087,47.41,'134',86036.5,6,11),(7,'Black & Decker 6v High Performance Screwdriver, Pd600','Arcu netus vehicula elit suscipit.','1920-11-23',31,6355,85.13,'197',35426,7,30),(8,'Bostitch 1/2 Air Impact Wrench, Btmt72391','Litora scelerisque cras placerat tortor.','1939-04-10',14,7140,72.59,'57',13128.3,17,28),(9,'Stanley Black & Decker Dw304pk Dw 10 Amp Reciprocating Saw Kit','Conubia nascetur nam orci feugiat!','1999-05-18',49,8969,15.8,'33',79752.9,13,36),(10,'Astro Pneumatic Grease Gun Mini 3oz Cap W/ Needle Nozzle','Elit quis phasellus nisl potenti.','2007-01-07',44,8364,31.15,'130',75372.3,20,45),(11,'Arrow Fastener Heavy Duty Plier Type Stapler','Venenatis pulvinar ante blandit adipiscing.','1911-12-02',33,2958,35.93,'172',23803.1,12,5),(12,'Arrow Fastener Heavy Duty Plier Type Stapler','Scelerisque gravida vitae adipiscing maecenas.','1987-07-30',43,4374,68.26,'93',1894.64,4,6),(13,'Irwin 30-piece Drive Set, 1885554','Scelerisque venenatis taciti lobortis. Morbi.','1988-04-27',47,2361,42.13,'171',78603.6,6,40),(14,'Buffalo Tools 19 Piece Hole Saw Set','Posuere quisque nisi lacinia ultricies.','1921-07-01',3,7662,58.73,'161',68787.5,8,56),(15,'Allied Tools 72-piece Rotary Tool Set','Volutpat iaculis class eget hac.','1941-03-25',49,3339,84.26,'77',55031.2,8,82),(16,'Stalwart Grease Gun With Accessories','Tellus at montes metus lacus.','1924-08-19',29,4432,53.42,'37',27475.1,3,93),(17,'Ingersoll Rand 705-93 Trigger','Posuere quam dis dui elementum.','1971-01-23',28,3600,33.66,'94',56108.6,9,88),(18,'Primefit Garage Inflator With Air Accessory Kit And Storage Case','Augue laoreet ullamcorper facilisi eros.','1970-09-10',3,7455,4.71,'104',35855.4,20,26),(19,'Acme Automotive Typhoon Pro Blow Gun','Justo, est dolor aptent primis?','1965-01-04',32,2178,89.77,'123',51166.3,18,95),(20,'Wagan Hi Speed Air Compressor','Platea metus ullamcorper nam neque.','2001-03-05',46,5075,47.01,'192',83003.8,17,62),(21,'Numax 2\" Brad Nailer','Dignissim dapibus nam ultrices aliquam.','1919-07-02',50,5868,43,'20',66692.9,8,83),(22,'Buffalo Tools Stainless Steel Work Table','Nisl luctus accumsan dictumst cras.','1972-02-17',33,3207,93.61,'179',10073.7,10,64),(23,'Bostitch Air Compressor Blowgun, Btfp72330','Dolor enim nibh mauris ultricies.','1992-02-03',60,3211,14.71,'140',25396.6,15,41),(24,'Mountain Blow Gun 24 Deluxe W/90 Deg Angled Nozzle','Donec rutrum fusce libero sodales.','1913-01-23',38,2370,50.18,'198',87965.2,7,44),(25,'Dremel Workstation, 220-01','Fames mus torquent erat est.','1976-12-07',54,4570,62.59,'108',88293.5,14,78),(26,'Hitachi 3/8\" 6 Amp Drill With Keyless Chuck','Mi purus nec taciti lobortis!','1999-04-08',10,6995,88.96,'66',30498.4,11,80),(27,'Bostitch 100 Ft Air Compressor Hose Prozhoze, 3/8\" X 100, Pro-38100','Eleifend et praesent etiam porttitor.','1925-01-09',14,7198,74.92,'12',68403.4,2,21),(28,'Sharpe Manufacturing 6765-1 Replacement Dessicant Beads - 5 Lb.','Purus placerat, vestibulum erat dui.','1971-09-01',25,5915,66.93,'165',88055.5,10,88),(29,'Black And Decker 20v Max Lithium Drill And Recip Saw Kit, Bdcd220rs','Felis quis placerat aenean dapibus.','1901-08-26',3,4883,89.89,'46',1351.11,5,25),(30,'Fpc Corporation Surebonder Dual Melt High/low Temperature Glue Gun Fprdt270','Dignissim feugiat aliquet, rhoncus cum.','1993-09-11',47,2165,66.44,'29',62237.7,8,63),(31,'Bostitch Air Chisel Hammer With 3 Chisels, Btmt72394','Metus adipiscing ornare blandit ultrices.','1973-03-05',39,4114,56.83,'174',84642.1,6,84),(32,'Powryte Dual Action Air Sander, 100112a','Mauris senectus curae; odio cursus.','1935-03-11',42,7364,13.08,'91',98521.2,10,92),(33,'Gmc Power Equipment 1.6 Gallon Gmc Syclone 1675a Ultra Quiet And Oil-free Air Compressor','Lectus arcu sed malesuada duis.','1932-03-23',49,8226,34.55,'70',60475.1,4,61),(34,'Skil 10 Count U Shank Jigsaw Blade Set 94910','Fringilla arcu posuere arcu curabitur.','1987-06-07',50,5753,33.87,'200',99629.6,17,19),(35,'Skil 4v Max Lithium-ion Screwdriver, 2354-06','Risus lectus vulputate litora felis.','1904-10-14',10,6676,59.79,'143',44387.6,3,4),(36,'Makita Btl061 Lxt 18 Volt Angle Drill Kit','Molestie neque habitant ipsum tortor!','1944-07-02',15,3583,3.02,'140',89525.7,11,38),(37,'Bosch Cs5 7-1/4\" 15-amp Circular Saw','Sollicitudin mus augue suspendisse montes?','1979-11-10',7,7657,4.9,'27',68076.5,8,84),(38,'Buffalo Tools 4.8v Cordless Screwdriver','Felis faucibus praesent sed dictumst!','1957-06-17',3,1513,65.84,'135',75169.7,18,59),(39,'Fry Technologies Cookson Elect Am53945 Flo-temp Lead-free Solid Wire Solder','Nunc pharetra netus conubia primis!','1958-08-08',58,3594,55.19,'172',17019.1,6,45),(40,'Ad Tech Designer Series Lo Temp Mini Glue Gun, Multi-color','Donec felis, laoreet fermentum tortor.','1910-07-21',26,4743,41.65,'14',79291.7,12,51),(41,'Campbell Hausfeld Brad Nailer And Stapler','Mus morbi, non senectus vel.','1980-09-26',12,7452,44.95,'175',8720.02,10,28),(42,'Black And Decker 3/8\" 5-amp Variable Speed Drill With Keyless Chuck, Dr260b','Pretium nibh vivamus aenean, litora.','1979-01-13',42,4296,67.52,'119',24157.8,7,68),(43,'Wagner 0283022c Ht775 Heat Gun','Ullamcorper nullam maecenas mauris eros.','1964-07-07',60,2042,88.85,'153',74048.5,5,87),(44,'Cherry Gel Pumice Hand Cleaner, Cherry, 1 Gal','Erat sociis commodo adipiscing in.','1986-02-04',47,6443,73.75,'125',37123.1,16,14),(45,'Black & Decker 68-piece Project Kit With 20v Lithium Drill/driver, Li2000pk','Lorem consectetur himenaeos suspendisse ridiculus!','2002-07-25',9,1011,41.92,'80',44311.5,6,97),(46,'Lumberjack Tools Trh1000 1-inch Home Series Tenon Cutter','Nibh platea ornare libero eget.','2012-09-10',38,6131,57.67,'48',21588.4,3,63),(47,'Electric Glue Skillet 7\"','Sociis tempor consectetur et aliquet.','1999-07-21',53,5634,59.04,'151',29843.7,14,46),(48,'Bostitch Air Chisel Hammer With 3 Chisels, Btmt72394','Mattis vestibulum volutpat molestie felis?','1907-02-06',22,5453,23.29,'96',95918,15,48),(49,'Skil 4570-01 18-volt Jigsaw','Condimentum leo purus pellentesque nisi.','1964-05-09',11,5968,41.83,'130',36500.7,22,45),(50,'Stack-on Steel Diy Workbench So-382b','Cum sociosqu aliquet class. Et.','1951-11-15',30,3776,43.78,'22',80026.8,12,20),(51,'Hitachi 18v Lithium-ion Cordless Impact Driver W/120-pc Drill/drive Set','Curabitur interdum inceptos fermentum molestie.','1974-01-06',29,4777,55.37,'73',2837.59,18,75),(52,'Eclipse 900-206 Helping Hands With Solder Iron Holder - 2.5x','Ullamcorper tempor fames porttitor cras.','1930-09-06',24,2918,37.13,'74',66455.2,13,65),(53,'Hitachi Power Tools C12lch 12\" Co.mpound Miter Saw With Digital Display And Laser M','Eleifend purus class semper mauris.','1972-09-22',39,1811,81.84,'53',35859.5,8,51),(54,'Skil Sb18c Sb18a 18v Ni-cd Battery','Curabitur venenatis turpis dolor malesuada.','1962-07-30',32,4610,83.87,'151',99079.2,9,19),(55,'Masterflow 12v 3-in-1 Turbo-boost Air Compressor / Inflator / Deflator','Hac, quam posuere sollicitudin fringilla.','1902-12-04',54,8594,36.28,'15',79273.2,8,12),(56,'Skil 5995-01 18-volt 5-3/8\" Circular Saw','Massa varius mi, velit erat?','1961-06-12',8,6881,69.19,'118',66556.4,3,7),(57,'Skil 2860-10 18-volt Drill And Circular Saw Combo Kit','Himenaeos dolor consequat lacus turpis.','1912-02-17',27,7522,39.76,'121',91472.4,13,25),(58,'Fein Asb 14 + Afmm 14 14.4v, 4ah, Cordless Fmm + Hammer Drill','Taciti venenatis libero risus dictum.','1918-01-13',54,4633,49.37,'52',78593.4,9,18),(59,'Bon-aire 12 Volt All In One Compressor In A Bag, Yellow','Non vestibulum nostra elit dictum.','2013-06-20',54,5678,65.69,'39',53188.6,16,10),(60,'Ingersoll Rand 285b-6 Heavy-duty 1-inch Impact Wrench With 6-inch Anvil','Fermentum morbi id iaculis lacus!','1998-06-14',53,5744,51.8,'174',40208.1,21,19),(61,'Porter Cable 352vs 3\" X 21\" Variable Speed Belt Sander','Auctor gravida aliquet commodo lectus.','1957-01-02',25,6680,54.55,'113',90566.1,9,2),(62,'Hitachi 18v Lithium-ion 1/2\" Cordless Hammer Drill','Auctor iaculis ligula habitant neque.','1909-10-21',54,4979,68.61,'57',59910.3,4,93),(63,'Microflex Mxbd-1000-pf Black Dragon X-small Latex Fully Textured Gloves','Fusce nisl purus sociis sodales!','1939-07-23',59,8749,16.89,'190',83415.6,4,23),(64,'Hyundai Hpc11090 11-gal Air Compressor Kit','Scelerisque euismod quisque class? Himenaeos!','1949-04-08',30,7774,73.3,'196',92861.7,3,80),(65,'Blair 11108-3 11000 Series Rotobroach Cutters - 3/8-inch - 3-pack','Neque faucibus ipsum torquent leo.','1938-12-22',55,7186,90.95,'176',17696.9,18,56),(66,'Black & Decker Matrix Jig Saw Head Attachment, Bdcmtjs','Dictumst elit tincidunt cum adipiscing.','1992-08-09',28,5710,10.14,'158',18322.5,10,17),(67,'Black & Decker 4-volt Max Gyro Screwdriver, Bdcs40g','Fermentum sit euismod imperdiet aptent.','1986-05-01',28,7866,87.87,'138',51835,19,82),(68,'Buffalo Tools 5 Speed Drill Press','Lobortis libero risus consequat mollis?','1966-03-12',33,1049,56.23,'132',69423,17,55),(69,'Legacy Mfg Straight-on Tapered Chuck Inflator W/ 12 In. Hose, Brass Indicator Bar, 10-90 Psi','Id eros aliquam felis metus.','1916-05-17',37,4183,40.63,'84',6816.28,12,20),(70,'Audiopipe Thsy3075c Pipeman Train Horn Air Compressor','Netus risus, porttitor ac rutrum.','2001-07-28',38,3816,51.45,'174',17394.3,16,69),(71,'Dmt 8 Inch Duosharp Plus Benchstone Fine Coarse Wm8fc-wb','Fames penatibus ultrices senectus inceptos.','1948-05-07',46,8174,65.13,'184',20009.1,5,77),(72,'Vermont American 5 15 Tpi Multi Purpose Pinned End Scroll Jig Saw Blade 30408','Porttitor facilisi cras habitasse nisl.','1952-06-16',24,3217,12.22,'144',5889.5,18,76),(73,'Dewalt Dwt-dck212s2 12v Max Drill, Driver, Recip Combo Kit','Integer curae; nullam himenaeos dui.','2007-05-28',47,5979,62.58,'49',25238.3,9,18),(74,'Skil 4-position Orbital Jigsaw With Laser Guide, 4495-02','Maecenas vitae molestie, mauris faucibus.','2005-12-18',34,6220,19.53,'101',54946.2,12,9),(75,'Freeman Pf3p6galck Freeman Ultimate Finishing Kit With 6 Gallon Compressor, 3 Nailers, Canvas Carry','Facilisi mollis lobortis augue enim!','2007-10-18',26,1216,78.69,'60',29598.8,22,63),(76,'Drill America 3/16-1/2x16ths Step Drill Bit','Hac consequat duis condimentum massa!','1955-12-16',4,1224,88.02,'93',25200.8,2,54),(77,'Acme Automotive Inline Adj Air Regulator','Viverra venenatis penatibus in luctus!','1925-04-16',3,7689,15.08,'26',85148,21,98),(78,'Eclipse 902-134 Solder Tip For 900-066n Solder Station','Potenti tellus nullam vulputate elementum.','1939-02-10',43,4203,8.54,'43',52317,16,54),(79,'California Air Tools 10 Gallon 2.0 Hp Steel Tank Oil-lubricated Air Compressor','Ad class etiam facilisi odio.','1912-04-17',10,1672,98.68,'51',19660.2,17,83),(80,'North American Tool 51872 80-piece Mini Rotary Tool Kit','Eleifend platea eget et magnis.','2004-05-14',42,7650,54.25,'186',10623.9,15,88),(81,'Black & Decker 1/4 Sheet Finisher Sander, Fs540','Ultrices auctor varius diam sodales.','1998-12-04',22,8031,86.29,'43',60806.4,9,55),(82,'Hitachi 2 Hp 4-gal Compressor','Viverra molestie himenaeos tristique potenti?','1977-02-14',52,7071,67.81,'99',95978.7,16,97),(83,'Eclipse Pz3x1-15/16 Bit Pozidrive Size 3 1-15/16in Long 1/4in Hex','Rutrum molestie interdum sem torquent.','1951-10-11',20,5966,25.47,'139',40013.4,12,57),(84,'Stalwart 0.5\" Chuck Hammer Drill','Parturient molestie cras luctus cum.','1986-06-13',56,2572,30.26,'151',35917.6,1,76),(85,'Dremel Carving/engraving Mini Accessory Kit, 689-03','Dapibus consequat litora mus, viverra.','1911-04-24',14,5145,12.44,'54',32032.5,16,7),(86,'Black And Decker 3/8\" 5-amp Variable Speed Drill With Keyless Chuck, Dr260b','Nunc justo lobortis eu facilisi.','1980-12-14',56,8013,31.89,'38',26700.5,14,3),(87,'Acme Automotive Inline Adj Air Regulator','Sapien proin est vitae neque.','1959-04-26',3,7476,92.69,'135',95379.9,15,98),(88,'Wagner Ht1000 Heat Tool Wagner Ht1000 Heat Tool','Lorem convallis lacinia urna platea.','1919-07-27',30,3876,65.79,'180',80588.2,18,50),(89,'Stanley Tr45 Light Duty Staple Gun','Magnis class cras lobortis fames.','2011-02-22',4,1509,95.39,'57',52875.2,11,86),(90,'10-count 10\" Glue Sticks','Fringilla duis consectetur commodo inceptos.','1965-03-05',29,1970,53.29,'156',43233.8,6,75),(91,'Black & Decker 41-piece Project Kit With 3.6v Lithium Screwdriver, Ldx120pk','Rhoncus malesuada commodo posuere justo.','1961-12-16',12,3191,56.98,'105',37893.4,11,43),(92,'Dual-temp Mini Glue Gun Kit, Red','Vel fringilla suspendisse vulputate iaculis?','1951-06-12',37,2677,68.23,'34',29782.2,17,62),(93,'Lumberjack Tools Tac2000 2-inch Commercial Series Tenon Cutter','Feugiat turpis consequat lacus in.','1977-04-30',43,3960,32.14,'123',80623.5,8,85),(94,'Stalwart 25-piece 4.8-volt Cordless Screwdriver With Led','Sodales potenti phasellus integer eleifend?','2002-07-16',29,5978,77.44,'129',46923.1,15,13),(95,'Campbell Hausfeld 13 Gallon Electric Oil Free Horizontal Air Compressor','Venenatis curae;, ullamcorper nunc consectetur!','1969-05-29',28,8435,43.37,'167',64903.6,4,84),(96,'Plywood And Paneling Circular Saw Blade','Vitae semper, lacus consequat. Vulputate.','1912-10-27',17,6049,9.01,'127',35745.2,19,59),(97,'Freud 1/4 Radius V Groove Straight Router Bit 20-301','Sapien morbi porta curae; ante.','1916-09-01',32,6527,58.13,'44',59449.2,19,64),(98,'Boa Grabit Screw Extractor','Adipiscing nunc hac natoque hac.','1939-03-06',31,6827,90.82,'160',48737.8,18,22),(99,'Apex Tool Group, Llc-tools 8125n Soldering Gun Tip','Facilisi consectetur dis scelerisque, suscipit.','1957-05-12',13,3885,10.61,'101',89715.8,17,54),(100,'Stanley Fatmax Value Bundle','Adipiscing eget duis ipsum euismod.','1933-07-12',33,2490,95.91,'19',70318.6,8,62);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productoventa`
--

DROP TABLE IF EXISTS `productoventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `productoventa` (
  `Cantidad` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productoventa`
--

LOCK TABLES `productoventa` WRITE;
/*!40000 ALTER TABLE `productoventa` DISABLE KEYS */;
/*!40000 ALTER TABLE `productoventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoproducto`
--

DROP TABLE IF EXISTS `tipoproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipoproducto` (
  `idtipoproducto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`idtipoproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoproducto`
--

LOCK TABLES `tipoproducto` WRITE;
/*!40000 ALTER TABLE `tipoproducto` DISABLE KEYS */;
INSERT INTO `tipoproducto` VALUES (1,'Omnicare','Nisi dis aenean sodales nisi accumsan, feugiat hendrerit. Senectus nec.'),(2,'Reliant Energy Retail Holdings ','Sit bibendum rhoncus etiam arcu magnis mus maecenas rutrum pretium!'),(3,'Pierrel Research','Morbi etiam posuere porttitor phasellus volutpat dictum primis nam natoque.'),(4,'Itron','Purus montes tincidunt mattis, purus erat. Ligula nunc tellus habitasse?'),(5,'Erie Insurance Group','Consequat gravida, primis class. Nunc cras placerat urna mauris varius.'),(6,'Wyndham Worldwide Corp','Malesuada vivamus, aptent facilisi eget. Taciti ac turpis magnis amet.'),(7,'American Financial Group','Pellentesque dignissim imperdiet tortor imperdiet morbi sagittis. Blandit leo cum.'),(8,'Global Payments','Vel, tincidunt vulputate nec habitant volutpat porta non urna vitae.'),(9,'Target Corporation','Curae; convallis faucibus euismod lectus per primis dolor ornare malesuada.'),(10,'Boston Scientific Corporation','Risus vestibulum morbi pretium habitant mollis. Magna nisl at vestibulum.'),(11,'Beacon Roofing Supply','Himenaeos, penatibus tempor ipsum! Inceptos mus justo nibh conubia fusce.'),(12,'Berkshire Hathaway','Nam nunc ante tempor eros nisl. Potenti, nec blandit eros.'),(13,'Regal Entertainment Group','Imperdiet class natoque quisque quis ridiculus fames commodo tortor fusce?'),(14,'Rowan Companies','Enim quis convallis ultrices! Per, aptent nisi platea. Laoreet quis.'),(15,'Hudson City Savings Bank','Faucibus eros porttitor eu curae;? Convallis nibh vulputate habitasse convallis.'),(16,'Securian Financial','Vulputate ultricies semper ultrices tempus commodo maecenas nullam sagittis. Taciti.'),(17,'Eli Lilly And Company','Turpis aptent curae; suspendisse convallis ad dignissim praesent. Consectetur tellus?'),(18,'Covanta Holding Corporation','Sociis tortor mollis conubia fames ultrices vehicula arcu ultrices semper.'),(19,'The Children\'s Place Retail Stores','Eleifend diam nisi sodales duis non curabitur curae; cursus habitasse?'),(20,'Big Lots Stores','Auctor lectus, dictumst neque malesuada lobortis libero in hac netus.'),(21,'Ch2m Hill','Leo aliquam bibendum molestie tortor. Dis nisi phasellus fermentum id.'),(22,'Airgas','Vulputate ullamcorper aptent ad ligula suscipit at nullam sed fringilla.'),(23,'Penn National Gaming','Arcu dignissim massa sollicitudin nostra natoque augue quis integer. Gravida.'),(24,'The Dow Chemical Company','Torquent habitant elit lorem parturient ligula pharetra facilisis! Augue mus.'),(25,'Home Depot Usa','Ultrices hac leo hac euismod. Congue nibh ultricies natoque nisi.'),(26,'Celanese Corporation','Diam fusce ridiculus porttitor parturient in. Per lectus nibh morbi!'),(27,'First American Financial Corporation','Sociis tristique feugiat curae; purus nec cubilia. Vitae, ultricies dapibus.'),(28,'Baxter International','Amet eleifend gravida feugiat. Nullam hac amet duis felis! Vel.'),(29,'Health Net','Platea diam, tincidunt conubia sollicitudin facilisi fusce parturient proin integer.'),(30,'Western Refining','Fusce tempor integer praesent dapibus! Blandit viverra sollicitudin dui ridiculus?'),(31,'Cooper Tire & Rubber Company','Fringilla lacinia nam id, etiam curabitur dictumst nullam. Id a.'),(32,'Spectrum Brands Holdings','Varius platea mi tempor elit rhoncus fringilla vulputate eros gravida.'),(33,'Brocade Communications Systems','Interdum elit tellus fringilla nec. Risus fermentum nunc luctus pellentesque.'),(34,'Intel Corporation','Erat porta tempus justo felis vitae convallis ipsum ligula nam.'),(35,'Modine Manufacturing Company','Lacus suspendisse inceptos feugiat a mollis libero aliquet curabitur dictum.'),(36,'Unum Group','Duis phasellus rhoncus luctus nec lectus nisi eu feugiat quis.'),(37,'Genuine Parts Company','Dapibus, quis hac nec est. Est dignissim cum, inceptos lacinia.'),(38,'Amica Mutual Insurance Company','Maecenas mi consequat mauris rutrum eu bibendum aliquam sollicitudin consequat.'),(39,'Michael Foods','Interdum massa enim per hac dictumst justo curae; velit dictumst.'),(40,'Devon Energy Corp','Lectus interdum amet etiam tellus nostra. Conubia faucibus dictum curae;.'),(41,'Urs Corporation','Odio pulvinar blandit, per praesent. Amet porta duis curabitur tempor.'),(42,'Sonic Automotive','Nisi gravida sociosqu phasellus in sociis augue aliquet sapien. Integer.'),(43,'Central Garden And Pet','Pharetra bibendum ut nascetur dapibus elementum bibendum taciti habitasse a?'),(44,'Southern Union Company','Sociosqu pretium velit mauris tortor, gravida dictum iaculis justo. Id.'),(45,'World Fuel Services Corporation','Nostra cum bibendum risus pellentesque leo orci, faucibus aenean cum.'),(46,'Mccormick & Company','Integer consequat et pretium. Ultricies enim egestas sit at ad!'),(47,'Loews Corporation','Praesent risus cursus consectetur dictumst ipsum varius consectetur fermentum aenean.'),(48,'Smithfield Foods','Inceptos ultrices justo bibendum pellentesque lorem consequat. Porta pulvinar feugiat!'),(49,'Comcast Corporation','Venenatis placerat tempor odio potenti lacinia! Libero maecenas orci sed.'),(50,'Sungard','Urna primis sodales inceptos ridiculus. Eget platea enim senectus laoreet.'),(51,'Hanesbrands','Nostra conubia erat ultrices per integer luctus dolor parturient tincidunt.'),(52,'Allegheny Energy','Venenatis at leo mi fermentum congue curae; porta leo laoreet.'),(53,'First Data Corporation','Ullamcorper magna eleifend facilisis maecenas consectetur inceptos sapien rhoncus. Quisque.'),(54,'Ross Stores','Nascetur aliquet parturient, rutrum class eget mollis curabitur maecenas. Scelerisque.'),(55,'Ecolab','Ornare fusce torquent platea ornare. Diam rutrum ullamcorper parturient mattis!'),(56,'Pinnacle Foods Group ','Potenti convallis quis dictumst fringilla, fermentum fringilla proin morbi a.'),(57,'Urban Outfitters','Dictum velit, varius elementum et velit cubilia? Ornare ut metus?'),(58,'Plexus Corp','Pretium sapien vel morbi rutrum facilisi nisl senectus. At sociosqu.'),(59,'Qualcommorporated','Per pulvinar dapibus at sodales donec senectus ipsum. Felis sed.'),(60,'Huntsman International ','Placerat sapien fusce iaculis nec tellus tortor, aptent proin. Curae;.'),(61,'Allegheny Energy','Nisl sed lacinia sociis. Suscipit interdum lectus vitae laoreet ultrices!'),(62,'Quest Diagnosticsorporated','Ipsum hac inceptos quis egestas natoque erat quis dui. Dapibus?'),(63,'Valmont Industries','Elementum pellentesque porttitor lorem justo id gravida himenaeos posuere, odio.'),(64,'K. Hovnanian Companies, ','Posuere sociosqu senectus nostra potenti diam at ridiculus parturient adipiscing.'),(65,'Constellation Energy Resources','Primis arcu porttitor at ante orci viverra vestibulum ligula interdum.'),(66,'Aon Plc','Ullamcorper turpis vestibulum netus aenean tellus suspendisse integer. Nullam, nunc.'),(67,'R.j. Reynolds Tobacco Company','Molestie turpis venenatis integer donec urna. Lacinia sagittis, tempus odio?'),(68,'Johnson And Johnson','Dictumst aliquam ullamcorper porttitor rhoncus morbi dui tincidunt torquent. Euismod.'),(69,'Sirius Xm Radio','Euismod ornare taciti mus, nibh ipsum class ad integer posuere.'),(70,'Ball Corporation','Consectetur neque ut sagittis quisque velit parturient cubilia porttitor ligula.'),(71,'Sears Holdings Corporation','Porttitor etiam maecenas magna nibh, felis enim felis class? Interdum.'),(72,'Borgwarner','Conubia at, vivamus eget eleifend. Laoreet accumsan praesent pretium ultrices.'),(73,'Discovery Communications','Egestas mus velit fusce aptent. Proin inceptos euismod enim ad.'),(74,'Aflac','Pretium id rutrum tortor ridiculus, congue diam nisi viverra conubia?'),(75,'Liberty Media Corporation','Donec aliquam proin duis lorem. Nisi libero facilisis metus pellentesque.'),(76,'Conocophillips','Semper tincidunt vestibulum hac mauris ullamcorper. Velit molestie malesuada lacinia.'),(77,'The Timken Company','Sed metus accumsan facilisis magna nunc? Mollis dictumst habitant litora.'),(78,'Nbcuniversal','Nostra natoque nisi ac. Congue tincidunt facilisi porttitor, rhoncus mollis.'),(79,'Hawaiian Electric Industries','Quis tincidunt libero curae;. Risus tortor nulla primis leo fames.'),(80,'Western Refining','Eros est vel tellus nunc eget tellus et curae; integer.'),(81,'Bon-ton Stores','Pellentesque sapien facilisi mus nisi augue tincidunt luctus etiam nam.'),(82,'Tutor Perini Corporation','Varius pharetra aenean vulputate egestas quisque laoreet molestie dictumst! Senectus.'),(83,'State Farm Insurance','Vivamus facilisi, adipiscing dis sed id. Faucibus tempus commodo cubilia.'),(84,'Amerisourcebergen','Laoreet adipiscing rutrum class ridiculus vehicula a nulla proin nulla.'),(85,'Best Buy Co.','Diam sed dui auctor! Curae; himenaeos elementum volutpat. Platea bibendum.'),(86,'Raymond James Financial','Leo inceptos eu volutpat venenatis diam molestie habitant quisque natoque.'),(87,'Ferro Corporation','Interdum ac at mauris mauris mollis luctus. Ac ipsum venenatis.'),(88,'Cooper Tire & Rubber Company','Nostra laoreet ultricies habitasse libero natoque quam natoque magnis orci.'),(89,'Franklin Templeton Investments','Nam magna suscipit lectus. Potenti aliquet ultrices egestas habitant vel.'),(90,'Aptargroup','Consectetur sodales proin dis lectus luctus? Maecenas ornare, pellentesque ultrices.'),(91,'Icahn Enterprises','Molestie tempor consectetur pretium, urna habitant? Praesent facilisis sem egestas.'),(92,'Level','Orci vestibulum luctus ridiculus! Luctus vivamus sodales sagittis torquent dictumst.'),(93,'The Guardian Life Insurance Company Of America','Metus volutpat praesent suscipit suscipit nunc sed vel. Dapibus dictumst.'),(94,'The Coca-cola Company','Lacus ante iaculis sapien. Nisl cursus consectetur elementum enim ad.'),(95,'Snap-on Tools','Risus accumsan suscipit vitae dolor hac penatibus. Fringilla turpis sollicitudin.'),(96,'Xerox Corporation','Luctus lacinia scelerisque morbi placerat cubilia. Sociis aliquam non mus.'),(97,'Cintas Corporation','Mi adipiscing lobortis porttitor sagittis sed lacinia interdum ultrices accumsan.'),(98,'Albemarle Corporation','Ridiculus congue adipiscing pharetra tempus nec phasellus fames mi est!'),(99,'Church & Dwight Co','Tincidunt aliquet nostra maecenas mi taciti pretium viverra semper elit?'),(100,'Google','Iaculis quam arcu fames leo vulputate amet pretium neque malesuada?');
/*!40000 ALTER TABLE `tipoproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipousuario`
--

DROP TABLE IF EXISTS `tipousuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipousuario` (
  `idtipoUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Descripcion` varchar(60) NOT NULL,
  PRIMARY KEY (`idtipoUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipousuario`
--

LOCK TABLES `tipousuario` WRITE;
/*!40000 ALTER TABLE `tipousuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipousuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(80) NOT NULL,
  `authKey` varchar(250) NOT NULL,
  `accessToken` varchar(250) NOT NULL,
  `activate` tinyint(1) NOT NULL DEFAULT '0',
  `role` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'sebastianslz','fsbqobwqC.aMo','jsebastian3000@gmail.com','769cc88d','44740f40',1,1),(3,'johnny9052','fsbqobwqC.aMo','alexander9052@gmail.com','57c27c77','0d8d4308',0,1),(4,'jasalazar','fsbqobwqC.aMo','jasalazar@eam.edu.co','4a41c8af','c31d58a4',1,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `venta` (
  `idVenta` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Cliente_Cedula` int(11) NOT NULL,
  `producto_idProducto` int(11) NOT NULL,
  `empleado_Cedula` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`idVenta`,`Cliente_Cedula`,`producto_idProducto`,`empleado_Cedula`),
  KEY `fk_Venta_Cliente1_idx` (`Cliente_Cedula`),
  KEY `fk_venta_producto1_idx` (`producto_idProducto`),
  KEY `fk_venta_empleado1_idx` (`empleado_Cedula`),
  CONSTRAINT `fk_Venta_Cliente1` FOREIGN KEY (`Cliente_Cedula`) REFERENCES `cliente` (`cedula`),
  CONSTRAINT `fk_venta_empleado1` FOREIGN KEY (`empleado_Cedula`) REFERENCES `empleado` (`cedula`),
  CONSTRAINT `fk_venta_producto1` FOREIGN KEY (`producto_idProducto`) REFERENCES `producto` (`idproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1002,'2017-11-16',3,12,7,50),(1134,'2017-01-23',23,20,49,13),(1248,'2017-03-21',21,90,76,49),(1341,'2017-07-09',59,61,12,31),(1662,'2017-08-25',53,55,41,40),(1746,'2017-01-07',45,55,28,27),(1781,'2017-10-22',24,83,82,43),(1798,'2017-09-26',20,51,22,40),(1825,'2017-10-20',99,12,11,33),(1827,'2017-08-05',6,80,46,9),(1848,'2017-09-29',41,7,90,3),(1872,'2017-05-04',4,66,98,49),(1915,'2017-05-16',91,54,32,5),(2096,'2017-06-04',7,45,66,46),(2146,'2017-01-14',70,65,30,47),(2213,'2017-01-26',99,84,66,49),(2338,'2017-01-16',29,76,52,16),(2385,'2017-10-25',37,66,85,3),(2396,'2017-08-10',39,56,97,35),(2420,'2017-10-19',84,34,24,30),(2423,'2017-11-29',46,77,41,10),(2441,'2017-07-14',35,44,70,35),(2544,'2017-08-03',98,6,93,32),(2550,'2017-06-24',39,81,83,34),(2650,'2017-04-23',2,48,83,25),(2686,'2017-02-16',33,84,30,27),(2705,'2017-10-11',87,78,4,15),(3198,'2017-10-09',82,85,31,26),(3216,'2017-04-25',62,18,62,32),(3310,'2017-09-12',3,58,76,2),(3374,'2017-09-07',80,19,19,37),(3382,'2017-11-01',50,71,93,2),(3383,'2017-06-13',97,89,75,29),(3384,'2017-06-03',26,1,70,13),(3401,'2017-11-10',62,7,55,44),(3531,'2017-04-10',93,92,39,45),(3567,'2017-10-23',43,45,30,26),(3613,'2017-10-10',73,92,82,40),(3789,'2017-05-25',68,54,41,6),(3813,'2017-07-01',15,21,68,0),(4411,'2017-08-26',90,96,98,5),(4420,'2017-11-30',47,44,24,25),(4482,'2017-05-12',100,23,45,48),(4672,'2017-10-20',48,71,25,10),(4689,'2017-02-03',84,13,48,14),(4691,'2017-03-06',52,64,13,11),(4802,'2017-01-05',81,45,85,36),(4817,'2017-10-18',81,22,37,42),(4946,'2017-11-26',16,54,68,25),(4997,'2017-05-08',43,57,69,15),(5011,'2017-04-12',58,55,35,28),(5138,'2017-09-15',84,68,65,30),(5158,'2017-03-07',46,89,95,29),(5186,'2017-03-18',85,48,39,14),(5198,'2017-11-08',94,40,32,30),(5217,'2017-02-05',73,49,47,23),(5313,'2017-01-11',80,17,12,9),(5346,'2017-06-20',88,47,95,25),(5350,'2017-02-14',5,39,84,37),(5371,'2017-02-09',50,26,90,44),(5400,'2017-08-23',78,57,54,38),(5454,'2017-11-19',34,32,77,24),(5534,'2017-06-20',19,97,82,15),(5538,'2017-04-30',5,26,36,20),(5542,'2017-03-04',53,90,46,3),(5675,'2017-09-20',48,28,75,15),(5780,'2017-02-05',1,43,46,26),(5831,'2017-06-10',24,34,39,16),(5893,'2017-03-27',38,66,70,30),(6264,'2017-06-11',6,12,31,39),(6371,'2017-04-27',47,58,71,5),(6471,'2017-06-20',77,87,33,24),(6762,'2017-03-03',93,65,80,8),(6819,'2017-03-20',9,48,20,4),(6830,'2017-03-01',45,90,5,9),(6969,'2017-05-20',75,1,62,27),(6992,'2017-06-16',51,32,60,42),(7003,'2017-01-16',36,25,100,5),(7014,'2017-07-24',49,93,83,29),(7190,'2017-07-25',20,92,7,26),(7353,'2017-07-31',59,21,38,3),(7427,'2017-10-11',76,89,93,14),(7446,'2017-07-10',9,65,59,45),(7458,'2017-04-06',4,67,87,2),(7482,'2017-01-18',77,28,56,15),(7523,'2017-03-31',20,73,88,35),(7704,'2017-04-17',86,81,71,7),(7916,'2017-08-10',36,33,37,9),(8013,'2017-10-24',53,56,80,7),(8015,'2017-09-27',30,33,5,25),(8117,'2017-01-23',38,96,98,22),(8290,'2017-02-02',80,14,89,31),(8314,'2017-10-10',38,87,24,37),(8358,'2017-07-19',24,97,75,9),(8401,'2017-09-26',82,97,43,5),(8426,'2017-04-28',13,34,87,2),(8513,'2017-02-09',13,95,28,33),(8578,'2017-07-25',57,75,48,13),(8736,'2017-08-09',35,45,70,2),(8844,'2017-01-08',78,93,59,23),(8969,'2017-08-06',55,13,3,22);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-03 12:19:23
