-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: srms
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `course_id` varchar(3) NOT NULL,
  `course_name` varchar(45) DEFAULT NULL,
  `course_seat` int(11) DEFAULT NULL,
  `course_hod` varchar(45) DEFAULT NULL,
  `sections` int(11) GENERATED ALWAYS AS ((`course_seat` / 60)) VIRTUAL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` (`course_id`, `course_name`, `course_seat`, `course_hod`) VALUES ('civ','Civil Engineering',60,'Dr. Pratap Kumar MT'),('cse','Computer Science and Engineering',120,'Dr. G.T. Raju'),('ece','Electronics and Communication Engineering',180,'Dr. Vipula Singh'),('eee','Electrical and Electronics Engineering',60,'Dr. Sumathi S'),('eie','Electronics and Instrumentation Engineering',120,'Dr. Andhe Pallavi'),('ise','Information Science and Engineering',120,'Dr. M.V. Sudhamani'),('mec','Mechanical Engineering',180,'Dr. T Shreenivasan');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result` (
  `usn` varchar(10) NOT NULL,
  `sub_code` varchar(8) NOT NULL,
  `course_id` varchar(8) DEFAULT NULL,
  `internal` int(11) DEFAULT NULL,
  `external` int(11) DEFAULT NULL,
  `grade_letter` varchar(2) DEFAULT NULL,
  `grade_point` int(11) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `sem` int(11) DEFAULT NULL,
  PRIMARY KEY (`usn`,`sub_code`),
  KEY `course_id` (`course_id`,`sub_code`),
  CONSTRAINT `result_ibfk_1` FOREIGN KEY (`usn`) REFERENCES `student` (`usn`) ON DELETE CASCADE,
  CONSTRAINT `result_ibfk_2` FOREIGN KEY (`course_id`, `sub_code`) REFERENCES `subject` (`course_id`, `sub_code`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES ('1RN16CS035','15CED24','ise',20,80,'S+',10,'P',2),('1RN16CS035','15CHE22','ise',20,66,'S',9,'P',2),('1RN16CS035','15CHEL27','ise',20,78,'S+',10,'P',2),('1RN16CS035','15CIV28','ise',10,34,'E',4,'P',2),('1RN16CS035','15CPL26','ise',20,78,'S+',10,'P',2),('1RN16CS035','15CS32','ise',20,66,'S',9,'P',3),('1RN16CS035','15CS33','ise',20,40,'B',7,'P',3),('1RN16CS035','15CS34','ise',20,62,'S',9,'P',3),('1RN16CS035','15CS35','ise',20,57,'A',8,'P',3),('1RN16CS035','15CS36','ise',20,57,'A',8,'P',3),('1RN16CS035','15CS42','ise',20,54,'A',8,'P',4),('1RN16CS035','15CS43','ise',20,67,'S',9,'P',4),('1RN16CS035','15CS44','ise',20,68,'S',9,'P',4),('1RN16CS035','15CS45','ise',20,56,'A',8,'P',4),('1RN16CS035','15CS46','ise',20,53,'A',8,'P',4),('1RN16CS035','15CSL37','ise',10,75,'S+',10,'P',3),('1RN16CS035','15CSL38','ise',20,78,'S+',10,'P',3),('1RN16CS035','15CSL47','ise',20,78,'S+',10,'P',4),('1RN16CS035','15CSL48','ise',20,79,'S+',10,'P',4),('1RN16CS035','15ELN25','ise',20,79,'S+',10,'P',2),('1RN16CS035','15MAT21','ise',20,72,'S+',10,'P',2),('1RN16CS035','15MAT31','ise',20,55,'A',8,'P',3),('1RN16CS035','15MAT41','ise',18,77,'S+',10,'P',4),('1RN16CS035','15PCD23','ise',18,51,'A',8,'P',2),('1RN16IS017','15CED24','ise',12,35,'E',4,'P',2),('1RN16IS017','15CHE22','ise',15,29,'E',4,'P',2),('1RN16IS017','15CHEL27','ise',16,60,'A',8,'P',2),('1RN16IS017','15CIV28','ise',8,27,'E',4,'P',2),('1RN16IS017','15CPL26','ise',14,74,'S',9,'P',2),('1RN16IS017','15ELN25','ise',5,35,'E',4,'P',2),('1RN16IS017','15MAT21','ise',15,35,'E',4,'P',2),('1RN16IS017','15PCD23','ise',12,37,'D',5,'P',2),('1RN16IS047','15CED24','ise',19,38,'C',6,'P',2),('1RN16IS047','15CHE22','ise',18,61,'A',8,'P',2),('1RN16IS047','15CHEL27','ise',20,63,'S',9,'P',2),('1RN16IS047','15CIV28','ise',8,29,'E',4,'P',2),('1RN16IS047','15CPL26','ise',20,35,'C',6,'P',2),('1RN16IS047','15CS32','ise',19,46,'B',7,'P',3),('1RN16IS047','15CS33','ise',18,49,'B',7,'P',3),('1RN16IS047','15CS34','ise',20,47,'B',7,'P',3),('1RN16IS047','15CS35','ise',19,58,'A',8,'P',3),('1RN16IS047','15CS36','ise',20,54,'A',8,'P',3),('1RN16IS047','15CS42','ise',20,49,'B',7,'P',4),('1RN16IS047','15CS43','ise',19,58,'A',8,'P',4),('1RN16IS047','15CS44','ise',18,50,'B',7,'P',4),('1RN16IS047','15CS45','ise',20,32,'C',6,'P',4),('1RN16IS047','15CS46','ise',18,40,'C',6,'P',4),('1RN16IS047','15CSL37','ise',20,77,'S+',10,'P',3),('1RN16IS047','15CSL38','ise',17,78,'S+',10,'P',3),('1RN16IS047','15CSL47','ise',18,75,'S+',10,'P',4),('1RN16IS047','15CSL48','ise',19,72,'S+',10,'P',4),('1RN16IS047','15ELN25','ise',20,65,'S',9,'P',2),('1RN16IS047','15MAT21','ise',20,74,'S+',10,'P',2),('1RN16IS047','15MAT31','ise',18,73,'S+',10,'P',3),('1RN16IS047','15MAT41','ise',20,52,'A',8,'P',4),('1RN16IS047','15PCD23','ise',17,44,'B',7,'P',2),('1RN16ME062','15CED24','mec',15,60,'A',8,'P',2),('1RN16ME062','15CHE22','mec',17,39,'C',6,'P',2),('1RN16ME062','15CHEL27','mec',28,67,'S',9,'P',2),('1RN16ME062','15CIV28','mec',7,26,'E',4,'P',2),('1RN16ME062','15CPL26','mec',16,74,'S+',10,'P',2),('1RN16ME062','15ELN25','mec',13,43,'C',6,'P',2),('1RN16ME062','15MAT21','mec',19,41,'B',7,'P',2),('1RN16ME062','15MAT31','mec',14,47,'B',7,'P',3),('1RN16ME062','15MAT41','mec',14,31,'D',5,'P',4),('1RN16ME062','15ME32','mec',14,48,'B',7,'P',3),('1RN16ME062','15ME33','mec',13,47,'B',7,'P',3),('1RN16ME062','15ME34','mec',11,30,'E',4,'P',3),('1RN16ME062','15ME42','mec',14,40,'C',6,'P',4),('1RN16ME062','15ME44','mec',12,28,'E',4,'P',4),('1RN16ME062','15MEA305','mec',19,59,'A',8,'P',3),('1RN16ME062','15MEA306','mec',19,55,'A',8,'P',3),('1RN16ME062','15MEA307','mec',19,57,'A',8,'P',3),('1RN16ME062','15MEA308','mec',19,64,'S',9,'P',3),('1RN16ME062','15MEB405','mec',18,52,'A',8,'P',4),('1RN16ME062','15MEB406','mec',15,38,'C',6,'P',4),('1RN16ME062','15MEB407','mec',18,65,'S',9,'P',4),('1RN16ME062','15MEB408','mec',19,63,'S',10,'P',4);
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `usn` varchar(10) NOT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `college` varchar(45) DEFAULT NULL,
  `course_id` varchar(3) DEFAULT NULL,
  `section` varchar(1) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`usn`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('1RN16CS035','Harshitha','Sharma','RNSIT','cse','A','7019352508'),('1RN16IS012','Rahul','Verma','RNSIT','ise','A','8861014458'),('1RN16IS014','aPY','MHK','HKH','ise','A','7878787878'),('1RN16IS017','Aryan','Kapoor','RNSIT','ise','A','9504638049'),('1RN16IS047','Madhuri','MG','RNSIT','ise','A','910867001'),('1RN16IS099','archut','raj','rnsit','ise','C','1234567890'),('1RN16ME062','Lochan','Chowdary Y','RNSIT','mec','B','9122670018');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject` (
  `sub_code` varchar(8) NOT NULL,
  `sub_name` varchar(45) DEFAULT NULL,
  `course_id` varchar(3) NOT NULL,
  `sem` int(11) DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  PRIMARY KEY (`course_id`,`sub_code`),
  CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES ('15CED24','Computer Aided Drawing','civ',2,4),('15CHE22','Engineering Chemistry','civ',2,4),('15CHEL27','Engineering Chemistry Lab','civ',2,2),('15CIV28','Enviormental Studies','civ',2,0),('15CPL26','Computer Programming Lab','civ',2,2),('15CV32','Strength of Materials','civ',3,4),('15CV33','Fluid Mechanics','civ',3,4),('15CV34','Basic Surveying','civ',3,4),('15CV35','Engineering Geology','civ',3,4),('15CV36','Building Materials And Constructions','civ',3,4),('15CV42','Analysis of Determinate Structure','civ',4,4),('15CV43','Applied Hyraulics','civ',4,4),('15CV44','Concrete Technology','civ',4,4),('15CV45','Basic Geotechnical Engineering','civ',4,4),('15CV46','Advance Surveying','civ',4,4),('15CVL37','Building Materials and Testing Lab','civ',3,2),('15CVL38','Basic Surveying Practice','civ',3,2),('15CVL47','Fluid Mechanics Lab','civ',4,2),('15CVL48','Engineering Geology Practice','civ',4,2),('15ELN25','Basic Electronics','civ',2,4),('15MAT21','Engineering Mathematis-2','civ',2,4),('15MAT31','Engineering Mathematis-3','civ',3,4),('15MAT41','Engineering Mathematis-4','civ',4,4),('15PCD23','Programming in C and Data Structures','civ',2,4),('15CED24','Computer Aided Drawing','cse',2,4),('15CHE22','Engineering Chemistry','cse',2,4),('15CHEL27','Engineering Chemistry Lab','cse',2,2),('15CIV28','Enviormental Studies','cse',2,0),('15CPL26','Computer Programming Lab','cse',2,2),('15CS32','Analog and Digital Electronics','cse',3,4),('15CS33','Data Structures and Application','cse',3,4),('15CS34','Computer Organization','cse',3,4),('15CS35','Unix and Shell Programming','cse',3,4),('15CS36','Discrete Mathematical Structures','cse',3,4),('15CS42','Software Engineering','cse',4,4),('15CS43','Design and Analysis of Algorithm','cse',4,4),('15CS44','Microprocessors and Microcontrollers','cse',4,4),('15CS45','Object Oriented Programming','cse',4,4),('15CS46','Data Communication','cse',4,4),('15CSL37','Analog and Digital Electronics Lab','cse',3,2),('15CSL38','Data Structures Lab','cse',3,2),('15CSL47','Design and Analysis of Alogrithm Lab','cse',4,2),('15CSL48','Microprocessors Lab','cse',4,2),('15ELN25','Basic Electronics','cse',2,4),('15MAT21','Engineering Mathematis-2','cse',2,4),('15MAT31','Engineering Mathematis-3','cse',3,4),('15MAT41','Engineering Mathematis-4','cse',4,4),('15PCD23','Programming in C and Data Structures','cse',2,4),('15CED24','Computer Aided Drawing','ece',2,4),('15CHE22','Engineering Chemistry','ece',2,4),('15CHEL27','Engineering Chemistry Lab','ece',2,2),('15CIV28','Enviormental Studies','ece',2,0),('15CPL26','Computer Programming Lab','ece',2,2),('15EC32','Analog Electronics','ece',3,4),('15EC33','Digital Electronics','ece',3,4),('15EC34','Network Analysis','ece',3,4),('15EC35','Electronic Instrumentation','ece',3,4),('15EC36','Engineering Electromagnetics','ece',3,4),('15EC42','Analog Electronics','ece',4,4),('15EC43','Digital Electronics','ece',4,4),('15EC44','Network Analysis','ece',4,4),('15EC45','Electronic Instrumentation','ece',4,4),('15EC46','Engineering Electromagnetics','ece',4,4),('15ECL37','Analog Electronics Lab','ece',3,2),('15ECL38','Digital Electronics Lab','ece',3,2),('15ECL47','Microprocessor  Lab','ece',4,2),('15ECL48','Linear ICs and Communication Lab','ece',4,2),('15ELN25','Basic Electronics','ece',2,4),('15MAT21','Engineering Mathematis-2','ece',2,4),('15MAT31','Engineering Mathematis-3','ece',3,4),('15MAT41','Engineering Mathematis-3','ece',4,4),('15PCD23','Programming in C and Data Structures','ece',2,4),('15CED24','Computer Aided Drawing','eee',2,4),('15CHE22','Engineering Chemistry','eee',2,4),('15CHEL27','Engineering Chemistry Lab','eee',2,2),('15CIV28','Enviormental Studies','eee',2,0),('15CPL26','Computer Programming Lab','eee',2,2),('15EE32','Electronic Circuit Analysis','eee',3,4),('15EE33','Transformers and Generators','eee',3,4),('15EE34','Analog Electronic Circuits','eee',3,4),('15EE35','Digital System Design','eee',3,4),('15EE36','Electrical and Electronic Manegment','eee',3,4),('15EE42','Power Generation and Economics','eee',4,4),('15EE43','Transmission and Distribution','eee',4,4),('15EE44','Electric Motors','eee',4,4),('15EE45','Electromagnetic Field Theory','eee',4,4),('15EE46','Operational Amplifiers and Linear ICs','eee',4,4),('15EEL37','Electrical Machines Lab','eee',3,2),('15EEL38','Electronics Lab','eee',3,2),('15EEL47','Electrical Machines Lab-2','eee',4,2),('15EEL48','Operational Amplifiers and Linear ICs Lab','eee',4,2),('15ELN25','Basic Electronics','eee',2,4),('15MAT21','Engineering Mathematis-2','eee',2,4),('15MAT31','Engineering Mathematis-3','eee',3,4),('15MAT41','Engineering Mathematis-4','eee',4,4),('15PCD23','Programming in C and Data Structures','eee',2,4),('15CED24','Computer Aided Drawing','eie',2,4),('15CHE22','Engineering Chemistry','eie',2,4),('15CHEL27','Engineering Chemistry Lab','eie',2,2),('15CIV28','Enviormental Studies','eie',2,0),('15CPL26','Computer Programming Lab','eie',2,2),('15EI32','Electronic Instrumentation and Measurements','eie',3,4),('15EI33','Analog Electonic Circuits','eie',3,4),('15EI34','Digital Design and HDL','eie',3,4),('15EI35','Transducers and Instrumentations','eie',3,4),('15EI36','Network Analysis','eie',3,4),('15EI42','Signal Conditioning and Data Acquisition Cir','eie',4,4),('15EI43','Embedded Controllers','eie',4,4),('15EI44','Control Systems','eie',4,4),('15EI45','Process Instrumentation','eie',4,4),('15EI46','Scientific and Analytic Instrumentation','eie',3,4),('15EIL37','Analog Electronics Circuit  Lab','eie',3,2),('15EIL38','Digital Design and HDL Lab','eie',3,2),('15EIL47','Embedded Controller Lab','eie',4,2),('15EIL48','Instrumentation and Measurement Lab','eie',4,2),('15ELN25','Basic Electronics','eie',2,4),('15MAT21','Engineering Mathematis-2','eie',2,4),('15MAT31','Engineering Mathematis-3','eie',3,4),('15MAT41','Engineering Mathematis-4','eie',4,4),('15PCD23','Programming in C and Data Structures','eie',2,4),('15CED24','Computer Aided Drawing','ise',2,4),('15CHE22','Engineering Chemistry','ise',2,4),('15CHEL27','Engineering Chemistry Lab','ise',2,2),('15CIV28','Enviormental Studies','ise',2,0),('15CPL26','Computer Programming Lab','ise',2,2),('15CS32','Analog and Digital Electronics','ise',3,4),('15CS33','Data Structures and Application','ise',3,4),('15CS34','Computer Organization','ise',3,4),('15CS35','Unix and Shell Programming','ise',3,4),('15CS36','Discrete Mathematical Structures','ise',3,4),('15CS42','Software Engineering','ise',4,4),('15CS43','Design and Analysis of Algorithm','ise',4,4),('15CS44','Microprocessors and Microcontrollers','ise',4,4),('15CS45','Object Oriented Programming','ise',4,4),('15CS46','Data Communication','ise',4,4),('15CSL37','Analog and Digital Electronics Lab','ise',3,2),('15CSL38','Data Structures Lab','ise',3,2),('15CSL47','Design and Analysis of Alogrithm Lab','ise',4,2),('15CSL48','Microprocessors Lab','ise',4,2),('15ELN25','Basic Electronics','ise',2,4),('15MAT21','Engineering Mathematis-2','ise',2,4),('15MAT31','Engineering Mathematis-3','ise',3,4),('15MAT41','Engineering Mathematis-4','ise',4,4),('15PCD23','Programming in C and Data Structures','ise',2,4),('15CED24','Computer Aided Drawing','mec',2,4),('15CHE22','Engineering Chemistry','mec',2,4),('15CHEL27','Engineering Chemistry Lab','mec',2,2),('15CIV28','Enviormental Studies','mec',2,0),('15CPL26','Computer Programming Lab','mec',2,2),('15ELN25','Basic Electronics','mec',2,4),('15MAT21','Engineering Mathematis-2','mec',2,4),('15MAT31','Engineering Mathematis-3','mec',3,4),('15MAT41','Engineering Mathematis-4','mec',4,4),('15ME32','Materials Science','mec',3,4),('15ME33','Basic Thermodynamics','mec',3,4),('15ME34','Mechanics of Materials','mec',3,4),('15ME42','Kinetics of Machinery','mec',4,4),('15ME44','Fluid Mechanics','mec',4,4),('15MEA305','Metal Casting and Wielding','mec',3,4),('15MEA306','Computer Aided Machine Drawing','mec',3,2),('15MEA307','Materials Testing Lab','mec',3,2),('15MEA308','Foundry and Forging Lab','mec',3,2),('15MEB405','Mechanical Tools And Operations','mec',4,4),('15MEB406','Mechanical Measurements and Metrology','mec',4,2),('15MEB407','Mechanical Measurements and Metrology Lab','mec',4,2),('15MEB408','Machine Shop Lab','mec',4,2);
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vtable`
--

DROP TABLE IF EXISTS `vtable`;
/*!50001 DROP VIEW IF EXISTS `vtable`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vtable` AS SELECT 
 1 AS `internal`,
 1 AS `sem`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vtable`
--

/*!50001 DROP VIEW IF EXISTS `vtable`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vtable` AS select `r`.`internal` AS `internal`,`s`.`sem` AS `sem` from (`result` `r` join `subject` `s`) where (`r`.`usn` = '1RN16IS017') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-10 20:55:36
