-- MySQL dump 10.13  Distrib 5.5.55, for debian-linux-gnu (x86_64)
--
-- Host: mysql-dev    Database: file_and_data_upload
-- ------------------------------------------------------
-- Server version	5.7.16

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT 'default.png',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'JONH DOE',31,'jonhdoe@gmail.com','9477f4c1e1217cbbc4c33efbc21e0d12.jpg'),(2,'Dashawn Homenick',26,'glemke@example.org','df50fbeea19be82cac0c5a6f22f6ef16.jpg'),(3,'Gertrude Gorczany',48,'olson.ted@example.org','bd96854f472517b643f640453863d40d.jpg'),(4,'Favian Fahey',50,'matt98@example.org','06495746ba287addbd351100e5cfac47.jpg'),(5,'Tavares Schuster Sr.',41,'lhuel@example.net','dd8a12326b37b97c17be51f3a2362065.jpg'),(6,'Cassidy Langosh',26,'pollich.danika@example.org','55038152eca34034612059a287625875.jpg'),(7,'Mrs. Jannie Wyman',29,'zwatsica@example.net','90842bcce6ae78a18c532e25a40cbce8.jpg'),(8,'Sarina Heidenreich',48,'ryann.strosin@example.net','3917efd990a95cf19ed6aba2e8b58349.jpg'),(9,'Kaylee Dickinson',37,'waylon60@example.net','75a70a2716bd77694f7eee0e9b778f18.jpg'),(10,'Jean Schaefer',19,'addie94@example.org','95d20fdb44053f7ced92c2ff81191000.jpg'),(11,'Dallin Barton III',44,'abshire.jairo@example.net','4553469785c7ef4730e2768adf6fdd97.jpg'),(12,'Linda Hegmann',24,'parker.margarett@example.com','91efe3d00e40a9de5960c1192b08e779.jpg'),(13,'Miller Pfannerstill',48,'shields.brady@example.com','90a990b853038ec020470493de85e877.jpg'),(14,'Dr. Eloisa Predovic III',38,'blockman@example.net','45c446a7f6bbb804f9c7334688a169e4.jpg'),(15,'June Hartmann',46,'pbeer@example.org','9c0422afe1cf6bcc94ca8448eac89d53.jpg'),(16,'Robbie Torp',22,'marjory50@example.org','8e704ecc70d2c42f6807f836d6efaaaa.jpg'),(17,'Prof. Akeem Schamberger',32,'alicia84@example.org','309003c5af82795c156b180b52fd9eca.jpg'),(18,'Helen Stehr',43,'ayden.boehm@example.org','b6830f9696ed3f8b8d8cb5679fa30e56.jpg'),(19,'Arden Kiehn DDS',45,'wisoky.celine@example.net','ab1021679fa67da2dc5ead44e56ef246.jpg'),(20,'Alexandrea McLaughlin V',42,'velma84@example.org','32bcfe2254201c3e36841b11a5cda682.jpg'),(21,'Dr. Alexandrine Cremin',28,'frederique.ritchie@example.com','ac6eb38fcc1fcfd50a3811a5ec8c0d32.jpg'),(22,'Herminio Von',46,'raina.cole@example.org','f89d48f6ab2a6e413edacf8c26fe6b3d.jpg'),(23,'Prof. Clair Jacobs II',31,'tziemann@example.org','57ba971827cd37fcc84eb2c2fbe605fb.jpg'),(24,'Rey Kunze',49,'clair90@example.com','f79583a6ddb9d742ecc5e1652f26ab19.jpg'),(25,'Betsy Pollich',32,'trisha75@example.com','cc2422d6b84eb9b0da6737e47995e822.jpg'),(26,'Maverick Koss',35,'edward51@example.com','6ece7f4e0cdb1070706755c97c83cf96.jpg'),(27,'Dr. Laney Bednar',50,'utreutel@example.org','dee7a5d809257cb05aabce97cd09c834.jpg'),(28,'Prof. Selmer McKenzie',22,'cynthia.rogahn@example.net','1524f1b3b47b1345aca63f3371e20db2.jpg'),(29,'Reilly Rau',27,'gaylord37@example.org','7b7ee2307dd54cbc8f94d52a2b8613d5.jpg'),(30,'Olaf Kautzer',22,'chloe83@example.net','34ae93879e83d16fea1f6580b11e38e2.jpg'),(31,'Damion Oberbrunner V',50,'hane.gracie@example.org','0d082c12be634cb638058b294c3b036f.jpg'),(32,'Montana Kris',39,'klein.euna@example.net','a75d2df66de94c49d51256f84f541089.jpg'),(33,'Thad Waelchi I',30,'goyette.furman@example.org','e78b422aec15d3bf58c569a565ec75b5.jpg'),(34,'Maye Schneider',20,'kunze.geraldine@example.net','e96ac4bc6b45c4abdad365f85d183d35.jpg'),(35,'Brett Kessler',20,'quitzon.deshawn@example.org','fbd94c4c8471d605f5f232c26b04a1bf.jpg'),(36,'Prof. Weston Konopelski',43,'wilford28@example.org','adbec94f8275fa8ca04ec2f09dead47a.jpg'),(37,'Ms. Roslyn Padberg IV',22,'dillan95@example.com','21176ba9f8ada307bebf29099aed824b.jpg'),(38,'Eldora Swaniawski',50,'rico.cruickshank@example.org','7dd2e7ab57abf550a14735e399dc06f2.jpg'),(39,'Cale Rodriguez V',44,'collier.juwan@example.com','24901a600bc25d7780d06bd9b5e82b86.jpg'),(40,'Jefferey Huels',47,'cboyle@example.net','5b9717d71f19a39109a062d064704635.jpg'),(41,'Stephon Bednar',49,'connie.mccullough@example.org','6c805be2b96514529deadd4637fc4f7c.jpg'),(42,'Lulu O\'Conner',19,'stephanie.grimes@example.org','4f2d98b4b6243e75b3f2265a139011c7.jpg'),(43,'Sylvester Zemlak V',24,'stoltenberg.beatrice@example.org','e0db6a7a6e007706e6cadc8e5f6a0273.jpg'),(44,'Brett Daniel',25,'ustoltenberg@example.org','9944cbc3198bb445f8cf2478e5a808c8.jpg'),(45,'Dr. Elian Streich Jr.',44,'cleuschke@example.com','0be24ad821d4102e60153885f8e3457a.jpg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-19 22:46:50
