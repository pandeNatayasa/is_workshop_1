/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.36-MariaDB : Database - db_mahasiswa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_mahasiswa` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_mahasiswa`;

/*Table structure for table `tbl_mhs` */

DROP TABLE IF EXISTS `tbl_mhs`;

CREATE TABLE `tbl_mhs` (
  `id_mhs` int(11) NOT NULL AUTO_INCREMENT,
  `nm_mhs` varchar(30) DEFAULT NULL,
  `nim` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_mhs`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_mhs` */

insert  into `tbl_mhs`(`id_mhs`,`nm_mhs`,`nim`) values (1,'Ary',1605551111),(2,'Paramarta',1605551112);

/*Table structure for table `tbl_sinkronisasi` */

DROP TABLE IF EXISTS `tbl_sinkronisasi`;

CREATE TABLE `tbl_sinkronisasi` (
  `id_mhs` int(11) DEFAULT NULL,
  `nm_mhs` varchar(30) DEFAULT NULL,
  `nim` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_sinkronisasi` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
