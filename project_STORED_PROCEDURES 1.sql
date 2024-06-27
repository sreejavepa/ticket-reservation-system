-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: music_reservation
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `street_number` int DEFAULT NULL,
  `street_name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` int DEFAULT NULL,
  `venue_id` int DEFAULT NULL,
  KEY `venue_id` (`venue_id`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`venue_id`) REFERENCES `venue` (`venue_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (18575,'Kim Fall','North Tyler',1968,1),(41,'Mallory Fields','Ryanborough',64003,2),(438,'Samantha Radial','Amberfurt',90338,3),(5497,'Mary Crest','Alvaradoton',41901,4),(63848,'Terrence Motorway','West Tracey',7227,5),(8319,'Matthew Crest','Jessicaborough',34049,6),(3351,'Terry Lock','Lake Deannabury',23407,7),(532,'Lisa Loop','New Joshuatown',43258,8),(63810,'Smith Loaf','Taylortown',97259,9),(921,'Ruiz Vista','Aaronfort',74164,10);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_user` (
  `user_id` int NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user`
--

LOCK TABLES `app_user` WRITE;
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
INSERT INTO `app_user` VALUES (1,'adamspatricia','J7bg*J_7HkH#','Dawn Mendoza','johnwhite@example.com','+1-514-353-9'),(2,'prodriguez','jy_*t7Ok+&co','Michael Miller','christina72@example.com','433-797-6719'),(3,'alex99','_aR*3kHY3Nyu','Jonathan Phillips','williamperry@example.org','+1-696-764-6'),(4,'harrisemma','(*4Y8IkdIg08','Mrs. Brittany Vaughan','rhonda46@example.org','518.446.9168'),(5,'adrienne26','8yGOZKNn%6i&','Jessica Douglas','victoriamoore@example.net','247.919.0445'),(6,'cisneroskelly','VT4sKcjo&LV6','Taylor Sweeney','michaelskinner@example.com','(430)975-155'),(7,'roberthowell','LsQKqjMr&4UQ','Christopher Hampton','stefanie15@example.net','825.262.8617'),(8,'christopher70',')3tWg(LyAqPD','Candace Johnson','justinhenderson@example.com','(688)274-883'),(9,'john71','tNx$b@Li^9iX','Maria Wilcox','kwoods@example.org','+1-632-765-7'),(10,'daniellemarshall','n&8Fz9dB^*#A','Eric Moore','alyssafarrell@example.org','+1-430-609-3'),(11,'rogerrodriguez','Q8#tCP^$@#X+','Jennifer Mercado','daniellewilliams@example.org','(211)911-686'),(12,'iancarroll','YBFKGqLNl%79','Sharon Lee','philip84@example.com','946.635.6511'),(13,'deannastafford','t+ZY#eevjL6t','Kimberly Davis','debbie63@example.com','637-529-3857'),(14,'wallacejulie','@2qIq_ksk%6A','George Moss','james90@example.net','+1-755-798-4'),(15,'wberry','@UOTNs$E!&9M','Benjamin Thomas','derricksmith@example.com','(743)693-410'),(16,'charlessnyder','!hHoq#*1(I96','Madeline Smith','loretta31@example.com','(299)718-254'),(17,'stevenrhodes',')0OCqbNp6Ifb','Michael Khan','matthew67@example.com','(778)657-768'),(18,'fisherbrian','_1sDLi&UQ7WB','Kevin Matthews','harrisbrian@example.com','(933)638-442'),(19,'paige73','2%!kZP_cpAs7','Manuel Robertson','rmoreno@example.com','(832)559-765'),(20,'imontes','#2zZlv12@xHa','Michelle Carr','thomas92@example.org','6037271363'),(21,'dsalazar','TK481STxl^78','Brian Smith','mcmillansteven@example.org','394.913.2114'),(22,'gjackson','*0HlEl@Yi^(A','Bryan Roberts','jamie84@example.org','001-586-562-'),(23,'santosmatthew','#9wq9Oh!1bcI','Kyle Anderson','scott59@example.net','(963)336-304'),(24,'rwong','T7P22wVn&GX1','Rebecca Hernandez','jeremyjones@example.org','789-741-3911'),(25,'watsontara','&4JhxQz!T4Rx','Theresa Dominguez','mfox@example.net','(742)303-009'),(26,'donna29','g9QsW4z5$BFB','Jennifer Romero','kevin22@example.net','747.707.4099'),(27,'laurennelson','u*_9VEpcTV8O','Lori Williams','davisjoseph@example.com','(730)656-577'),(28,'stephanietaylor','u*IjX3iyPz63','Jaime Ross','diane55@example.org','9903881778'),(29,'paulashaw','86sW7lFk#oH*','Maxwell Ramos','wellsmichael@example.com','735-590-4491'),(30,'jamie81','%V9dgenBP!2E','Beth Anderson','sullivanjoseph@example.org','+1-768-844-3'),(31,'hornemelissa','!4@#Or2!#lMQ','Jessica Garza','seanbrooks@example.net','(775)935-675'),(32,'jonesanne','u3C_3vq)jV%I','Laura Love','jared75@example.net','593-740-5885'),(33,'michaelrobertson','jzK*zWSN+6ED','Mark Sanchez','frankstewart@example.net','561.595.7180'),(34,'pbarron','zKCEj+ex$2m$','Megan English','perryjeffrey@example.net','536-655-9646'),(35,'mccormickmary','$*44sBhj239C','Belinda Hernandez','xmedina@example.com','562.568.5523'),(36,'howelllouis','yhhHZT8R%0fd','Stacey Strong','rachel50@example.org','7843899351'),(37,'michelle31','fj_z_BJi#%j9','Carla Martin','thomasjordan@example.net','267.761.2538'),(38,'katiesandoval','X6^Dvwuo_KGp','Patricia Davis','kleinvanessa@example.com','(335)502-431'),(39,'benjamindunlap','#d8AhjHLThxx','Brandon Walker','brittney80@example.net','510.868.2288'),(40,'bgraves','#8PU(sb$GkNn','Jasmine Jones','jeffrey50@example.com','373.936.0823'),(41,'brandy76','F6u2NMkk1!uu','Andrea Willis','lopezchristopher@example.com','799.552.1047'),(42,'isabellairwin','S@%U06zzFD7I','Meghan Torres','paul98@example.org','(989)709-161'),(43,'mitchell99','pP8DaHdc^+xL','Amanda Booth','kristenkim@example.net','839.787.9490'),(44,'yyang','YtL1Ws^r(xn7','Elizabeth Murillo','bairdanna@example.net','319.755.6817'),(45,'tiffanyprice','H+fp90Gzu^qJ','Dylan Grant','katherineramirez@example.com','001-668-911-'),(46,'andreaevans','+jX+aR3&459Q','Ronald Archer','andersonamanda@example.org','596-676-0826'),(47,'williamsonjuan','0e$0hSHxJV!1','Timothy Nichols','sandrajennings@example.org','3679250792'),(48,'vjackson','Hk6PRuxr_m0@','Brittany Clay','weaveramber@example.org','473.968.9862'),(49,'albertgraves','PE0pz+vR!5dJ','Mariah Freeman MD','william84@example.com','(903)672-679'),(50,'echapman','*hPh23Zb_+((','Paul Miller','pattersonpatty@example.net','8539498288');
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists` (
  `artist_id` int NOT NULL,
  `artist_name` varchar(255) DEFAULT NULL,
  `concert_id` int DEFAULT NULL,
  PRIMARY KEY (`artist_id`),
  KEY `concert_id` (`concert_id`),
  CONSTRAINT `artists_ibfk_1` FOREIGN KEY (`concert_id`) REFERENCES `concert` (`concert_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,'Kayla George',6),(2,'Jean Owens',6),(3,'Erica Guerrero',1),(4,'Michael Lewis',8),(5,'Benjamin Cobb',6),(6,'Erin Fox',3),(7,'Robert Harris',5),(8,'Lisa Anderson',10),(9,'Adrienne Campos',6),(10,'Timothy Herrera',6),(11,'Christian Meyer',6),(12,'Kayla Robinson',3),(13,'Blake Lee',1),(14,'Christina Sanchez',10),(15,'William Jones',2),(16,'Amanda Tucker',10),(17,'Ashley Duncan',8),(18,'Ashley Smith',10),(19,'Jenna Wade',5),(20,'Amy Burton',8),(21,'Daniel Rios',2),(22,'Erin Harper',6),(23,'Shannon Gutierrez',10),(24,'April Ross',5),(25,'Ronnie Ryan',2),(26,'Brian Chapman',6),(27,'Amber Jones',7),(28,'Tina Ramirez',7),(29,'Jeremy Fisher',2),(30,'Shannon Jackson',6),(31,'Todd Jones',9),(32,'Jose Ochoa',4),(33,'Rebecca Cole',9),(34,'Theresa Shaffer',1),(35,'Dawn Campbell MD',2);
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concert`
--

DROP TABLE IF EXISTS `concert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concert` (
  `concert_id` int NOT NULL,
  `concert_name` varchar(255) DEFAULT NULL,
  `concert_date` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `occassion_id` int DEFAULT NULL,
  PRIMARY KEY (`concert_id`),
  KEY `occassion_id` (`occassion_id`),
  CONSTRAINT `concert_ibfk_1` FOREIGN KEY (`occassion_id`) REFERENCES `occassion` (`occassion_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concert`
--

LOCK TABLES `concert` WRITE;
/*!40000 ALTER TABLE `concert` DISABLE KEYS */;
INSERT INTO `concert` VALUES (1,'House walk.','2022-04-27','Position cultural join audience president have.',1),(2,'Success eight.','2021-01-09','Star every other above less new.',2),(3,'Week put I any.','2021-02-27','Our over speech health condition pretty economic.',3),(4,'Billion system.','2020-07-07','Sea operation deal at.',4),(5,'Full structure.','2021-04-20','Miss and course for.',5),(6,'Laugh country.','2021-11-08','Help design particular ten.',6),(7,'Old however.','2022-04-04','End international most technology food.',7),(8,'Child role.','2022-11-29','Without civil option lay also such.',8),(9,'Get sing dark.','2020-12-16','Member the onto success.',9),(10,'Age source.','2021-01-06','Military officer structure.',10);
/*!40000 ALTER TABLE `concert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occassion`
--

DROP TABLE IF EXISTS `occassion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occassion` (
  `occassion_id` int NOT NULL,
  `occassion_name` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`occassion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occassion`
--

LOCK TABLES `occassion` WRITE;
/*!40000 ALTER TABLE `occassion` DISABLE KEYS */;
INSERT INTO `occassion` VALUES (1,'Million such sit.','Establish voice production three history as position.'),(2,'Long two.','Protect collection fire door nearly challenge.'),(3,'It training road.','Loss poor natural billion.'),(4,'Contain total once.','Exist ask fight age choice machine.'),(5,'Others fish summer.','Campaign look career sport old yourself.'),(6,'Him data religious.','Perform fire season cold stay.'),(7,'Go region firm firm.','Coach loss brother design will star.'),(8,'Blue your activity.','Several list arrive style bit huge.'),(9,'Effort glass way.','Good reality way single feeling.'),(10,'Should court center.','Share wind use meet beautiful.');
/*!40000 ALTER TABLE `occassion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotions` (
  `promotion` varchar(255) DEFAULT NULL,
  `occassion_id` int DEFAULT NULL,
  KEY `occassion_id` (`occassion_id`),
  CONSTRAINT `promotions_ibfk_1` FOREIGN KEY (`occassion_id`) REFERENCES `occassion` (`occassion_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
INSERT INTO `promotions` VALUES ('Virtual Events and Livestreams',7),('Collaborations and Partnerships',3),('Mobile Marketing',7),('Virtual Events and Livestreams',4),('Social Media Marketing',3),('Social Media Marketing',4),('Flash Sales and Limited-Time Offers',10),('Street Team Promotion',3),('Online Ticketing Platforms',7),('Online Ticketing Platforms',9),('Search Engine Optimization (SEO)',2),('Giveaways',4),('Online Ticketing Platforms',2),('Email Marketing',1),('Email Marketing',6),('Flash Sales and Limited-Time Offers',9),('Social Media Marketing',1),('Online Ticketing Platforms',3),('Collaborations and Partnerships',10),('Online Ticketing Platforms',3),('Email Marketing',10),('Radio and Podcast Advertising',10),('Flash Sales and Limited-Time Offers',2),('Online Ticketing Platforms',6),('Flash Sales and Limited-Time Offers',1);
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `rating` int DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `date_posted` date DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  KEY `user_id` (`user_id`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (10,'Size wide second cause.','2022-04-02',10),(10,'Truth protect learn matter more.','2022-06-21',20),(2,'Listen hair speak assume poor she.','2020-03-14',14),(5,'Grow part happy stuff.','2020-09-05',43),(1,'Military wall her place southern.','2020-12-14',34),(8,'Hair before run hear remember.','2022-09-13',10),(10,'Artist cover song message source.','2022-04-29',9),(9,'Add alone policy gun certain.','2022-05-04',45),(1,'Around citizen no old yard.','2020-05-29',12),(1,'Write seem then reality economic early none.','2020-06-16',22),(7,'The main race radio store energy its.','2022-09-24',48),(2,'Report something indeed produce especially.','2021-07-30',5),(8,'Option report phone employee cell rest according.','2022-09-25',11),(4,'Goal throughout less fine purpose able add.','2020-01-16',33),(9,'Enter serve baby really.','2020-12-21',18),(2,'Set entire service staff indicate decide account.','2020-01-24',30),(3,'Young rise provide.','2022-10-14',19),(1,'Safe cause evidence eight whatever clearly.','2021-07-25',11),(7,'Certainly area strategy identify end pretty attorney.','2022-04-17',24),(8,'Executive statement question course play half television identify.','2022-12-25',31),(2,'Everyone a personal ahead single strong lead page.','2021-04-01',33),(3,'Officer range police west anything fly friend.','2020-12-09',34),(3,'New research try real.','2020-11-20',3),(5,'Bar training role car their set sister.','2022-01-29',9),(10,'Bank you social budget thing scene.','2022-09-02',28),(6,'Boy her nearly born.','2021-02-09',8),(6,'Spring meet view worker recognize news.','2020-10-27',21),(8,'Major list protect goal book floor type.','2022-04-26',9),(2,'Finally them since appear.','2020-07-22',7),(1,'Bit mention way west on.','2022-07-15',17),(3,'Than each example imagine.','2022-05-12',19),(1,'Score will really evening.','2021-05-12',26),(8,'Kitchen occur lose again.','2022-03-12',26),(5,'Analysis hot interesting.','2021-07-09',41),(1,'Create price shoulder sell during question build.','2020-02-19',26),(7,'Specific experience within until thus until resource.','2020-03-09',23),(6,'Box itself worker near after know.','2020-07-24',50),(2,'Old candidate customer.','2020-04-11',45),(10,'Sound page time modern himself both million.','2022-07-10',2),(2,'Lay way while response environmental message.','2022-09-06',45);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat` (
  `seat_number` int NOT NULL,
  `ticket_id` int DEFAULT NULL,
  `concert_id` int DEFAULT NULL,
  PRIMARY KEY (`seat_number`),
  KEY `ticket_id` (`ticket_id`),
  KEY `concert_id` (`concert_id`),
  CONSTRAINT `seat_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`ticket_id`) ON DELETE CASCADE,
  CONSTRAINT `seat_ibfk_2` FOREIGN KEY (`concert_id`) REFERENCES `concert` (`concert_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10);
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `title` varchar(255) DEFAULT NULL,
  `album` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `artist_id` int DEFAULT NULL,
  KEY `artist_id` (`artist_id`),
  CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES ('Show pass trouble.','Agent study vote feel put population attack.','r&b','2020-05-07',35),('Big create public.','Language agreement let high.','metal','2020-10-30',7),('Admit court.','Hair them more trade trouble very.','punk','2022-05-22',17),('Surface.','Large involve range a stop.','metal','2021-02-22',33),('Despite large.','Myself group type measure side.','kpop','2022-05-11',33),('Around home social.','Defense budget American big recognize reach bill usually.','r&b','2021-11-04',8),('Able next image.','Same shake major account deal detail on.','ska','2020-01-24',33),('Eight foreign edge.','Check seven painting dream side.','r&b','2020-03-04',17),('Debate trip road.','Outside age happen offer around national through.','ska','2021-12-04',15),('Open write.','Response kitchen PM.','jazz','2021-12-07',25),('Establish send back.','Get and write energy new religious development.','rap','2020-08-22',35),('Wide to forget.','Measure school number set it level.','folk','2021-08-01',15),('View expect.','Drug system blood.','r&b','2021-10-23',1),('Power later.','Mind million into opportunity bit drive.','soul','2020-10-08',10),('Party indeed join.','Where lose think will help lot.','r&b','2021-03-16',8),('Party again.','Position realize unit teach professor.','hip hop','2021-09-06',20),('Security else.','Foot mother remain difference.','alternative','2021-11-26',23),('Garden wear.','Economic message my establish.','rock','2022-04-03',8),('Network open nature.','Somebody rock section.','r&b','2021-12-12',26),('Development buy.','They gun day despite yet professional American.','rock','2022-03-13',17),('These cold such arm.','Tax measure just spend position executive word.','r&b','2020-03-13',17),('Suggest region.','Country involve sign so new summer listen week.','ska','2020-01-10',14),('Pay approach.','Positive name before almost environmental.','classical','2020-11-01',21),('Training stand boy.','Specific learn education address deal.','folk','2020-01-29',16),('Throw sing one.','Along him official popular.','punk','2022-04-15',35),('Girl part senior.','Agency popular per college question price character hair.','pop','2021-04-04',22),('Push environmental.','Morning thus anything two.','soul','2020-06-14',32),('Father final.','Those strong me sister cup.','classical','2022-11-10',1),('Report various I.','Yes risk huge.','soul','2021-10-15',27),('Despite itself high.','Artist hit imagine decide inside Democrat.','kpop','2022-03-02',3),('Matter since.','Meet avoid either Republican let.','hip hop','2021-09-26',33),('Mission hair fall.','Establish even just address.','hip hop','2020-09-23',9),('Whether something.','Civil sea hear he staff lead.','classical','2021-02-12',32),('Police room idea.','Other thought public free brother.','kpop','2022-04-04',5),('Yard receive mother.','To fire indicate writer truth current remember.','classical','2020-11-09',21),('Building almost.','Heart ability environment practice white establish it.','r&b','2021-05-28',6),('Local discussion.','Analysis beat so worker election.','alternative','2021-04-21',16),('Money yet.','Why court your financial government.','punk','2020-03-14',26),('Trouble push water.','Any sort agency smile.','soul','2020-02-08',35),('Benefit ok large.','Medical will sort sister among.','soul','2022-09-11',26),('We institution east.','Cup some customer response performance.','pop','2022-02-18',19),('Understand least.','Way drive serve suggest brother allow tonight seek.','ska','2022-10-02',3),('Career road seat.','Good country life within try such surface.','rock','2022-07-24',31),('Call six eye data.','Away forget morning now program field rest.','folk','2020-06-05',13),('Forget force.','Teacher often worry hard.','kpop','2021-10-12',17),('Rate political.','One six from minute last.','metal','2021-10-01',11),('Let painting break.','Before hair evening letter security base owner.','jazz','2020-03-31',7),('Laugh three age.','Near he focus candidate laugh small.','r&b','2021-08-25',31),('And me force open.','Cause baby energy board senior.','punk','2021-01-20',1),('American feel.','Technology road interesting career investment.','rock','2021-11-25',1);
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `venue_id` int DEFAULT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `venue_id` (`venue_id`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`venue_id`) REFERENCES `venue` (`venue_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Gregory Dixon','andrewstuart@example.net','(435)986-838',10),(2,'Mary Maldonado','cdunlap@example.net','692-761-6582',8),(3,'Joseph Mayer','hamiltontiffany@example.net','+1-765-231-0',7),(4,'Dennis Powell','denise79@example.org','6346059366',3),(5,'Randy Simpson','lisa02@example.org','313-656-6494',7),(6,'Amanda Jones','lindajohnson@example.net','993-879-4947',8),(7,'Willie Miller','keith24@example.net','949-337-3177',4),(8,'Linda Smith','kcruz@example.com','001-788-488-',3),(9,'Martha Sims','kevinwade@example.net','001-382-852-',4),(10,'Lisa Hanson','sara62@example.com','215-254-3117',9),(11,'John Gonzalez','matthewsmith@example.org','+1-789-400-5',4),(12,'Adam Morris','joshua40@example.net','(960)573-948',6),(13,'Marc Jackson','zanderson@example.com','+1-216-698-8',2),(14,'Kristin Wright','robersonelizabeth@example.org','001-792-371-',4),(15,'Steven Jones','irojas@example.net','(606)865-936',8),(16,'Daniel Anderson','robinwilliams@example.org','+1-889-832-2',5),(17,'Christina Jones','brookskaren@example.org','+1-700-565-6',8),(18,'Linda Williams','matthew54@example.com','(623)777-692',7),(19,'Dana Anderson','xgarcia@example.com','993.658.9322',2),(20,'Alexander Cummings','brittanydavis@example.org','489.896.0118',3),(21,'Ricky Espinoza','umartin@example.com','001-706-205-',3),(22,'George Smith','craigwerner@example.org','851-736-9242',6),(23,'Janet Swanson','kyle96@example.org','845-576-3462',5),(24,'Joshua Robinson','anthonyfritz@example.org','+1-324-982-9',4),(25,'Douglas Horton','johnsonpatrick@example.org','+1-366-541-5',3),(26,'Nicole Smith','andrew43@example.org','(739)386-706',9),(27,'Kenneth Walker','lwhite@example.org','3705777118',3),(28,'Gabriel Mcdaniel','juanfoster@example.net','001-403-819-',1),(29,'Michelle Harrington','stephanie00@example.org','265.208.5977',8),(30,'Kerri Carter','crystalreid@example.net','586.582.2264',6),(31,'Marco Allen','jason40@example.com','+1-589-718-8',10),(32,'Sara Douglas','michelleweber@example.org','001-346-968-',1),(33,'Stephanie Ortiz','stephanie02@example.org','(790)491-842',1),(34,'John Hanna','cody02@example.com','952-836-3444',7),(35,'David Smith','johngarrison@example.net','246.655.9138',7),(36,'Robert Cantu','richardsonraymond@example.com','001-430-485-',2),(37,'Kristi Rogers','donaldle@example.net','673-289-1914',7),(38,'Michael Fitzgerald','woodwilliam@example.net','001-988-760-',2),(39,'Annette Ortiz','garciamark@example.net','001-570-416-',3),(40,'Chase Merritt','rbryant@example.com','438.975.8892',6),(41,'William Mathews','crosspatrick@example.com','+1-560-573-5',8),(42,'Michelle Dixon','luismorrison@example.org','605.284.4093',3),(43,'Yvette Bell','christianjones@example.org','(634)910-880',3),(44,'John Beasley','zdoyle@example.org','(672)203-582',9),(45,'Brandi Hughes','michaellam@example.org','+1-592-643-1',9),(46,'Christopher Hughes','morganamanda@example.net','849-345-5920',8),(47,'Jennifer Hill','cvazquez@example.org','(382)504-854',2),(48,'Ashley Moore','daryllee@example.org','911.896.8247',9),(49,'Alexis Lin','stacystone@example.org','001-690-735-',4),(50,'Kathleen Moore','thomasmarc@example.com','784.846.4934',4),(51,'Susan Rhodes','williambyrd@example.net','001-809-843-',8),(52,'James Spencer','mhowell@example.net','319.719.8296',9),(53,'Robert Baker','ronaldbrown@example.org','+1-874-556-0',5),(54,'Amy Zavala','sierraramirez@example.com','7218723579',3),(55,'Robin Schultz','petersjohn@example.net','+1-497-920-4',10),(56,'James Harding','durhammegan@example.org','+1-791-537-9',7),(57,'Ashley Owens','gwilson@example.org','(932)803-163',4),(58,'James Fleming','lterrell@example.com','721-360-1359',8),(59,'Valerie Jordan PhD','bonillaearl@example.net','+1-632-657-5',5),(60,'Jeffrey Walker','benjamintucker@example.org','+1-334-389-5',7),(61,'Christopher Davenport','ariasjeremy@example.org','836-663-3519',3),(62,'Daniel Jones','lynnsmith@example.net','523-886-4443',4),(63,'Jennifer Nicholson','tiffanyolson@example.net','(492)288-004',1),(64,'John Quinn','bruce89@example.com','529-908-9038',1),(65,'Sergio Rose','itravis@example.com','(449)273-173',6),(66,'Dr. Kim Perry','shelia68@example.com','(706)302-617',4),(67,'Dana Lopez','martinezkelli@example.com','001-645-230-',8),(68,'Dana Andrade MD','mbell@example.org','+1-683-315-3',4),(69,'Joshua Boyd','christopher01@example.org','+1-747-827-0',7),(70,'Nathan Haley DDS','gregorysullivan@example.com','001-747-560-',5),(71,'Lisa Anderson','vbrooks@example.org','719.484.4839',3),(72,'Heather Thomas','christinepearson@example.com','229.391.4227',10),(73,'Sean Davis','laura14@example.com','750.579.4372',9),(74,'Stephen Little','ebonyhoward@example.com','230.611.4897',9),(75,'Michelle Rogers','harrisonmelissa@example.net','(905)737-082',7),(76,'Joshua Irwin','gabriel22@example.org','341.999.3410',1),(77,'Jennifer Peters','kmendez@example.org','353.453.5350',6),(78,'Kara Williams','phillipschristina@example.org','732.256.3709',6),(79,'Kayla Nielsen','jacksonsheila@example.org','(723)399-168',1),(80,'Gabrielle Wilson MD','ybailey@example.net','506-514-3212',7);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `ticket_id` int NOT NULL,
  `price` float DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,10,1),(2,15,2),(3,20,3),(4,25,4),(5,30,5),(6,45,6),(7,50,7),(8,60,8),(9,70,9),(10,80,10);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venue`
--

DROP TABLE IF EXISTS `venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venue` (
  `venue_id` int NOT NULL,
  `venue_name` varchar(255) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `concert_id` int DEFAULT NULL,
  PRIMARY KEY (`venue_id`),
  KEY `concert_id` (`concert_id`),
  CONSTRAINT `venue_ibfk_1` FOREIGN KEY (`concert_id`) REFERENCES `concert` (`concert_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue`
--

LOCK TABLES `venue` WRITE;
/*!40000 ALTER TABLE `venue` DISABLE KEYS */;
INSERT INTO `venue` VALUES (1,'List rock.',1818,1),(2,'Foreign they.',366,2),(3,'Feeling rich.',1842,3),(4,'Child say.',819,4),(5,'Learn finish.',549,5),(6,'Section first.',489,6),(7,'Expect rule.',864,7),(8,'Owner the.',1793,8),(9,'Suggest family.',600,9),(10,'Success bed.',954,10);
/*!40000 ALTER TABLE `venue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'music_reservation'
--
/*!50003 DROP FUNCTION IF EXISTS `num_songs_in_year` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `num_songs_in_year`(
    target_year int
    ) RETURNS int
    READS SQL DATA
    DETERMINISTIC
begin
		declare count_song int; 
        
        select count(*) into count_song
			from songs
            where year(release_date) = target_year; 
            
		return count_song;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `num_songs_with_genre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `num_songs_with_genre`(
    target_genre varchar(64)
    ) RETURNS int
    READS SQL DATA
    DETERMINISTIC
begin 
		declare num_genre int; 
        
        select count(*) into num_genre 
			from songs 
            where songs.genre = target_genre; 
            
		return num_genre; 
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `songs_by_artist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `songs_by_artist`(
    target_artist varchar(64)
    ) RETURNS int
    READS SQL DATA
    DETERMINISTIC
begin 
		declare num_songs int; 
        
        select count(*) into num_songs
			from songs 
            inner join artists 
				on artists.artist_id = songs.artist_id
			where artists.artist_name = target_artist; 
            
		return num_songs; 
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `all_artists_in_concert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `all_artists_in_concert`(IN concert_name varchar(255))
BEGIN
-- given concert name find all artists assigned to concert
SELECT artists.artist_name
FROM artists 
JOIN concert on artists.concert_id = concert.concert_id
WHERE concert.concert_name = concert_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `promotions_for_occasion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `promotions_for_occasion`(
IN occasion_name varchar(255))
BEGIN
SELECT promotion 
FROM promotions 
JOIN occassion on occassion.occassion_id = promotions.occassion_id
WHERE occassion.occassion_name = occasion_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `staff_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `staff_list`(
IN venue_name varchar(255))
BEGIN
SELECT name 
FROM staff
JOIN venue on staff.venue_id = venue.venue_id
WHERE venue.venue_name = venue_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 22:05:28
