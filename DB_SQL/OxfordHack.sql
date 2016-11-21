-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: OxfordHack
-- ------------------------------------------------------
-- Server version	5.7.16-0ubuntu0.16.04.1

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
-- Table structure for table `CurrentGame`
--

DROP TABLE IF EXISTS `CurrentGame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CurrentGame` (
  `CurrentGameID` int(11) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CurrentGame`
--

LOCK TABLES `CurrentGame` WRITE;
/*!40000 ALTER TABLE `CurrentGame` DISABLE KEYS */;
INSERT INTO `CurrentGame` VALUES (1);
/*!40000 ALTER TABLE `CurrentGame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `ID` int(11) unsigned NOT NULL,
  `Name` varchar(90) NOT NULL,
  `GameID` int(10) unsigned DEFAULT NULL,
  `HouseID` int(10) unsigned DEFAULT NULL,
  `Score` int(10) unsigned DEFAULT NULL,
  `Health` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (11994,'res',1,3,0,3),(13003,'cat burgers are the best in the land of the free and the brave I come in peace',1,2,0,3),(18094,'sadfasoidkfj',1,3,0,3),(19008,'Muggle',1,3,0,3),(35064,'ihb',1,1,0,3),(38031,'sadfasoidkfj',1,1,0,3),(38226,'sadfasoidkfj',1,2,0,3),(47929,'sadfasoidkfj',1,3,0,3),(57691,'RREEAALLYY',1,3,0,3),(63515,'ihb',1,2,0,3),(64298,'sadfasoidkfj',1,1,0,3),(66595,'sadfasoidkfj',1,4,0,3),(67076,'this',1,4,NULL,NULL),(70094,'sadfasoidkfj',1,2,0,3),(81700,'sadfasoidkfj',1,2,0,3),(84827,'sadfasoidkfj',1,4,0,3),(87804,'hi',1,2,0,3),(92614,'sadfasoidkfj',1,2,0,3),(103179,'sadfasoidkfj',1,2,0,3),(107948,'this',1,1,NULL,NULL),(110494,'ihb',1,2,0,3),(117335,'cat burgers are the best in the land of the free and the brave I come in peace',1,3,0,3),(118532,'sadfasoidkfj',1,3,0,3),(126316,'hi',1,2,0,3),(128231,'ihb',1,1,0,3),(129670,'cat burgers are the best in the land of the free and the brave I come in peace',1,1,0,3),(132147,'s',1,1,0,3),(135767,'pl',1,1,0,3),(147210,'rrrrr',1,4,0,3),(148952,'sadfasoidkfj',1,1,0,3),(149855,'sadfasoidkfj',1,3,0,3),(151441,'sadfasoidkfj',1,4,0,3),(155835,'rr',1,1,0,3),(156125,'ihb',1,2,0,3),(157343,'cat burgers are the best in the land of the free and the brave I come in peace',1,4,0,3),(157626,'hh',1,1,0,3),(157716,'hi',1,3,0,3),(158433,'sadfasoidkfj',1,3,0,3),(163890,'this ',1,2,0,3),(164407,'sadfasoidkfj',1,2,0,3),(170239,'sadfasoidkfj',1,1,0,3),(182717,'cat burgers are the best in the land of the free and the brave I come in peace',1,1,0,3),(185385,'Stacey',1,1,0,3),(188195,'jhg',1,1,0,3),(189434,'ihb',1,1,0,3),(190546,'I swear I&#39;m up to no good',1,4,0,3),(192633,'harambe',1,4,0,3),(192662,'SASKIA',1,2,0,3),(193150,'cat burgers are the best in the land of the free and the brave I come in peace',1,1,0,3),(193891,'spammmmmmmmmmmm',1,3,0,3),(196079,'kl;/',1,1,0,3),(198241,'begin',1,4,0,3),(198380,'sss',1,2,0,3),(202436,'fcnkl',1,3,0,3),(209463,'sadfasoidkfj',1,1,0,3),(210477,'h',1,1,0,3),(213974,'sadfasoidkfj',1,4,0,3),(227266,'saskia',1,4,0,3),(229600,'g',1,3,0,3),(234287,'sadfasoidkfj',1,3,0,3),(236351,'try',1,1,0,3),(237937,'name',1,1,0,3),(238150,'kn',1,2,0,3),(242242,'sadfasoidkfj',1,3,0,3),(253760,'ihb',1,1,0,3),(256458,'wcdg bv',1,1,0,3),(258859,'yf',1,2,0,3),(265619,'ihb',1,2,0,3),(268306,'sadfasoidkfj',1,2,0,3),(272809,'cat burgers are the best in the land of the free and the brave I come in peace',1,1,0,3),(279883,'cat burgers are the best in the land of the free and the brave I come in peace',1,1,0,3),(281283,'s',1,2,0,3),(286443,'cat burgers are the best in the land of the free and the brave I come in peace',1,4,0,3),(288211,'hell',1,4,0,3),(289081,'cat burgers are the best in the land of the free and the brave I come in peace',1,1,0,3),(307777,'cat burgers are the best in the land of the free and the brave I come in peace',1,1,0,3),(311667,'cat burgers are the best in the land of the free and the brave I come in peace',1,2,0,3),(312151,'sjhef',1,3,0,3),(318924,'sadfasoidkfj',1,1,0,3),(324758,'sadfasoidkfj',1,3,0,3),(328167,'MERKY',1,4,0,3),(329739,'Hi',1,4,0,3),(339936,'sadfasoidkfj',1,1,0,3),(349790,'sadfasoidkfj',1,3,0,3),(350543,'sadfasoidkfj',1,4,0,3),(352790,'This',1,3,0,3),(352988,'hi',1,2,0,3),(358537,'sadfasoidkfj',1,3,0,3),(364291,'g',1,3,0,3),(365593,'ihb',1,2,0,3),(369059,'ss\\',1,4,0,3),(370902,'cat burgers are the best in the land of the free and the brave I come in peace',1,4,0,3),(372929,'ihb',1,1,0,3),(381707,'sadfasoidkfj',1,1,0,3),(384477,'cat burgers are the best in the land of the free and the brave I come in peace',1,1,0,3),(386111,'sss',1,3,0,3),(409468,'hell',1,1,0,3),(409961,'Muggle',1,2,0,3),(409996,'cat burgers are the best in the land of the free and the brave I come in peace',1,1,0,3),(412007,'sadfasoidkfj',1,2,0,3),(421464,'sadfasoidkfj',1,3,0,3),(427591,'what happens now',1,2,0,3),(428926,'sadfasoidkfj',1,1,0,3),(431132,'hi',1,2,0,3),(432721,'sadfasoidkfj',1,1,0,3),(433274,'sadfasoidkfj',1,2,0,3),(445107,'hi',1,4,0,3),(453758,'sadfasoidkfj',1,2,0,3),(455447,'HI',1,3,0,3),(460689,'cat burgers are the best in the land of the free and the brave I come in peace',1,1,0,3),(460846,'ihb',1,2,0,3),(460887,'sadfasoidkfj',1,1,0,3),(470472,'cat burgers are the best in the land of the free and the brave I come in peace',1,1,0,3),(479911,'cat burgers are the best in the land of the free and the brave I come in peace',1,2,0,3),(480832,'kn',1,2,0,3),(482050,'TESTS',1,3,0,3),(483660,'h',1,4,0,3),(492666,'I swear to be evil',1,2,0,3),(494673,'Hi',1,1,0,3),(505730,'kn',1,3,0,3),(509039,'Fr',1,2,0,3),(512929,'sadfasoidkfj',1,3,0,3),(513226,'sadfasoidkfj',1,3,0,3),(517388,'cat burgers are the best in the land of the free and the brave I come in peace',1,1,0,3),(517906,'sadfasoidkfj',1,4,0,3),(531423,'sadfasoidkfj',1,2,0,3),(541958,'sadfasoidkfj',1,1,0,3),(542066,'sadfasoidkfj',1,3,0,3),(545770,'Jordan',1,4,0,3),(550080,'hell',1,4,0,3),(556167,'sadfasoidkfj',1,1,0,3),(560142,'sadfasoidkfj',1,1,0,3),(562435,'sadfasoidkfj',1,1,0,3),(567577,'ffff',1,2,0,3),(568204,'sadfasoidkfj',1,3,0,3),(571214,'sadfasoidkfj',1,4,0,3),(576992,'cat burgers are the best in the land of the free and the brave I come in peace',1,1,0,3),(578554,'bop',1,3,0,3),(579943,'ihb',1,3,0,3),(582764,'hi',1,1,NULL,NULL),(591380,'kn',1,4,0,3),(605316,'sss',1,4,0,3),(610933,'Saskia',1,1,0,3),(611716,'m',1,4,0,3),(615452,'sadfasoidkfj',1,4,0,3),(616430,'Test',1,4,0,3),(617638,'hi robert',1,3,0,3),(622498,'sadfasoidkfj',1,2,0,3),(625881,'sadfasoidkfj',1,2,0,3),(628415,'jjj',1,4,0,3),(634967,'This',1,1,0,3),(635600,'try',1,1,0,3),(651711,'ben22',1,1,0,3),(670050,'cat burgers are the best in the land of the free and the brave I come in peace',1,2,0,3),(673094,'sadfasoidkfj',1,1,0,3),(676601,'test',1,1,0,3),(676607,'sadfasoidkfj',1,1,0,3),(682590,'sadfasoidkfj',1,3,0,3),(688459,'Thing',1,4,0,3),(691303,'cat burgers are the best in the land of the free and the brave I come in peace',1,2,0,3),(694898,'kn',1,1,0,3),(705182,'thing',1,4,0,3),(711569,'cat burgers are the best in the land of the free and the brave I come in peace',1,1,0,3),(718177,'cat burgers are the best in the land of the free and the brave I come in peace',1,2,0,3),(720329,'sadfasoidkfj',1,2,0,3),(724804,'player',1,1,0,3),(738224,'This',1,2,0,3),(751189,'hashaha',1,1,0,3),(756888,'kn',1,2,0,3),(760346,'sadfasoidkfj',1,2,0,3),(761260,'Saskia',1,2,0,3),(761581,'sadfasoidkfj',1,3,0,3),(768847,'sadfasoidkfj',1,2,0,3),(770933,'cat burgers are the best in the land of the free and the brave I come in peace',1,1,0,3),(771000,'sadfasoidkfj',1,4,0,3),(774386,'sadfasoidkfj',1,3,0,3),(775330,'sadfasoidkfj',1,1,0,3),(779534,'sadfasoidkfj',1,2,0,3),(781808,'sadfasoidkfj',1,1,0,3),(801253,'THIS',1,2,NULL,NULL),(801422,'sadfasoidkfj',1,2,0,3),(804327,'sadfasoidkfj',1,3,0,3),(809230,'sadfasoidkfj',1,2,0,3),(811791,'stacey',1,2,0,3),(815285,'sadfasoidkfj',1,2,0,3),(819924,'sadfasoidkfj',1,3,0,3),(821366,'cat burgers are the best in the land of the free and the brave I come in peace',1,4,0,3),(826797,'sadfasoidkfj',1,3,0,3),(827811,'cat burgers are the best in the land of the free and the brave I come in peace',1,1,0,3),(837964,'sadfasoidkfj',1,3,0,3),(838624,'kn',1,4,0,3),(841966,'sadfasoidkfj',1,3,0,3),(843186,'cat burgers are the best in the land of the free and the brave I come in peace',1,4,0,3),(845658,'saskia',1,1,0,3),(856932,'This',1,4,0,3),(859444,'ihb',1,1,0,3),(859868,'sadfasoidkfj',1,1,0,3),(888869,'sadfasoidkfj',1,2,0,3),(891412,'cat burgers are the best in the land of the free and the brave I come in peace',1,1,0,3),(891466,'sadfasoidkfj',1,1,0,3),(902841,'This',1,1,0,3),(902973,'ihb',1,1,0,3),(907998,'cat burgers are the best in the land of the free and the brave I come in peace',1,2,0,3),(919471,'sag',1,1,0,3),(931031,'sdfghjkl;',1,1,0,3),(932319,'ihb',1,2,0,3),(933122,'username',1,1,0,3),(934800,'sadfasoidkfj',1,2,0,3),(935075,'aaa',1,4,0,3),(941638,'hell',1,4,0,3),(941905,'sadfasoidkfj',1,4,0,3),(952479,'sadfasoidkfj',1,4,0,3),(953216,'ihb',1,2,0,3),(962816,'Ben',1,4,0,3),(969376,'kn',1,4,0,3),(970174,'sadfasoidkfj',1,4,0,3),(976547,'sadfasoidkfj',1,1,0,3),(982016,'sadfasoidkfj',1,2,0,3),(982931,'cat burgers are the best in the land of the free and the brave I come in peace',1,2,0,3),(986270,'sadfasoidkfj',1,3,0,3),(987480,'Can you do the hachachacha like really robert can you id really like to know because ',1,2,0,3),(989594,'sadfasoidkfj',1,1,0,3),(995594,'cat burgers are the best in the land of the free and the brave I come in peace',1,4,0,3),(995777,'cat burgers are the best in the land of the free and the brave I come in peace',1,1,0,3),(998329,'ihb',1,3,0,3);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-21 14:57:33
