-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db2_project
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `Fname` varchar(15) NOT NULL,
  `minit` varchar(15) DEFAULT NULL,
  `Lname` varchar(15) NOT NULL,
  `Ssn` varchar(20) NOT NULL,
  `Bdate` date DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Sex` varchar(10) NOT NULL,
  `Salary` int DEFAULT NULL,
  `Super_Ssn` varchar(20) DEFAULT NULL,
  `Dno` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES ('Lisa','G','House','101248268','1975-06-29','12 Maple St\"	Austin	\"TX\"','F',85000,'0',7),('Sunil','D','Gupta','110110110','2001-01-02','4312 Bowen Rd\"	Arlington	\"TX\"','M',80000,'111111100',3),('Jared','D','James','111111100','1966-10-10','123 Peachtr	Atlanta	\"GA\"','M',85000,'0',6),('Jon','C','Jones','111111101','1967-11-14','111 Allgood\"	Atlanta	\"GA\"','M',45000,'111111100',6),('Justin','L','Mark','111111102','1966-12-01','2342 May\"	Atlanta	\"GA\"','M',40000,'111111100',6),('Brad','C','Knight','111111103','1968-02-13','176 Main St.\"	Atlanta	\"GA\"','M',44000,'111111100',6),('Cameron','D','Thirteen','111422203','2001-04-05','22 Univ Blvd\"	Arlington	\"TX\"','F',80000,'987987987',4),('Juan','G','Linda','112244668','1965-06-23','1210 Apple St\"	Austin	\"TX\"','F',55000,'	null',8),('John','B','Smith','123456789','1955-09-01','731 Fondren	Houston	\"TX\"','M',30000,'333445555',5),('Alex','C','Yu','1614905','1980-10-17','626 Mary St\"	Dallas	\"TX\"','M',50000,'444444400',6),('Debra','T','Hall','202843824','1983-11-03','45 NY St\"	Rochester	\"NY\"','F',30000,'555555501',6),('Richard','T','Koelbel','214370999','1976-03-04','50 Elk St\"	Chicago	\"IL\"','M',85000,'999999999',4),('Evan','E',' Wallis','222222200','1958-01-16','134 Pelham\"	Milwaukee	\"WI\"','M',92000,'0',7),('Josh','U','Zell','222222201','1954-05-22','266 McGrady\"	Milwaukee	\"WI\"','M',56000,'222222200',7),('Andy','C','Vile','222222202','1944-06-21','1967 Jordan\"	Milwaukee	\"WI\"','M',53000,'222222200',7),('Tom','G','Brand','222222203','1966-12-16','112 Third St\"	Milwaukee	\"WI\"','M',62500,'222222200',7),('Jenny','F','Vos','222222204','1967-11-11','263 Mayberry\"	Milwaukee	\"WI\"','F',61000,'222222201',7),('Chris','A','Carter','222222205','1960-03-21','565 Jordan\"	Milwaukee	\"WI\"','F',43000,'222222201',7),('John','T','Ed','222333444','1981-02-18','4505 West St\"	Rochester	\"NY\"','M',30000,'555555501',6),('Jennifer','A','Joy','223344667','1976-05-19','1204 Main St\"	Miami	\"FL\"','F',45000,'666666613',8),('willie','D','Mary','234234234','1961-12-20','101 South St\"	Arlington	\"TX\"','F',12000,'112244668',9),('Christina','S','Hisel','241625699','1986-05-07','37 Church Row\"	Rochester	\"NY\"','F',45000,'123456789',6),('Erin','A','Maxfield','242535609','1971-12-22','123 Copper St\"	Arlington	\"TX\"','F',72000,'555555500',8),('Wilson','A','Holmes','242916639','1971-02-06','21 South Co\"	Arlington	\"TX\"','M',72500,'555555500',4),('Jake','D','Sheen','245239264','1954-12-25','20 North Co\"	Arlington	\"TX\"','M',52000,'112244668',6),('Megan','G','Jones','254937381','1961-02-03','528 Stone CT\"	Chicago	\"IL\"','F',62000,'666666600',8),('Jisha','A','Carpenter','292740167','1985-05-29','194 Beachdr\"	Miami	\"FL\"','F',15000,'666666613',1),('Kim','C','Grace','333333300','1970-10-23','667 Mills Ave\"	Sacramento	\"CA\"','F',79000,'0',7),('Jeff','H','Chase','333333301','1970-07-01','15 Bradbury\"	Sacramento	\"CA\"','M',44000,'333333300',6),('Frank','T','Wong','333445555','1945-08-12','638 Voss	Houston	\"TX\"','M',40000,'123456789',5),('Jose','H','Barbara','343434344','1955-02-28','905 East St\"	Kleen	\"TX\"','F',35000,'444444400',6),('Leonard','H','Moody','349273344','1973-09-02','908 Greek Row\"	Austin	\"TX\"','M',45000,'444444400',7),('Percy','M','Liang','398172999','1991-12-06','14 Maple St\"	Austin	\"TX\"','M',55000,'0',9),('Gregory','G','Laurie','444212096','1969-09-15','78 Tree Cir\"	Houston	\"TX\"','M',90000,'444444400',7),('Kim','G','Ted','444222666','1968-04-15','3648 Tree Cir\"	Austin	\"TX\"','M',50000,'999999999',8),('Alex','D','Freed','444444400','1950-09-10','4333 Pillsbury	Milwaukee	\"WI\"','M',89000,'0',7),('Bonnie','S','Bays','444444401','1956-06-19','111 Hollow\"	Milwaukee	\"WI\"','F',70000,'444444400',7),('Alec','C','Best','444444402','1966-06-18','233 Solid\"	Milwaukee	\"WI\"','M',60000,'444444400',7),('Sam','S','Snedden','444444403','1977-07-31','97 Windy St	Milwaukee	\"WI\"','M',48000,'444444400',7),('Joyce','A','English','453453453','1962-07-31','5631 Rice Oak\"	Houston	\"TX\"','F',25000,'333445555',5),('John','C','James','555555500','1975-06-30','766 Bloomington	Sacramento	\"CA\"','M',81000,'0',8),('Nandita','K','Ball','555555501','1969-04-06','222 Howard\"	Sacramento	\"CA\"','M',62000,'555555500',6),('Andrea','M','Sondrini','614370310','1996-12-30','1450 Worthington St\"	Houston	\"TX\"','F',65000,'444444401',5),('Michael','A','Morgan','636669233','1984-11-05','26 Sunset Blvd\"	Miami	\"FL\"','M',73500,'666666612',5),('Bob','B','Bender','666666600','1968-04-17','8794 Garfield\"	Chicago	\"IL\"','M',96000,'0',8),('Jill','J','Jarvis','666666601','1966-01-14','6234 Lincoln\"	Chicago	\"IL\"','F',36000,'666666600',8),('Kate','W','King','666666602','1966-04-16','1976 Boone Trace\"	Chicago	\"IL\"','F',44000,'666666600',8),('Lyle','G','Leslie','666666603','1963-09-06','417 Hancock Ave\"	Chicago	\"IL\"','M',41000,'666666601',8),('Billie','J','King','666666604','1960-01-01','556 Washington\"	Chicago	\"IL\"','F',38000,'666666603',8),('Jon','A','Kramer','666666605','1964-08-22','1988 Windy Creek\"	Seattle	\"WA\"','M',41500,'666666603',8),('Ray','H','King','666666606','1949-08-16','213 Delk Road\"	Seattle	\"WA\"','M',44500,'666666604',8),('Gerald','D','Small','666666607','1962-05-15','122 Ball Street\"	Dallas	\"TX\"','M',29000,'666666602',8),('Arnold','A','Head','666666608','1967-05-19','233 Spring St\"	Dallas	\"TX\"','M',33000,'666666602',8),('Helga','C','Pataki','666666609','1969-11-03','101 Holyoke St\"	Dallas	\"TX\"','F',32000,'666666602',8),('Naveen','B','Drew','666666610','1970-05-23','198 Elm St\"	Philadelphia	\"PA\"','M',34000,'666666607',8),('Carl','E','Reedy','666666611','1977-06-21','213 Ball St\"	Philadelphia	\"PA\"','M',32000,'666666610',8),('Sammy','G','Hall','666666612','1970-11-01','433 Main Street\"	Miami	\"FL\"','M',37000,'666666611',8),('Red','A','Bacher','666666613','1980-05-21','196 Elm Street\"	Miami	\"FL\"','M',33500,'666666612',8),('Ramesh','K','Narayan','666884444','1952-09-15','971 Fire Oak	Humble	\"TX\"','M',38000,'333445555',5),('Penny','G','Wolowitz','673466642','1974-01-21','42 South Blvd\"	Miami	\"FL\"','F',17000,'222333444',6),('Sheldon','C','Cucuou','849934919','1974-03-22','11 Hollywood Blvd\"	Dallas	\"TX\"','	M',35500,'123456789',8),('James','E','Jordan','888665151','1927-10-11','450 Stone	Houston	\"TX\"','M',55000,'0',1),('James','U','Miller','906218888','1978-05-27','13 Fifth St\"	Seattle	\"WA\"','M',75000,'999999999',5),('Joseph','K','Kirkish','913323708','1996-04-03','22 UT Blvd\"	Austin	\"TX\"','M',95000,'0',7),('Zach','A','Geller','913353347','1990-08-15','333 PikeWay\"	Seattle	\"WA\"','M',55000,'444444403',6),('Jennifer','S','Wallace','987654321','1931-06-20','291 Berry	Bellaire	\"TX\"','F',43000,'123456789',4),('Ahmad','V','Jabbar','987987987','1959-03-29','980 Dallas\"	Houston	\"TX\"','M',25000,'987654321',4),('Alicia','J','Zelaya','999887777','1958-07-19','3321 Castle	Spring	\"TX\"','F',25000,'987654321',4),('Roy','C','Lewallen','999999999','1977-02-03','14 Wynncrest Street\"	Dallas	\"TX\"','	M',75500,'666666600',8);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `email` varchar(255) NOT NULL,
  `user_password` varchar(8) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Hanan@gmail.com','Ha123456'),('Khawla@gmail.com','Kh123456'),('Nawal.awad1432@gmail.com','Na123456'),('Ohod@gmail.com','Oh123456');
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

-- Dump completed on 2022-04-14  6:40:22
