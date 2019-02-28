-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: dashninja_test
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.16.04.2

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
-- Table structure for table `cmd_hub_nodes`
--

DROP TABLE IF EXISTS `cmd_hub_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmd_hub_nodes` (
  `HubID` int(11) NOT NULL,
  `NodeID` int(11) NOT NULL,
  PRIMARY KEY (`HubID`,`NodeID`),
  KEY `NodeID` (`NodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin COMMENT='Link between Hub and Node';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmd_hub_nodes`
--

LOCK TABLES `cmd_hub_nodes` WRITE;
/*!40000 ALTER TABLE `cmd_hub_nodes` DISABLE KEYS */;
INSERT INTO `cmd_hub_nodes` VALUES (1,1),(1,2),(1,3),(1,16),(1,17),(1,18),(1,19),(1,32);
/*!40000 ALTER TABLE `cmd_hub_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmd_nodes`
--

DROP TABLE IF EXISTS `cmd_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmd_nodes` (
  `NodeID` int(11) NOT NULL AUTO_INCREMENT,
  `NodeName` varchar(16) COLLATE ascii_bin NOT NULL,
  `NodeTestNet` tinyint(1) NOT NULL,
  `NodeEnabled` tinyint(1) NOT NULL,
  `NodeType` set('masternode','p2pool') COLLATE ascii_bin NOT NULL DEFAULT 'masternode',
  `VersionID` int(11) NOT NULL,
  `KeepUpToDate` tinyint(1) NOT NULL DEFAULT '0',
  `KeepRunning` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`NodeID`),
  KEY `TestNet` (`NodeTestNet`,`VersionID`,`NodeEnabled`),
  KEY `VersionID` (`VersionID`),
  KEY `NodeType` (`NodeType`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=ascii COLLATE=ascii_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmd_nodes`
--

LOCK TABLES `cmd_nodes` WRITE;
/*!40000 ALTER TABLE `cmd_nodes` DISABLE KEYS */;
INSERT INTO `cmd_nodes` VALUES (1,'dmn01',0,1,'masternode',242,1,1);
/*!40000 ALTER TABLE `cmd_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmd_versions`
--

DROP TABLE IF EXISTS `cmd_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmd_versions` (
  `VersionId` int(11) NOT NULL AUTO_INCREMENT,
  `VersionPath` varchar(255) COLLATE ascii_bin NOT NULL,
  `VersionRaw` varchar(64) COLLATE ascii_bin NOT NULL,
  `VersionDisplay` varchar(32) COLLATE ascii_bin NOT NULL,
  `VersionTestnet` tinyint(1) NOT NULL,
  `VersionEnabled` tinyint(1) NOT NULL,
  `VersionURL` varchar(255) COLLATE ascii_bin NOT NULL,
  `VersionSHA1` varchar(40) COLLATE ascii_bin NOT NULL,
  `VersionSize` int(11) NOT NULL,
  `VersionHandling` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`VersionId`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=ascii COLLATE=ascii_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmd_versions`
--

LOCK TABLES `cmd_versions` WRITE;
/*!40000 ALTER TABLE `cmd_versions` DISABLE KEYS */;
INSERT INTO `cmd_versions` VALUES (242,'/home/dmn01/vpubchain/bin/vpubd','0.12.3.3','0.12.3.3',0,1,'https://cdl.drk.mn/dashd-0.12.3.3.xz','49a309f4124f799d6b977e79d023bf6117010bca',11548672,5);
/*!40000 ALTER TABLE `cmd_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmd_info_protocol_description`
--

DROP TABLE IF EXISTS `cmd_info_protocol_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmd_info_protocol_description` (
  `Protocol` int(11) NOT NULL,
  `ProtocolDescription` varchar(64) COLLATE ascii_bin NOT NULL,
  PRIMARY KEY (`Protocol`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmd_info_protocol_description`
--

LOCK TABLES `cmd_info_protocol_description` WRITE;
/*!40000 ALTER TABLE `cmd_info_protocol_description` DISABLE KEYS */;
INSERT INTO `cmd_info_protocol_description` VALUES (0,'Unknown'),(70018,'RC3 (0.10.11.x)'),(70034,'RC4 (0.10.12.25)'),(70035,'RC4 (0.10.12.26+)'),(70038,'RC5 (0.10.13.14+)'),(70039,'Enforce (0.10.15.0+)'),(70043,'Onyx (0.10.15.13+)'),(70045,'Onyx v2 (0.10.16.5)'),(70046,'Onyx v2 (0.10.16.6+)'),(70048,'Onyx v3 (0.10.17.8+)'),(70050,'Onyx v3 (0.10.17.12+)'),(70051,'Onyx v3 (0.10.17.19+)'),(70052,'Core (0.11.0.0+)'),(70053,'Core (0.11.0.10+)'),(70054,'Core (0.11.0.11+)'),(70065,'InstantX (0.11.1.16+)'),(70066,'InstantX (0.11.1.19+)'),(70073,'Dash (0.11.2.7+)'),(70074,'Dash (0.11.2.8+)'),(70075,'Dash (0.11.2.11+)'),(70076,'Dash (0.11.2.18+)'),(70077,'Dash (0.12.0.0)'),(70078,'Dash (0.12.0.1)'),(70079,'Dash (0.12.0.2+)'),(70080,'Dash (0.12.0.4)'),(70081,'Dash (0.12.0.4)'),(70082,'Dash (0.12.0.4+)'),(70083,'Dash (0.12.0.7+)'),(70086,'Dash (0.12.0.12+)'),(70091,'Dash (0.12.0.20+)'),(70092,'Dash (0.12.0.22+)'),(70093,'Dash (0.12.0.25)'),(70094,'Dash (0.12.0.26+)'),(70098,'Dash (0.12.0.29)'),(70102,'Dash (0.12.0.44-9ee73cd)'),(70103,'Dash (0.12.0.44+)'),(70200,'Dash (0.12.1.0-0)'),(70201,'Dash (0.12.1.0-1)'),(70202,'Dash (0.12.1.0-2)'),(70203,'Dash (0.12.1.0-3)'),(70206,'Dash (0.12.1.0+)'),(70207,'Dash (0.12.2.0-beta)'),(70208,'Dash (0.12.2.0+)');
/*!40000 ALTER TABLE `cmd_info_protocol_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmd_portcheck_config`
--

DROP TABLE IF EXISTS `cmd_portcheck_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmd_portcheck_config` (
  `TestNet` tinyint(1) NOT NULL,
  `Version` int(11) NOT NULL,
  `SatoshiVersion` varchar(32) COLLATE ascii_bin NOT NULL,
  `ProtocolVersion` int(11) NOT NULL,
  `ProtocolMagic` binary(4) NOT NULL,
  PRIMARY KEY (`TestNet`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmd_portcheck_config`
--

LOCK TABLES `cmd_portcheck_config` WRITE;
/*!40000 ALTER TABLE `cmd_portcheck_config` DISABLE KEYS */;
INSERT INTO `cmd_portcheck_config` VALUES (0,120200,'0.12.2.3',70208,_binary 'ê\rê<'),(1,120200,'0.12.2.3',70208,_binary 'ê\rê<');
/*!40000 ALTER TABLE `cmd_portcheck_config` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-21 17:20:15
