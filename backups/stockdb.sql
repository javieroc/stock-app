-- MySQL dump 10.13  Distrib 5.6.30, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: stockdb
-- ------------------------------------------------------
-- Server version	5.6.30-1

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
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('0002674eec6c882ad5da3e8998719f8237f62327','127.0.0.1',1476480851,'__ci_last_regenerate|i:1476480851;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('013fd2189fc8e2d053674025b5d0b5baad335977','127.0.0.1',1476917706,'__ci_last_regenerate|i:1476917706;'),('02cdace081ceb951f3dc742104d2509c241cbb6b','127.0.0.1',1476590415,'__ci_last_regenerate|i:1476590234;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('05fe70880e02a9ab2a5b812f462522f936bd7bd4','127.0.0.1',1476738056,'__ci_last_regenerate|i:1476738052;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('0686c50fda8460849f2c67cd59b3d488645a0832','127.0.0.1',1476632890,'__ci_last_regenerate|i:1476632890;'),('083600b882c1f38815e12ac54917222afae538bc','127.0.0.1',1476816018,'__ci_last_regenerate|i:1476816018;'),('08e263a8529561cf4c646dacfab45d05895840af','127.0.0.1',1476501784,'__ci_last_regenerate|i:1476501784;'),('0c64550a1664f303bf25c4906120578dcd740307','127.0.0.1',1476471734,'__ci_last_regenerate|i:1476471734;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('0c9ffd3879a90500deb6363609f8f266329de0a6','127.0.0.1',1476552519,'__ci_last_regenerate|i:1476552519;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('0ffe010dc690e50296d22311fc26bf440baaa202','127.0.0.1',1476644642,'__ci_last_regenerate|i:1476644642;'),('13e6957a4f6b8e15fb1187d026888de664b2e152','127.0.0.1',1476811069,'__ci_last_regenerate|i:1476811069;'),('155bc0bc54bcc8e749ae6414bc47b206938e8832','127.0.0.1',1476830558,'__ci_last_regenerate|i:1476830558;'),('19fadfa157ec29db533ccd171919986ad4132e5a','127.0.0.1',1476500745,'__ci_last_regenerate|i:1476500745;'),('1a0827db86c8176ed71dd81debca093dc35a5eb0','127.0.0.1',1476472604,'__ci_last_regenerate|i:1476472604;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('1b4445e84b81375703e1bf6e29be9bb6e284b3d3','127.0.0.1',1476567678,'__ci_last_regenerate|i:1476567678;'),('1d683a6545db84ded8f01f371ba2d0a166c933ae','127.0.0.1',1476547864,'__ci_last_regenerate|i:1476547864;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('21b67e5e0e704a7aa524e3ae0390b028d5c698aa','127.0.0.1',1476546875,'__ci_last_regenerate|i:1476546875;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('22f7e852d2f0ad3a903e6b801ccfaba1029c10d7','127.0.0.1',1476628970,'__ci_last_regenerate|i:1476628970;'),('2740e7c848df72cf47dda96ff1c18889f425d25c','127.0.0.1',1476479073,'__ci_last_regenerate|i:1476479073;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('27531e58dc77cf90d3560df93d249e4b06b50242','127.0.0.1',1476917366,'__ci_last_regenerate|i:1476917366;'),('293ba3a4480ce18f5b1dbca487a9b59ec3b3f7a9','127.0.0.1',1476819741,'__ci_last_regenerate|i:1476819741;'),('2a079ffe3f619a0022685cc6bbd1f74c515f03b0','127.0.0.1',1476565210,'__ci_last_regenerate|i:1476565210;'),('2c68fcf7ec2b2b7a4d0655ee018df41a66b3aa29','127.0.0.1',1476567773,'__ci_last_regenerate|i:1476567772;'),('2ca25c1f690d9ff9fbc1acf5a13e43b847f05330','127.0.0.1',1476464811,'__ci_last_regenerate|i:1476464811;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('300ec9125d653eabbc631e807a0c350664e8101a','127.0.0.1',1476499245,'__ci_last_regenerate|i:1476499245;'),('329d454a11e8e07460d4bc5002a463b8bd37d199','127.0.0.1',1476632329,'__ci_last_regenerate|i:1476632329;'),('441fc341a846eab3b2889c7106436a7208b1206b','127.0.0.1',1476551942,'__ci_last_regenerate|i:1476551942;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('44e502fdbc0a75acfa7fd2465dca6d38d8467635','127.0.0.1',1476556542,'__ci_last_regenerate|i:1476556542;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('462584011f86dfacaf38e88e439618f2617277f0','127.0.0.1',1476389498,'__ci_last_regenerate|i:1476389498;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('4926c2ec636c00974d4a2ce2382312ea2e0e9046','127.0.0.1',1476471282,'__ci_last_regenerate|i:1476471282;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('4a8c5dcd2670c035852b9995f73f9bcd74555f5a','127.0.0.1',1476738052,'__ci_last_regenerate|i:1476738052;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('4ace8564559ec5d1b51df6201679fa9590864485','127.0.0.1',1476631864,'__ci_last_regenerate|i:1476631864;'),('4aecec11cc0061a69612861dff5b2010e81ac43d','127.0.0.1',1476825022,'__ci_last_regenerate|i:1476825022;'),('4db10ba6db3a84322cbe41224ce841b3900b9bc1','127.0.0.1',1476755386,'__ci_last_regenerate|i:1476755386;'),('54bbaf8fab945fd3e4f0fd7698cfc56ef3ecd7a0','127.0.0.1',1476755386,'__ci_last_regenerate|i:1476755386;'),('572ba1b9d9dbba321190093d7424a8f96c812b65','127.0.0.1',1476412789,'__ci_last_regenerate|i:1476412789;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('5913c323c1f21bdeb865262becbf759b0b1bdfa5','127.0.0.1',1476567230,'__ci_last_regenerate|i:1476567230;'),('5a0190c779d31550198047ebb0f634eb48c1f669','127.0.0.1',1476554592,'__ci_last_regenerate|i:1476554592;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('5c75667774b322eb694c2f4b703799f21f460b46','127.0.0.1',1476476805,'__ci_last_regenerate|i:1476476805;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('5ea548c2e78e5c861d330f142b1104bdb57f73ca','127.0.0.1',1476564842,'__ci_last_regenerate|i:1476564842;'),('61a92ea43a52dac3a6a3a8702a75ece0c2767aed','127.0.0.1',1476410196,'__ci_last_regenerate|i:1476410196;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('63042210b63d06c88ff9d0042b9824e5e7cf84fc','127.0.0.1',1476565536,'__ci_last_regenerate|i:1476565536;'),('65d923f319c90000ae0ac578ae42040e6e873d77','127.0.0.1',1476820943,'__ci_last_regenerate|i:1476820943;'),('676900fb9d11746b914b2afa56e58787673d810d','127.0.0.1',1476553538,'__ci_last_regenerate|i:1476553538;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('6870ec6cbd512616bd65d833fffc7b90a3cb19d5','127.0.0.1',1476476492,'__ci_last_regenerate|i:1476476492;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('69a295607ae0cd7919791bd232a7de5d72734abd','127.0.0.1',1476587005,'__ci_last_regenerate|i:1476587005;'),('6c53a8e51ed6101a5edb4979680a535646f273f1','127.0.0.1',1476823988,'__ci_last_regenerate|i:1476823988;'),('6c97dd0a71d97af950ab45978d1fc72e18f4c5d6','127.0.0.1',1476590234,'__ci_last_regenerate|i:1476590234;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('6f8ea2aae9088041f846c9e3f432a768bb080561','127.0.0.1',1476750981,'__ci_last_regenerate|i:1476750981;'),('7002ed405bcfac20bef247fa9f18350f4f4e03da','127.0.0.1',1476732784,'__ci_last_regenerate|i:1476732784;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('770bdf2744dd41dbe61722d6e0d55e88997e043c','127.0.0.1',1476391021,'__ci_last_regenerate|i:1476391021;'),('783cb9b6e49b3e491c8455a5ce82e165d57fc15a','127.0.0.1',1476412338,'__ci_last_regenerate|i:1476412338;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('7b1ae353eecbdb4d612f01f1e4608b1bb003d9aa','127.0.0.1',1476658091,'__ci_last_regenerate|i:1476658085;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('7b7221e43fbcc0f3c5828b1902988da30a39d26a','127.0.0.1',1476467774,'__ci_last_regenerate|i:1476467774;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('80cc887f642d783b4c0ba21e0ea63c4004068f71','127.0.0.1',1476501991,'__ci_last_regenerate|i:1476501784;'),('816999cba9dbfda924337e13366e6045bd3f3e56','127.0.0.1',1476818899,'__ci_last_regenerate|i:1476818899;'),('82a4a208389eafe6ece1e4d67f1b2cd5a9a4b0b2','127.0.0.1',1476820587,'__ci_last_regenerate|i:1476820587;'),('8369e7c349ad3e0bc747d1ba8a2d0fb5ff5a1a11','127.0.0.1',1476628368,'__ci_last_regenerate|i:1476628368;'),('857f268e4185ef0835dc4f06b97276880f4df00c','127.0.0.1',1476480851,'__ci_last_regenerate|i:1476480851;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('8e0eeb3dac9e5a95b2e345c5b13b3d4b8460d6c1','127.0.0.1',1476539910,'__ci_last_regenerate|i:1476539910;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('8f1129c94049ad7e8cdcbf41aea2dcf3aac9664e','127.0.0.1',1476820282,'__ci_last_regenerate|i:1476820282;'),('8f7ac26fba95a956b41781495ea82089818b48b2','127.0.0.1',1476645741,'__ci_last_regenerate|i:1476645741;'),('9108200933cb826e9d934df05ab0b14aacbbe2dd','127.0.0.1',1476566143,'__ci_last_regenerate|i:1476566143;'),('9435cdc370fdb2a1c8383eb9de03d704403f7f2a','127.0.0.1',1476821317,'__ci_last_regenerate|i:1476821317;'),('946ddafc739353cc0e5eae3a39fe5be869adab9c','127.0.0.1',1476477900,'__ci_last_regenerate|i:1476477900;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('98839ff64f0b1a44e138bb2db5bff78c49b97715','127.0.0.1',1476750378,'__ci_last_regenerate|i:1476750378;'),('9be9a866352bdebbe3a1f66cdc31046af8227290','127.0.0.1',1476589064,'__ci_last_regenerate|i:1476589064;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('9c38221885675cc6ecb5ebdca0196bb4c8372c52','127.0.0.1',1476555057,'__ci_last_regenerate|i:1476555057;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('9c94c7fdc9a25dda7fd211b2081d6f08d5443b6f','127.0.0.1',1476400466,'__ci_last_regenerate|i:1476400466;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('a0c12d23aef1305c1ed3c88098ebd41e02199f06','127.0.0.1',1476390692,'__ci_last_regenerate|i:1476390692;'),('a26c741cdf66554f671a611f4bf222b285dce64b','127.0.0.1',1476736344,'__ci_last_regenerate|i:1476736344;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('a49d5157b20288d8b62c8a06e506395b7b80425b','127.0.0.1',1476737703,'__ci_last_regenerate|i:1476737703;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('a7d600eb0241501df4999b41b2cf91c147a89718','127.0.0.1',1476550276,'__ci_last_regenerate|i:1476550276;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('a7e0ba9632f6302facdc90f9f1366cce645ea28f','127.0.0.1',1476589672,'__ci_last_regenerate|i:1476589672;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('ab43d824577b2f8381b76cb8cae4be249567f7e8','127.0.0.1',1476830834,'__ci_last_regenerate|i:1476830815;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('ae861478cdc89355436658b00506e766271bef4c','127.0.0.1',1476400481,'__ci_last_regenerate|i:1476400466;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('b1605f7e8ab5e212197cad9c534e7ec778817d1b','127.0.0.1',1476398747,'__ci_last_regenerate|i:1476398747;'),('bab97c43400a4b6483e3f3c9539eafd849731306','127.0.0.1',1476734658,'__ci_last_regenerate|i:1476734658;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('bc9591656354eb828e74b5046781f72f24b5ffbf','127.0.0.1',1476469140,'__ci_last_regenerate|i:1476469140;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('bdab8087a029d063627aea6a380a4e7b85c12d38','127.0.0.1',1476470658,'__ci_last_regenerate|i:1476470658;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('c334cf90488443cfe4fb264fe91c0e3174714ac8','127.0.0.1',1476477109,'__ci_last_regenerate|i:1476477109;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('c3c143dcac46ea61279162c93dc770864bf7f800','127.0.0.1',1476555735,'__ci_last_regenerate|i:1476555735;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('c4bddb3950d2d67a38f4b90d8e09a90ae6c58547','127.0.0.1',1476409709,'__ci_last_regenerate|i:1476409709;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('c581d5d5a2bbf8414c646736e4bb584468b210ed','127.0.0.1',1476645741,'__ci_last_regenerate|i:1476645741;'),('c9f64080de57d4f7c16e32c78691b038dcf64427','127.0.0.1',1476810471,'__ci_last_regenerate|i:1476810471;'),('cc0e2c615d1ad92dd28bb32d224914dba7e5d1ae','127.0.0.1',1476473382,'__ci_last_regenerate|i:1476473382;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('cdfc405e3eb07de5eab5f2a92401b89c80d73c60','127.0.0.1',1476915206,'__ci_last_regenerate|i:1476915206;'),('cef06f939dc1988bfc5f0bfb2a5148544977ff6e','127.0.0.1',1476499245,'__ci_last_regenerate|i:1476499245;'),('cf947fbe14d47c1d0852695a825f5932e5a637ec','127.0.0.1',1476412829,'__ci_last_regenerate|i:1476412829;'),('cfec3b128ee2758797ba33013051053a13f70d1c','127.0.0.1',1476735813,'__ci_last_regenerate|i:1476735813;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('d3bb7d93e3aeec69441d27773bc110e364ad6022','127.0.0.1',1476915722,'__ci_last_regenerate|i:1476915722;'),('d73e936f23484cebbb7f14844d4d96bd11f926f8','127.0.0.1',1476553994,'__ci_last_regenerate|i:1476553994;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('d911fa476d340cd86f491a44cab82cc94b99d15f','127.0.0.1',1476821747,'__ci_last_regenerate|i:1476821747;'),('d964c02dbb2d32818e40bf125bbe1d1a2ea3b243','127.0.0.1',1476467411,'__ci_last_regenerate|i:1476467411;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('e453c078a4d8cc4e58a2beadfe1cb1c37da94584','127.0.0.1',1476916064,'__ci_last_regenerate|i:1476916064;'),('e9aff3a3ac8cafc304f259913a2e84c54d4a46dc','127.0.0.1',1476917915,'__ci_last_regenerate|i:1476917706;'),('eb778401edfcc4a7f046679bdbd0b6ef459dc015','127.0.0.1',1476632890,'__ci_last_regenerate|i:1476632890;'),('ecf8b314bdd3b61028a737ee4f1b823c18ef5c30','127.0.0.1',1476474822,'__ci_last_regenerate|i:1476474822;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('f36d5b908b98b083700d90b97e4f38b07090d254','127.0.0.1',1476399697,'__ci_last_regenerate|i:1476399697;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('f5a67a209b37ff087427215635b83495cbbaeeda','127.0.0.1',1476552857,'__ci_last_regenerate|i:1476552857;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('f674a19cbc16e672825d66af80914d24640c5daf','127.0.0.1',1476755039,'__ci_last_regenerate|i:1476755039;'),('fa09b76a90b1eb0e98d8619f87afa72b2ce775d5','127.0.0.1',1476501354,'__ci_last_regenerate|i:1476501354;'),('fafb96083215bb7e9fc62c92e8f2ace801ff8dd9','127.0.0.1',1476550924,'__ci_last_regenerate|i:1476550924;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('fb59fbf41416a77fedab8acc55608c7c8d4129fa','127.0.0.1',1476556545,'__ci_last_regenerate|i:1476556542;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('fdac9586e06959c15e0d28836288c4384cc7497c','127.0.0.1',1476465712,'__ci_last_regenerate|i:1476465712;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('febeff21f2f4174a23f18af9c6cf628051550f73','127.0.0.1',1476474236,'__ci_last_regenerate|i:1476474236;user_firstname|s:6:\"Javier\";user_email|s:19:\"ferroxido@gmail.com\";'),('fec482d96d5143267aa4e933519fd271e8ea1428','127.0.0.1',1476823624,'__ci_last_regenerate|i:1476823624;');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'Azul','2016-10-19 21:55:03','2016-10-19 21:55:03'),(2,'Negro','2016-10-19 21:55:08','2016-10-19 21:55:08'),(3,'Celeste','2016-10-19 21:55:16','2016-10-19 21:55:16'),(4,'Marrón','2016-10-19 21:55:24','2016-10-19 21:55:24');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Curva 1','2016-10-17 20:55:52','2016-10-17 20:55:52'),(2,'Curva 2','2016-10-17 20:56:19','2016-10-17 20:56:19'),(3,'Nueva','2016-10-18 22:43:53','2016-10-18 22:43:53');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_x_size`
--

DROP TABLE IF EXISTS `item_x_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_x_size` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `size_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_x_size`
--

LOCK TABLES `item_x_size` WRITE;
/*!40000 ALTER TABLE `item_x_size` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_x_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `season` varchar(50) DEFAULT NULL,
  `year` int(10) unsigned DEFAULT NULL,
  `barcode` varchar(200) DEFAULT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Camisa Lacoste','Camisa Lacoste',100.00,'2016-10-18 18:40:41','2016-10-18 18:40:41','pri-ver',2015,NULL,1),(2,'Pantalon Jean','Pantalon Jean',100.00,'2016-10-19 22:49:53','2016-10-19 22:49:53','pri-ver',2015,NULL,2);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size_x_group`
--

DROP TABLE IF EXISTS `size_x_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `size_x_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `size_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size_x_group`
--

LOCK TABLES `size_x_group` WRITE;
/*!40000 ALTER TABLE `size_x_group` DISABLE KEYS */;
INSERT INTO `size_x_group` VALUES (1,6,1),(2,2,1),(3,1,1),(4,3,1),(5,5,1),(6,4,1),(7,11,2),(8,12,2),(9,13,2),(10,14,2),(11,15,2),(12,7,2),(13,16,2),(14,8,2),(15,9,2),(16,10,2),(17,6,3);
/*!40000 ALTER TABLE `size_x_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sizes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `size` varchar(10) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (1,'S',NULL,'2016-10-15 17:03:35','2016-10-15 17:03:35'),(2,'M',NULL,'2016-10-15 17:04:12','2016-10-15 17:04:12'),(3,'XL',NULL,'2016-10-15 17:04:18','2016-10-15 17:04:18'),(4,'XXL',NULL,'2016-10-15 17:04:23','2016-10-15 17:04:23'),(5,'XS',NULL,'2016-10-17 19:35:09','2016-10-17 19:35:09'),(6,'L',NULL,'2016-10-17 19:35:27','2016-10-17 19:35:27'),(7,'2',NULL,'2016-10-17 19:35:49','2016-10-17 19:35:49'),(8,'4',NULL,'2016-10-17 19:35:53','2016-10-17 19:35:53'),(9,'6',NULL,'2016-10-17 19:35:56','2016-10-17 19:35:56'),(10,'8',NULL,'2016-10-17 19:36:08','2016-10-17 19:36:08'),(11,'10',NULL,'2016-10-17 19:36:17','2016-10-17 19:36:17'),(12,'12',NULL,'2016-10-17 19:36:21','2016-10-17 19:36:21'),(13,'14',NULL,'2016-10-17 19:36:25','2016-10-17 19:36:25'),(14,'16',NULL,'2016-10-17 19:36:30','2016-10-17 19:36:30'),(15,'18',NULL,'2016-10-17 19:36:44','2016-10-17 19:36:44'),(16,'20',NULL,'2016-10-17 19:36:51','2016-10-17 19:36:51');
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned DEFAULT NULL,
  `color_id` int(10) unsigned NOT NULL,
  `size_id` int(10) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `fk_item_id` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,1,11,1,6,'2016-10-19 22:18:14','2016-10-19 22:18:14'),(2,1,11,1,2,'2016-10-19 22:18:14','2016-10-19 22:18:14'),(3,1,11,1,1,'2016-10-19 22:18:14','2016-10-19 22:18:14'),(4,1,11,1,3,'2016-10-19 22:18:14','2016-10-19 22:18:14'),(5,1,11,1,5,'2016-10-19 22:18:14','2016-10-19 22:18:14'),(6,1,11,1,4,'2016-10-19 22:18:14','2016-10-19 22:18:14'),(7,2,6,4,11,'2016-10-19 22:50:35','2016-10-19 22:50:35'),(8,2,6,4,12,'2016-10-19 22:50:35','2016-10-19 22:50:35'),(9,2,6,4,13,'2016-10-19 22:50:35','2016-10-19 22:50:35'),(10,2,6,4,14,'2016-10-19 22:50:35','2016-10-19 22:50:35'),(11,2,6,4,15,'2016-10-19 22:50:36','2016-10-19 22:50:36'),(12,2,6,4,7,'2016-10-19 22:50:36','2016-10-19 22:50:36'),(13,2,6,4,16,'2016-10-19 22:50:36','2016-10-19 22:50:36'),(14,2,6,4,8,'2016-10-19 22:50:36','2016-10-19 22:50:36'),(15,2,6,4,9,'2016-10-19 22:50:36','2016-10-19 22:50:36'),(16,2,6,4,10,'2016-10-19 22:50:36','2016-10-19 22:50:36'),(17,2,6,2,11,'2016-10-19 22:50:36','2016-10-19 22:50:36'),(18,2,6,2,12,'2016-10-19 22:50:36','2016-10-19 22:50:36'),(19,2,6,2,13,'2016-10-19 22:50:36','2016-10-19 22:50:36'),(20,2,6,2,14,'2016-10-19 22:50:36','2016-10-19 22:50:36'),(21,2,6,2,15,'2016-10-19 22:50:36','2016-10-19 22:50:36'),(22,2,6,2,7,'2016-10-19 22:50:36','2016-10-19 22:50:36'),(23,2,6,2,16,'2016-10-19 22:50:36','2016-10-19 22:50:36'),(24,2,6,2,8,'2016-10-19 22:50:36','2016-10-19 22:50:36'),(25,2,6,2,9,'2016-10-19 22:50:36','2016-10-19 22:50:36'),(26,2,6,2,10,'2016-10-19 22:50:36','2016-10-19 22:50:36');
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Javier','Ocampo','ferroxido@gmail.com','7815696ecbf1c96e6894b779456d330e','2016-10-13 23:14:41','2016-10-13 23:14:41');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-20  8:48:06
