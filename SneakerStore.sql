/*
SQLyog Enterprise - MySQL GUI v6.15
MySQL - 5.0.82-community-nt : Database - shoesstore
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `shoesstore`;

USE `shoesstore`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `anhgiay` */

DROP TABLE IF EXISTS `anhgiay`;

CREATE TABLE `anhgiay` (
  `MaAnh` double NOT NULL,
  `MaGiay` int(4) NOT NULL,
  `LinkAnh` varchar(1000) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`MaAnh`,`MaGiay`),
  KEY `FK_anhgiay` (`MaGiay`),
  CONSTRAINT `FK_anhgiay` FOREIGN KEY (`MaGiay`) REFERENCES `giay` (`MaGiay`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `anhgiay` */

insert  into `anhgiay`(`MaAnh`,`MaGiay`,`LinkAnh`) values (1,111,'1.jpeg'),(2,112,'2.jpeg'),(3,113,'3.jpeg'),(4,114,'4.jpeg'),(5,115,'5.jpeg'),(6,116,'6.jpeg'),(7,117,'7.jpeg'),(8,118,'8.jpeg'),(9,119,'9.jpeg'),(10,120,'10.jpeg'),(11,121,'11.jpeg'),(12,122,'12.jpeg'),(13,123,'13.jpeg'),(14,124,'14.jpeg'),(15,125,'15.jpeg'),(16,126,'16.jpeg'),(17,127,'17.jpeg'),(18,128,'18.jpeg'),(19,129,'19.jpeg'),(20,130,'20.jpeg'),(21,131,'21.jpeg'),(22,132,'22.jpeg'),(23,133,'23.jpeg'),(24,134,'24.jpeg'),(25,135,'25.jpeg'),(26,136,'26.jpeg'),(27,137,'27.jpeg'),(28,138,'28.0.jpeg'),(29,139,'29.0.jpeg'),(30,140,'30.0.jpeg'),(31,141,'31.0.jpeg');

/*Table structure for table `chitietphieunhap` */

DROP TABLE IF EXISTS `chitietphieunhap`;

CREATE TABLE `chitietphieunhap` (
  `Serial` int(10) unsigned NOT NULL,
  `MaGiay` int(4) NOT NULL,
  `SoLuong` int(4) NOT NULL,
  `GiaNhap` double NOT NULL,
  PRIMARY KEY  (`Serial`,`MaGiay`),
  KEY `FK_giaynhap` (`MaGiay`),
  CONSTRAINT `FK_chitietserial` FOREIGN KEY (`Serial`) REFERENCES `phieunhap` (`Serial`),
  CONSTRAINT `FK_giaynhap` FOREIGN KEY (`MaGiay`) REFERENCES `giay` (`MaGiay`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `chitietphieunhap` */

insert  into `chitietphieunhap`(`Serial`,`MaGiay`,`SoLuong`,`GiaNhap`) values (1111,111,100,360),(1111,112,100,350),(1111,113,100,360),(1111,115,110,360),(1112,115,100,200),(1112,116,100,300),(1112,117,100,380),(1112,118,100,450),(1112,141,100,990),(1113,111,110,300),(1113,120,200,970),(1113,121,100,400),(1113,122,100,100),(1114,123,100,100),(1114,124,100,150),(1114,125,100,520),(1114,126,120,200),(1115,124,100,600),(1115,127,200,480),(1115,128,100,400),(1115,129,120,500),(1116,130,130,280),(1116,131,200,480),(1117,111,110,120),(1117,115,100,210),(1118,111,110,120),(1118,132,100,550),(1119,112,110,360),(1119,119,90,120),(1120,111,110,340),(1120,115,110,470),(1120,119,100,480),(1120,120,110,350),(1120,125,90,580);

/*Table structure for table `chitietsizegiay` */

DROP TABLE IF EXISTS `chitietsizegiay`;

CREATE TABLE `chitietsizegiay` (
  `MaGiay` int(4) NOT NULL,
  `VNSize` double NOT NULL,
  PRIMARY KEY  (`MaGiay`,`VNSize`),
  KEY `FK_chitietsize` (`VNSize`),
  CONSTRAINT `FK_chitietsize` FOREIGN KEY (`VNSize`) REFERENCES `sizegiay` (`VNSize`),
  CONSTRAINT `FK_giay` FOREIGN KEY (`MaGiay`) REFERENCES `giay` (`MaGiay`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `chitietsizegiay` */

insert  into `chitietsizegiay`(`MaGiay`,`VNSize`) values (111,39),(112,39),(132,39),(135,39),(136,39),(137,39),(138,39),(139,39),(120,39.5),(132,39.5),(138,39.5),(139,39.5),(111,40),(132,40),(139,40),(141,40),(111,40.5),(111,41),(112,41.5),(132,41.5),(111,42),(140,42);

/*Table structure for table `giagiay` */

DROP TABLE IF EXISTS `giagiay`;

CREATE TABLE `giagiay` (
  `MaGiay` int(4) NOT NULL,
  `GiaGiay` double NOT NULL,
  PRIMARY KEY  (`MaGiay`,`GiaGiay`),
  CONSTRAINT `FK_giagiay` FOREIGN KEY (`MaGiay`) REFERENCES `giay` (`MaGiay`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `giagiay` */

insert  into `giagiay`(`MaGiay`,`GiaGiay`) values (111,370),(111,380),(111,400),(112,365),(113,400),(113,420),(114,180),(115,240),(116,320),(117,400),(118,500),(119,140),(119,160),(120,1000),(121,420),(122,120),(123,1200),(124,200),(125,600),(126,300),(127,500),(128,450),(129,600),(130,300),(131,500),(132,420),(132,560),(132,580),(133,380),(134,1200),(135,265),(136,300),(137,495),(138,620),(138,640),(139,16000),(140,1800),(141,3000);

/*Table structure for table `giay` */

DROP TABLE IF EXISTS `giay`;

CREATE TABLE `giay` (
  `MaGiay` int(4) NOT NULL,
  `TenGiay` varchar(100) collate utf8_unicode_ci NOT NULL,
  `MaHang` int(4) NOT NULL,
  `MaLoai` int(4) NOT NULL,
  `MaNuoc` int(4) NOT NULL,
  `TinhTrang` int(2) NOT NULL default '1',
  PRIMARY KEY  (`MaGiay`),
  KEY `FK_HangGiay` (`MaHang`),
  KEY `FK_LoaiGiay` (`MaLoai`),
  KEY `FK_nguongoc` (`MaNuoc`),
  CONSTRAINT `FK_HangGiay` FOREIGN KEY (`MaHang`) REFERENCES `hanggiay` (`MaHang`),
  CONSTRAINT `FK_LoaiGiay` FOREIGN KEY (`MaLoai`) REFERENCES `loaigiay` (`MaLoai`),
  CONSTRAINT `FK_nguongoc` FOREIGN KEY (`MaNuoc`) REFERENCES `nguongoc` (`MaNuoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `giay` */

insert  into `giay`(`MaGiay`,`TenGiay`,`MaHang`,`MaLoai`,`MaNuoc`,`TinhTrang`) values (111,'Yeezy 350',221,312,411,1),(112,'Yeezy 350 V.1',221,311,411,1),(113,'Yeezy 350 V.2',221,313,411,1),(114,'Yeezy 350',221,313,412,1),(115,'Air Jordan',225,312,411,1),(116,'Yeezy 350',221,313,413,1),(117,'Yeezy 500',221,313,413,1),(118,'Yeezy 700',221,313,413,1),(119,'PlayStation x PG',222,312,411,1),(120,'Jordan 1s x Off White',225,312,413,1),(121,'Air Jordan 12',225,312,411,1),(122,'Nike Air Force 1',222,313,416,1),(123,'Air Jordan 1s x Off White',225,312,411,1),(124,'Air Jordan 3s',225,312,411,1),(125,'Nike Air Force One x Off White',222,313,418,1),(126,'Ultra Boost',221,311,412,1),(127,'Yeezy 500',221,313,417,1),(128,'Air Jordan 4s x Travis Scott',225,312,411,1),(129,'OffWhite x Razer x Nike',222,313,413,1),(130,'Pharell x NMD Human Race',221,311,411,1),(131,'OffWhite x Razer x Nike',222,313,413,1),(132,'Air Jordan 1s',222,312,412,1),(133,'Nike Air Mag',222,313,412,1),(134,'3D Runner',221,311,411,1),(135,'Yeezy 500 Blush',221,311,411,1),(136,'NMD_R1 NYC',221,311,411,1),(137,'OFF-WHITE x Air Presto',221,311,411,1),(138,'Yeezy Boost 350 V2 Oreo',221,311,411,1),(139,'Air Jordan 3/8 Retro Pack \'Kobe Bryant\'',224,312,419,1),(140,'SoleFly x Air Jordan 1 Retro High OG \'Art Basel\'',222,313,412,1),(141,'Air Yeezy Blink',221,311,411,1);

/*Table structure for table `hanggiay` */

DROP TABLE IF EXISTS `hanggiay`;

CREATE TABLE `hanggiay` (
  `MaHang` int(4) NOT NULL,
  `TenHang` varchar(100) collate utf8_unicode_ci NOT NULL,
  `MoTa` varchar(1000) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`MaHang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `hanggiay` */

insert  into `hanggiay`(`MaHang`,`TenHang`,`MoTa`) values (221,'Adidas','Adidas ltd AG is a German sports equipment manufacturer, a member of the Adidas Group, including the Reebok Sporting Goods Company, Taylormade Golf Company, Maxfli Golf Ball Company and Adidas Golf. Adidas is the second largest manufacturer of sports equipment in the world.'),(222,'Nike','Nike, Inc. is a major US publicly traded sportswear and clothing supplier. Headquartered in Beaverton'),(223,'Puma','Puma SE là một công ty đa quốc gia lớn của Đức chuyên sản xuất giày và các dụng cụ thể thao khác có trụ sở tại Herzogenaurach, Bavaria, Đức. Công ty được thành lập năm 1924 bởi Adolf và Rudolf Dassler với tên gọi ban đầu Gebrüder Dassler Schuhfabrik'),(224,'Balenciaga','Balenciaga là thương hiệu thời trang cao cấp của Tây Ban Nha do nhà thiết kế Cristóbal Balenciaga thành lập năm 1919. Công ty hiện thuộc tập đoàn đa quốc gia Kering của Pháp.'),(225,'Jordan Air','Air Jordan is a brand of basketball shoes, athletic, and casual clothing produced by Nike. It was created for former professional basketball player Michael Jordan. The original Air Jordan I sneakers were produced exclusively for Jordan in early 1984, and released to the public in late 1984. The shoes were designed for Nike by Peter Moore, Tinker Hatfield, and Bruce Kilgore.'),(226,'Lebron','A famous shoe\'s brand of Lebron James'),(227,'RickOwens','Richard Saturnino Owens, better known as Rick Owens, is an American fashion designer from Porterville, California.'),(228,'Converse','Converse is an American shoe company that specializes in skateboarding, casual footwear and clothing. Founded in 1908');

/*Table structure for table `loaigiay` */

DROP TABLE IF EXISTS `loaigiay`;

CREATE TABLE `loaigiay` (
  `MaLoai` int(4) NOT NULL,
  `TenLoai` varchar(100) collate utf8_unicode_ci NOT NULL,
  `MoTa` varchar(1000) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`MaLoai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `loaigiay` */

insert  into `loaigiay`(`MaLoai`,`TenLoai`,`MoTa`) values (311,'Running','Use for running'),(312,'Basketball','Use for playing basket'),(313,'Sneaker','Use daily'),(314,'Luxury','High-end product');

/*Table structure for table `loaitaikhoan` */

DROP TABLE IF EXISTS `loaitaikhoan`;

CREATE TABLE `loaitaikhoan` (
  `MaLoai` int(4) NOT NULL,
  `TenLoai` varchar(255) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`MaLoai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `loaitaikhoan` */

insert  into `loaitaikhoan`(`MaLoai`,`TenLoai`) values (0,'Staff'),(1,'Admin');

/*Table structure for table `maugiay` */

DROP TABLE IF EXISTS `maugiay`;

CREATE TABLE `maugiay` (
  `MaGiay` int(4) NOT NULL,
  `MauGiay` varchar(100) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`MaGiay`,`MauGiay`),
  CONSTRAINT `FK_maugiay` FOREIGN KEY (`MaGiay`) REFERENCES `giay` (`MaGiay`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `maugiay` */

insert  into `maugiay`(`MaGiay`,`MauGiay`) values (111,'Pink'),(111,'Zebra'),(112,'Cream White'),(112,'Gray'),(113,'Beluga'),(113,'Blue'),(114,'Butter'),(115,'Concord'),(116,'SeaSame'),(117,'(Salt'),(118,'Mauve'),(119,'Gray'),(119,'Woft Grey'),(120,'NYC'),(121,'Gym Red'),(122,'White'),(123,'Chicago Bulls'),(124,'Cement'),(125,'White'),(126,'Triple White'),(127,'Black'),(128,'White'),(129,'Hallows Eve'),(130,'Inspiration Pack'),(131,'Grim Reaper'),(132,'Black'),(132,'White'),(133,'Grey'),(133,'Grey White'),(134,'Black'),(134,'Blue'),(135,'Grey'),(136,'Black'),(137,'White'),(138,'Black'),(138,'Blue'),(139,'White'),(140,'Orange'),(140,'White'),(141,'Black');

/*Table structure for table `nguongoc` */

DROP TABLE IF EXISTS `nguongoc`;

CREATE TABLE `nguongoc` (
  `MaNuoc` int(4) NOT NULL,
  `TenNuoc` varchar(100) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`MaNuoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `nguongoc` */

insert  into `nguongoc`(`MaNuoc`,`TenNuoc`) values (411,'American'),(412,'Endland'),(413,'Canada'),(414,'Singapore'),(415,'China'),(416,'VietNam'),(417,'Korean'),(418,'Japan'),(419,'France');

/*Table structure for table `nhacungcap` */

DROP TABLE IF EXISTS `nhacungcap`;

CREATE TABLE `nhacungcap` (
  `MaNCC` int(4) NOT NULL,
  `TenNCC` varchar(100) collate utf8_unicode_ci NOT NULL,
  `SoDT` varchar(13) collate utf8_unicode_ci default NULL,
  `DiaChi` varchar(100) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`MaNCC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `nhacungcap` */

insert  into `nhacungcap`(`MaNCC`,`TenNCC`,`SoDT`,`DiaChi`) values (511,'Sole Station','01234546','Ho Chi Minh'),(512,'Goat','02412312','USA'),(513,'Flight Club','02317281','U.K'),(514,'Stock X','012836383','USA'),(515,'Undefeated','028176366','Japan');

/*Table structure for table `phieunhap` */

DROP TABLE IF EXISTS `phieunhap`;

CREATE TABLE `phieunhap` (
  `Serial` int(10) unsigned NOT NULL auto_increment,
  `MaNCC` int(4) NOT NULL,
  `NgayNhap` date NOT NULL,
  PRIMARY KEY  (`Serial`),
  KEY `FK_nhacungcap` (`MaNCC`),
  CONSTRAINT `FK_nhacungcap` FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`MaNCC`)
) ENGINE=InnoDB AUTO_INCREMENT=1124 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `phieunhap` */

insert  into `phieunhap`(`Serial`,`MaNCC`,`NgayNhap`) values (1111,511,'2018-01-01'),(1112,512,'2018-01-05'),(1113,513,'2018-07-05'),(1114,514,'2018-07-10'),(1115,515,'2018-08-02'),(1116,511,'2018-09-01'),(1117,511,'2018-09-03'),(1118,511,'2018-08-09'),(1119,513,'2018-09-11'),(1120,512,'2018-10-20'),(1121,513,'2018-12-05'),(1122,514,'2018-12-07'),(1123,511,'2018-12-10');

/*Table structure for table `sizegiay` */

DROP TABLE IF EXISTS `sizegiay`;

CREATE TABLE `sizegiay` (
  `VNSize` double NOT NULL,
  `UKSize` double NOT NULL,
  `USSize` double NOT NULL,
  PRIMARY KEY  (`VNSize`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sizegiay` */

insert  into `sizegiay`(`VNSize`,`UKSize`,`USSize`) values (39,5.5,6),(39.5,6,6.5),(40,6.5,7),(40.5,7,7.5),(41,7.5,8),(41.5,8,8.5),(42,8.5,9);

/*Table structure for table `taikhoan` */

DROP TABLE IF EXISTS `taikhoan`;

CREATE TABLE `taikhoan` (
  `Username` varchar(255) collate utf8_unicode_ci NOT NULL,
  `Password` varchar(255) collate utf8_unicode_ci NOT NULL,
  `MaLoai` int(4) NOT NULL,
  `TinhTrang` int(2) NOT NULL default '1',
  PRIMARY KEY  (`Username`),
  KEY `FK_taikhoan` (`MaLoai`),
  CONSTRAINT `FK_taikhoan` FOREIGN KEY (`MaLoai`) REFERENCES `loaitaikhoan` (`MaLoai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `taikhoan` */

insert  into `taikhoan`(`Username`,`Password`,`MaLoai`,`TinhTrang`) values ('anhduc','789',1,1),('thanhthe','456',1,1),('trungkien','123',1,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
