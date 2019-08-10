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
INSERT INTO `activity` VALUES (3,'2018-11-02','dfdfssda','xcxzxczxc',2322332,'not done','sad'),(3,'2018-11-02','sadlasd','asdf asdf',322,'done','a'),(2,'2018-11-02','asdfsadfas','xcxzxczxc',23,'done','asd'),(2,'2018-11-02','dfdfssda','asdfas asd',21323,'not done','saas'),(2,'2018-11-02','dfdfssda','xcxzxczxc',232,'not done','asd');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('2018-11-02',1,'diwas','ale',12,'2394823','sdkafj'),('2018-11-02',2,'ashi','neua',234,'329238492384','sdlkafj'),('2018-11-02',3,'dipika','ale',23,'23948234928','sddlkaf');
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
INSERT INTO `doctor` VALUES ('asdf asdf'),('asdfas asd'),('xcxzxczxc'),('werwerqwqqw');
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
INSERT INTO `treatment` VALUES ('sadlasd'),('asdf'),('dfdfssda'),('asdfsadfas');
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

-- Dump completed on 2018-11-02 20:02:48
