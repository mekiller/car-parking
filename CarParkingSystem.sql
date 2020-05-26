/*
SQLyog Community v11.31 (64 bit)
MySQL - 5.5.30 : Database - carparkingsystem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`carparkingsystem` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `carparkingsystem`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `usernm` varchar(99) DEFAULT NULL,
  `password` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`usernm`,`password`) values ('a','a');

/*Table structure for table `bookingcar` */

DROP TABLE IF EXISTS `bookingcar`;

CREATE TABLE `bookingcar` (
  `usernm` varchar(88) DEFAULT NULL,
  `carno` varchar(88) DEFAULT NULL,
  `checkintime` varchar(99) DEFAULT NULL,
  `checkoutout` varchar(99) DEFAULT NULL,
  `parkingspotno` int(9) DEFAULT NULL,
  `price` varchar(99) DEFAULT NULL,
  `stayhour` varchar(99) DEFAULT NULL,
  `statuss` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bookingcar` */

insert  into `bookingcar`(`usernm`,`carno`,`checkintime`,`checkoutout`,`parkingspotno`,`price`,`stayhour`,`statuss`) values ('s','12',NULL,NULL,NULL,NULL,NULL,NULL),('s','34',NULL,NULL,NULL,NULL,NULL,NULL),('de','55',NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `Name` varchar(99) DEFAULT NULL,
  `Phone` varchar(99) DEFAULT NULL,
  `emailid` varchar(99) DEFAULT NULL,
  `feedtails` varchar(999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`Name`,`Phone`,`emailid`,`feedtails`) values ('ds','f','sdf','sdf'),('gf','fgh','fgh','gfh');

/*Table structure for table `parkingsloatno` */

DROP TABLE IF EXISTS `parkingsloatno`;

CREATE TABLE `parkingsloatno` (
  `sloatno` int(9) DEFAULT NULL,
  `statuss` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `parkingsloatno` */

insert  into `parkingsloatno`(`sloatno`,`statuss`) values (1,0),(2,0),(3,0),(4,0),(5,0),(6,0),(7,0),(8,0),(9,0),(10,0),(11,0),(12,0),(13,0),(14,0),(15,0);

/*Table structure for table `paymentdt` */

DROP TABLE IF EXISTS `paymentdt`;

CREATE TABLE `paymentdt` (
  `carno` varchar(99) DEFAULT NULL,
  `CardType` varchar(99) DEFAULT NULL,
  `CardNumber` varchar(99) DEFAULT NULL,
  `SecurityCode` varchar(99) DEFAULT NULL,
  `ExpiryDate` varchar(99) DEFAULT NULL,
  `CardHolderName` varchar(99) DEFAULT NULL,
  `paymentamount` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `paymentdt` */

/*Table structure for table `reg` */

DROP TABLE IF EXISTS `reg`;

CREATE TABLE `reg` (
  `usernm` varchar(99) DEFAULT NULL,
  `password` varchar(99) DEFAULT NULL,
  `mob` varchar(99) DEFAULT NULL,
  `emailid` varchar(99) DEFAULT NULL,
  `address` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reg` */

insert  into `reg`(`usernm`,`password`,`mob`,`emailid`,`address`) values ('a','a','4353','projecttpoint@gmail.com','a'),('asd','as','345','projecttpoint@gmail.com','asd'),('1','1','345','projecttpoint@gmail.com','qwe');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
