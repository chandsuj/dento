-- MySQL dump 10.16  Distrib 10.2.18-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: dental
-- ------------------------------------------------------
-- Server version	10.2.18-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `dental`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dental` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dental`;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `regno` int(11) NOT NULL,
  `date` date NOT NULL,
  `tname` varchar(30) NOT NULL CHECK (`tname` <> ''),
  `dname` varchar(30) NOT NULL CHECK (`dname` <> ''),
  `price` int(11) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (18649,'2018-11-02','Filling Composite','DH.Ishwor Subedi',1020,'done','completed'),(18650,'2018-11-02','Medicine','Dr.Gyanendra Chaudhary',365,'not done','Completed'),(18651,'2018-11-02','Medicine','DH.Gobinda Rawal',105,'not done','Completed'),(18652,'2018-11-02','Filling Composite','DH.Gobinda Rawal',820,'not done','Completed'),(18653,'2018-11-02','Cutting RPD wire','DH.Gobinda Rawal',20,'not done','due100'),(18654,'2018-11-02','X-ray','Dr.Gyanendra Chaudhary',170,'not done','Completed'),(18655,'2018-11-02','Rct+X-ray+Medicine','Dr.Gyanendra Chaudhary',1000,'done','due-6330'),(18656,'2018-11-02','pulpectomy','DH.Ishwor Subedi',0,'not done','due-1555'),(18445,'2018-11-02','Bridge','DH.Ishwor Subedi',10000,'done','due-17910'),(18442,'2018-11-02','RCT','DH.Ishwor Subedi',1000,'done','Completed'),(17804,'2018-11-02','X-ray+Medicine','Dr.Pratibha Shahi',235,'done','Completed'),(18617,'2018-11-02','RCT','Dr.Pratibha Shahi',0,'not done','due-1780'),(18538,'2018-11-02','RCT','DH.Ishwor Subedi',0,'not done','due-1320'),(18443,'2018-11-02','RCT','Dr.Pratibha Shahi',820,'done','Completed'),(18584,'2018-11-02','RCT+GIC','DH.Ishwor Subedi',1000,'done','due-1150'),(18403,'2018-11-02','Bridge','DH.Gobinda Rawal',6000,'done','Completed'),(18466,'2018-11-02','RCT','Dr.Pratibha Shahi',1510,'done','0'),(18563,'2018-11-02','RCT','Dr.Pratibha Shahi',760,'not done','0'),(18440,'2018-11-02','RCT','DH.Ishwor Subedi',430,'not done','Completed'),(18154,'2018-11-02','Filling Composite','Dr.Pratibha Shahi',2800,'not done','due-60'),(18605,'2018-11-02','RCT','DH.Ishwor Subedi',1000,'not done','due-1170'),(18657,'2018-11-03','Medicine','DH.Ishwor Subedi',220,'done','Completed'),(18658,'2018-11-03','Rct+X-ray+Medicine','DH.Gobinda Rawal',1000,'not done','due-2230'),(18659,'2018-11-03','X-ray+Medicine','DH.Ishwor Subedi',410,'done','0'),(18660,'2018-11-03','Filling Composite','DH.Ishwor Subedi',4000,'done','0'),(18661,'2018-11-03','RPD','DH.Ishwor Subedi',1520,'done','0'),(18662,'2018-11-03','X-ray+Medicine','Dr.Gyanendra Chaudhary',250,'done','0'),(18663,'2018-11-03','X-ray+Medicine','Dr.Gyanendra Chaudhary',280,'done','0'),(18493,'2018-11-03','RCT','Dr.Gyanendra Chaudhary',0,'not done','due-1000'),(18636,'2018-11-03','Ortho Treatment','Dr.Bishwanath Chaudhary',10000,'done','due-30000'),(18558,'2018-11-03','RCT Drissing','Dr.Gyanendra Chaudhary',0,'not done','deu-1240'),(18634,'2018-11-03','RCT Drissing','DH.Gobinda Rawal',0,'not done','due-1390'),(18664,'2018-11-04','Rct+X-ray+Medicine','Dr.Gyanendra Chaudhary',2000,'done','due-11270'),(18665,'2018-11-04','Exth+Medicine','DH.Ishwor Subedi',820,'done','compad'),(18666,'2018-11-04','Medicine','DH.Gobinda Rawal',105,'done','complet'),(18667,'2018-11-04','X-ray+Medicine','DH.Gobinda Rawal',280,'done','complet'),(18668,'2018-11-04','Exth+Medicine+x-ray','DH.Gobinda Rawal',530,'done','compalt'),(18669,'2018-11-04','Exth+Medicine','DH.Gobinda Rawal',330,'done','complt'),(18670,'2018-11-04','checkup','DH.Gobinda Rawal',20,'done','compit'),(18671,'2018-11-04','Medicine','Dr.Pratibha Shahi',210,'done','complt'),(18630,'2018-11-04','RCT Drissing','Dr.Gyanendra Chaudhary',2000,'done','due-90'),(18595,'2018-11-04','RCT Drissing','DH.Ishwor Subedi',500,'done','due-980'),(18633,'2018-11-04','RCT Drissing','DH.Gobinda Rawal',500,'done','400 due'),(18612,'2018-11-04','RCT Drissing','DH.Ishwor Subedi',1000,'done','790due'),(18655,'2018-11-04','RCT Drissing','Dr.Gyanendra Chaudhary',0,'not done','due6330'),(18644,'2018-11-04','RCT Drissing','DH.Ishwor Subedi',0,'not done','complet'),(18577,'2018-11-04','Suture remuver','DH.Ishwor Subedi',0,'not done','Due 13230'),(18617,'2018-11-04','RCT Drissing','Dr.Pratibha Shahi',0,'not done','Due1780'),(18625,'2018-11-04','RCT Drissing','Dr.Pratibha Shahi',0,'not done','Due630'),(18483,'2018-11-04','RCT Drissing','Dr.Pratibha Shahi',630,'done','compalt'),(18519,'2018-11-04','RCT Drissing','Dr.Gyanendra Chaudhary',0,'not done','1670 Due'),(18585,'2018-11-03','RCT Drissing','Dr.Gyanendra Chaudhary',0,'not done','due-3830'),(15329,'2018-11-04','checkup','Dr.Pratibha Shahi',0,'not done','Completed'),(18656,'2018-11-05','RCT Drissing','DH.Ishwor Subedi',500,'done','Due1055'),(18662,'2018-11-05','RCT Drissing','Dr.Gyanendra Chaudhary',1000,'done','1000Due'),(18617,'2018-11-05','RCT Drissing','Dr.Pratibha Shahi',1000,'done','780Due'),(18664,'2018-11-05','RCT Drissing','Dr.Gyanendra Chaudhary',1000,'done','10270Due'),(18672,'2018-11-05','RCT','DH.Ishwor Subedi',0,'not done','complate'),(18672,'2018-11-05','Rct+X-ray+Medicine','DH.Gobinda Rawal',1000,'done','Due2290'),(18673,'2018-11-05','Exth+Medicine+x-ray','DH.Ishwor Subedi',1285,'done','complet'),(18674,'2018-11-05','Rct+X-ray+Medicine','DH.Gobinda Rawal',2000,'done','Due1170'),(18675,'2018-11-05','Art bar','DH.Gobinda Rawal',3990,'done','Complet'),(18676,'2018-11-05','Exth+Medicine+x-ray','DH.Ishwor Subedi',2000,'done','Due90'),(18677,'2018-11-05','X-ray','DH.Ishwor Subedi',170,'not done','Complet'),(18678,'2018-11-05','simple Exth','DH.Ishwor Subedi',200,'done','Complet'),(18679,'2018-11-05','checkup','DH.Ishwor Subedi',300,'done','Complet'),(18538,'2018-11-05','RCT Drissing','DH.Ishwor Subedi',0,'not done','Due 1320'),(18532,'2018-11-05','Metal Siramic Crown','Dr.Pratibha Shahi',5000,'done','10360'),(18507,'2018-11-05','RCT Complet','Dr.Pratibha Shahi',850,'done','Complet'),(18355,'2018-11-05','Metal Siramic Crown','DH.Ishwor Subedi',0,'not done','Complet'),(18228,'2018-11-05','checkup','Dr.Pratibha Shahi',0,'not done',''),(18680,'2018-11-05','Rct+X-ray+Medicine','Dr.Gyanendra Chaudhary',2000,'done','1430Due'),(18634,'2018-11-05','RCT Drissing','DH.Gobinda Rawal',0,'not done','due 1390'),(18663,'2018-11-05','Exth+Medicine','Dr.Gyanendra Chaudhary',1490,'done','complet'),(18445,'2018-11-05','Metal Crown','DH.Ishwor Subedi',5000,'done','Deu13610'),(18664,'2018-11-06','RCT Drissing','Dr.Gyanendra Chaudhary',0,'not done','Due10270'),(18585,'2018-11-06','RCT+CROWN','Dr.Gyanendra Chaudhary',2000,'done','Due1830'),(18681,'2018-11-06','Medicine','Dr.Pratibha Shahi',105,'done','Complet'),(18605,'2018-11-06','RCT Drissing','DH.Ishwor Subedi',0,'not done','Due1170'),(7957,'2018-11-06','X-ray','DH.Ishwor Subedi',150,'not done','Complet'),(18556,'2018-11-06','RCT Complet','DH.Ishwor Subedi',3000,'done','Complet'),(18535,'2018-11-06','RCT Complet','DH.Ishwor Subedi',0,'not done','Complet'),(18682,'2018-11-06','Rct+X-ray+Medicine','DH.Ishwor Subedi',1000,'done','Due2180'),(8474,'2018-11-06','RCT Complet','DH.Ishwor Subedi',2115,'done','Complet'),(18683,'2018-11-06','simple Exth','DH.Ishwor Subedi',100,'done','Complet'),(17339,'2018-11-06','RPD','Dr.Pratibha Shahi',4000,'done','Complet'),(15332,'2018-11-06','checkup','DH.Gobinda Rawal',0,'not done',''),(18560,'2018-11-06','Metal Siramic Crown','DH.Ishwor Subedi',4000,'done','Due5800'),(18684,'2018-11-06','Medicine','DH.Gobinda Rawal',140,'done','Complet'),(17772,'2018-11-06','RCT Drissing','Dr.Pratibha Shahi',2000,'not done','Due900'),(18517,'2018-11-06','RPD','DH.Ishwor Subedi',970,'done','Complet'),(18685,'2018-11-06','Medicine','DH.Gobinda Rawal',190,'done','Complet'),(18686,'2018-11-06','scaling','Dr.Pratibha Shahi',520,'not done','Complet'),(18687,'2018-11-06','checkup','Dr.Gyanendra Chaudhary',20,'done','Complet'),(18662,'2018-11-06','RCT Drissing','Dr.Gyanendra Chaudhary',0,'not done','Due1000'),(18607,'2018-11-06','RCT Drissing','Dr.Pratibha Shahi',1010,'done','Complet');
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `date` date NOT NULL,
  `regno` int(11) NOT NULL AUTO_INCREMENT,
  `firstn` varchar(20) NOT NULL CHECK (`firstn` <> '' and `firstn` <> 'First Name'),
  `lastn` varchar(20) NOT NULL CHECK (`lastn` <> '' and `lastn` <> 'Last Name'),
  `age` int(11) NOT NULL,
  `contno` mediumtext NOT NULL CHECK (`contno` <> ''),
  `addr` varchar(30) NOT NULL CHECK (`addr` <> '' and `addr` <> 'Address'),
  PRIMARY KEY (`regno`)
) ENGINE=InnoDB AUTO_INCREMENT=18688 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('2018-11-06',7957,'Bal krishna','Dhakal',45,'0','koholpur'),('2018-11-06',8474,'Devsingh','khadka',57,'9858021919','kohalpur'),('2018-11-05',13750,'Pujan','Subedi',8,'9848053312','kohalpur'),('2018-11-04',15329,'Dipa','paudel',18,'9846162746','Basgadi'),('2018-11-06',15332,'Milan','Thapa',15,'9848091913','Kohalpur'),('2018-11-06',17339,' Lohari','Tharu',55,'9864919185','Kohalpur'),('2018-11-06',17772,'Basanti ','Shasi',28,'9825611828','Kirannala'),('2018-11-02',17804,'Jibika','Tharu',5,'9804629757','Samsergunj'),('2018-11-02',18154,'Him Bahadur','Budha',24,'9815576819','Jajarkot'),('2018-11-05',18228,'Punti','Singh thakuri',61,'9824594337','Kohalpur'),('2018-11-05',18355,'Gita','jaisi',21,'9814521780','Rajha'),('2018-11-02',18403,'Sunita Kumari','Tharu',18,'9848244752','Raptisunari'),('2018-11-02',18440,'Lokndra Bahadur','Khattri',35,'9867422340','Kohalpur'),('2018-11-02',18442,'Ramesh ','Shahi',25,'9814524378','Raptisunari'),('2018-11-02',18443,'Govinda','Gc',68,'9844826726','Baijanath'),('2018-11-02',18445,'Padma ','Budha',45,'9819563581','Chishapani'),('2018-11-02',18466,'Kiran Kumar','Chaudhary',16,'9816569013','Bardiya'),('2018-11-04',18483,'sargam','Thapa',5,'9822530731','Simalgadi'),('2018-11-03',18493,'Pardip Raj','Giri',38,'9813682377','Kohalpur'),('2018-11-05',18507,'Dubri','Tharu',30,'9800535118','Guwa'),('2018-11-06',18517,'Raju','Shahi',35,'9868161867','Chapani'),('2018-11-04',18519,'Manu ','oli',20,'9864974782','NccN'),('2018-11-05',18532,'Nirdosh','bhandari',28,'98448851963','mugu'),('2018-11-06',18535,'Prakash','k.c',23,'9822499771',' samsergang'),('2018-11-02',18538,'Maya','shejwal',35,'9860950052','Chishapani'),('2018-11-06',18556,'Sadiksya','Gaere',20,'9848238418','koholpur'),('2018-11-03',18558,'Sita','k.c',50,'9841149772','Kohalpur'),('2018-11-06',18560,'Jagat bdr','Tharu',31,'9863092151','Raptisunari'),('2018-11-02',18563,'Jhaumati','Bhandari',30,'9868285880','Madanchock'),('2018-11-04',18577,'Amrita','Bohara',45,'9816586826','Dailekha'),('2018-11-02',18584,'Debi','Subedi',48,'9848059115','kohalpur'),('2018-11-03',18585,'Bal Bahadur','Budha',35,'9868290594','Baijanath'),('2018-11-04',18595,'Uma Kanta','Adhikari',57,'9848155805','kohalpur'),('2018-11-02',18605,'Gita','Adhikari',53,'9843595295','Buspark'),('2018-11-06',18607,'Binita','Oli',18,'9826534235','Birdiya'),('2018-11-04',18612,'prama ','chaudhary',35,'9848129932','Dhakeri'),('2018-11-02',18617,'Tara ','pokhrel',26,'9860285857','Kohalpur'),('2018-11-04',18625,'Dropati','Bhandari',27,'9814557819','Kohalpur'),('2018-11-04',18630,'Namuna','Khadka',15,'9840191958','kohalpur'),('2018-11-04',18633,'Arya','oli',5,'9848057040','kohalpur'),('2018-11-03',18634,'madan','Thapa',21,'9868148062','kohalpu'),('2018-11-03',18636,'Manisha','shahi',20,'9822586716','Kohalpur'),('2018-11-04',18644,'manisha','chaudhari',19,'9815544912','Dighya'),('2018-11-02',18649,'Kamuna','Lamichane',20,'9822572512','Kohalpur'),('2018-11-02',18650,'Sarashowti','Bhattrai',53,'9848013831','Kohalpur'),('2018-11-02',18651,'Ayansh','Gharti',9,'9822418886','Rajhena'),('2018-11-02',18652,'Krishna','Khadka',22,'9869756110','Bardiya'),('2018-11-02',18653,'Gyanu ','Giri',64,'0','Kohalpur'),('2018-11-02',18654,'Saritadebi','Neupane',55,'0','Kohalpur'),('2018-11-02',18655,'Pramila Kumari','Gautam',49,'9845156083','Kohalpur'),('2018-11-02',18656,'Aditya ','Bastola',7,'9868023776','Kohalpur'),('2018-11-03',18657,'Magisara','Grung',60,'9804500668','Pitmari'),('2018-11-03',18658,'Nisha','Grung',24,'9869952910','Chishapani'),('2018-11-03',18659,'Top Bahadur','K.C',66,'0','Ladhaura'),('2018-11-03',18660,'Shamrat','Malla',16,'9848323207','Kohalpur'),('2018-11-03',18661,'Dammar ','Khattri',23,'9844829110','Tilakpur'),('2018-11-03',18662,'Khendra','Sunar',6,'9819571288','Belwa'),('2018-11-03',18663,'Sumitra','B.K',45,'9868316512','Chappargaudhi'),('2018-11-04',18664,'Gobinda','Gautam',31,'9813378545','Nepalgung'),('2018-11-04',18665,'Karna bdr ','Thapa',45,'0','Balapur'),('2018-11-04',18666,'Janaki ','Sunar',7,'9823047825','Bardiya'),('2018-11-04',18667,'Rishekh','Rokaya',8,'9866010376','Naubasta'),('2018-11-04',18668,'Namrata','K.c',10,'9814593954','Kohalpur'),('2018-11-04',18669,'Ankit ','Giri',8,'98682522982','KOhalpur'),('2018-11-04',18670,'Pabitra','oli',40,'9804557771','Samsergang'),('2018-11-04',18671,'Durga bdr','B.k',37,'9868009920','kohalpur'),('2018-11-05',18672,'Dinesh','B.k',14,'9825513368','Haldarpur'),('2018-11-05',18673,'sujan',' singh',14,'9848065687','kohalpur'),('2018-11-05',18674,'Durga','Chand',60,'9862564117','Baniyabar'),('2018-11-05',18675,'Ramlautan','Chaudhary',35,'9814537736','Dhakeri'),('2018-11-05',18676,'Laxmi','Chaulagai',33,'9868161305','Kohalpur'),('2018-11-05',18677,'Ganesh','Bhatta',30,'9858425792','kohalpur'),('2018-11-05',18678,'Rojina','Shrestha',9,'9849968715','Samserganj'),('2018-11-05',18679,'Jaisari',' Basnet',59,'9815549525','Baijanat'),('2018-11-05',18680,'kuldip ','Thapa',26,'9818121869','Chisapani'),('2018-11-06',18681,'Susanta','Budha',4,'9868290594','Bijanath'),('2018-11-06',18682,'Ganesh','Adhikari',31,'984359295','kohalpur'),('2018-11-06',18683,'Subarna','Thapa',10,'0','Kohalpur'),('2018-11-06',18684,'Sitala','khadka',60,'9863944143',' Simri'),('2018-11-06',18685,'Sanu',' Shaha',32,'984830092','Gavar'),('2018-11-06',18686,'Rajip','Shahi',21,'9803735900','KOholpur'),('2018-11-06',18687,'Rambhakta','Panthi',45,'9848099339','KOhalpur');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `dname` varchar(30) NOT NULL CHECK (`dname` <> '')
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES ('Dr.Pratibha Shahi'),('Dr.Gyanendra Chaudhary'),('DH.Ishwor Subedi'),('Dr.Arun Mahat'),('Dr.Bishwanath Chaudhary'),('DH.Gobinda Rawal');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatment`
--

DROP TABLE IF EXISTS `treatment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treatment` (
  `tname` varchar(30) NOT NULL CHECK (`tname` <> '')
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatment`
--

LOCK TABLES `treatment` WRITE;
/*!40000 ALTER TABLE `treatment` DISABLE KEYS */;
INSERT INTO `treatment` VALUES ('checkup'),('scaling'),('simple Exth'),('Surgery Exth'),('Medicine'),('Filling Composite'),('Filling GIC'),('Temprory filing'),('Metal Crown'),('Metal Siramic Crown'),('Zerconiya Crown'),('Bridge'),('CD'),('RPD'),('RCT'),('pulpectomy'),('Surgery'),('X-ray'),('Ortho Treatment'),('Cutting RPD wire'),('X-ray+Medicine'),('Exth+Medicine+x-ray'),('Exth+Medicine'),('Composite+X-ray'),('RCT+X-ray'),('Rct+X-ray+Medicine'),('RCT+GIC'),('RCT Drissing'),('Suture remuver'),('RCT Complet'),('Art bar'),('RCT+CROWN');
/*!40000 ALTER TABLE `treatment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-03 16:13:51
