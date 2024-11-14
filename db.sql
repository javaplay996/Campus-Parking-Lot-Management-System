/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoyuantingchechang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoyuantingchechang` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoyuantingchechang`;

/*Table structure for table `chewei` */

DROP TABLE IF EXISTS `chewei`;

CREATE TABLE `chewei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chewei_bianhao` varchar(200) DEFAULT NULL COMMENT '车位编号 Search111',
  `chewei_name` varchar(200) DEFAULT NULL COMMENT '车位名称 Search111',
  `tingchequyu_id` int(200) DEFAULT NULL COMMENT '所属区域',
  `chewei_content` text COMMENT '详情信息',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='车位信息';

/*Data for the table `chewei` */

insert  into `chewei`(`id`,`chewei_bianhao`,`chewei_name`,`tingchequyu_id`,`chewei_content`,`insert_time`,`create_time`) values (1,'车位编号1','车位名称1',1,'详情信息1\r\n','2021-05-05 13:53:15','2021-05-05 13:53:15');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-05-05 11:55:26'),(2,'sex_types','性别',2,'女',NULL,'2021-05-05 11:55:26'),(3,'news_types','新闻类型名称',1,'新闻类型1',NULL,'2021-05-05 11:55:26'),(4,'news_types','新闻类型名称',2,'新闻类型2',NULL,'2021-05-05 11:55:26');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型 Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (3,'新闻1',1,'http://localhost:8080/xiaoyuantingchechang/file/download?fileName=1620215719984.jpg','2021-05-05 19:55:23','新闻详情1\r\n','2021-05-05 19:55:23'),(4,'新闻2',2,'http://localhost:8080/xiaoyuantingchechang/file/download?fileName=1620215729873.jpg','2021-05-05 19:55:31','新闻详情2\r\n','2021-05-05 19:55:31');

/*Table structure for table `tingche` */

DROP TABLE IF EXISTS `tingche`;

CREATE TABLE `tingche` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '停车教师',
  `tingchequyu_id` int(200) DEFAULT NULL COMMENT '停车区域 ',
  `tingche_paihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `tingche_chexing` varchar(200) DEFAULT NULL COMMENT '车型',
  `tingche_time` timestamp NULL DEFAULT NULL COMMENT '停车时间 Search111',
  `lixiao_time` timestamp NULL DEFAULT NULL COMMENT '离校时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='停车信息';

/*Data for the table `tingche` */

insert  into `tingche`(`id`,`yonghu_id`,`tingchequyu_id`,`tingche_paihao`,`tingche_chexing`,`tingche_time`,`lixiao_time`,`insert_time`,`create_time`) values (4,1,1,'123','123','2021-05-05 19:50:00','2021-05-05 20:17:37','2021-05-05 19:50:00','2021-05-05 19:50:00'),(5,1,1,' 车牌号1','车型1',NULL,NULL,'2021-05-05 20:14:04','2021-05-05 20:14:04');

/*Table structure for table `tingchequyu` */

DROP TABLE IF EXISTS `tingchequyu`;

CREATE TABLE `tingchequyu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tingchequyu_name` varchar(200) DEFAULT NULL COMMENT '区域名称 Search111',
  `tingchequyu_number` int(200) DEFAULT NULL COMMENT '车位数量 Search111',
  `tingchequyu_content` text COMMENT '详情信息',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='停车区域';

/*Data for the table `tingchequyu` */

insert  into `tingchequyu`(`id`,`tingchequyu_name`,`tingchequyu_number`,`tingchequyu_content`,`insert_time`,`create_time`) values (1,'区域1',9,'详情信息1\r\n','2021-05-05 13:52:00','2021-05-05 13:52:00'),(2,'区域2',20,'详情信息2\r\n','2021-05-05 13:52:10','2021-05-05 13:52:10'),(3,'区域3',29,'详情信息3\r\n','2021-05-05 13:52:38','2021-05-05 13:52:38');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','6nvl5z0u5nje70jdcqepaarcvsu37x6c','2021-05-05 13:41:54','2021-05-05 21:12:48'),(2,3,'123','yonghu','用户','f44x6tdym5j5r3i47dy9b137z3c0p0eo','2021-05-05 14:36:53','2021-05-05 15:36:54'),(3,1,'111','yonghu','用户','gujnjb6whmvg0cjboiu61yj25lm08b00','2021-05-05 19:45:48','2021-05-05 21:09:16'),(4,1,'111','yonghu','教师','b7crzzjg23mw3tdk4ccq3n6h70on4q67','2021-05-05 20:13:35','2021-05-05 21:13:36');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '教师姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_banji_zhuanye` varchar(200) DEFAULT NULL COMMENT '专业班级',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_email`,`yonghu_banji_zhuanye`,`yonghu_photo`,`create_time`) values (1,'111','123456','教师1',2,'410882200111111111','17711111111','11111@qq.com','专业班级1','http://localhost:8080/xiaoyuantingchechang/file/download?fileName=1620193837163.jpg','2021-05-05 13:50:38'),(2,'222','123456','教师2',2,'410882200111112222','17711111112','222@qq,com','专业班级2','http://localhost:8080/xiaoyuantingchechang/file/download?fileName=1620193862753.jpg','2021-05-05 13:51:04'),(4,'333','123456','教师3',2,'410882200011214413','17796688973','22222@qq.com',NULL,'http://localhost:8080/xiaoyuantingchechang/file/download?fileName=1620216300510.jpg','2021-05-05 20:05:16');

/*Table structure for table `yuyue` */

DROP TABLE IF EXISTS `yuyue`;

CREATE TABLE `yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '预约教师 Search111',
  `tingchequyu_id` int(200) DEFAULT NULL COMMENT '预约区域',
  `yuyue_types` int(255) DEFAULT NULL COMMENT '预约状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='车位预约';

/*Data for the table `yuyue` */

insert  into `yuyue`(`id`,`yonghu_id`,`tingchequyu_id`,`yuyue_types`,`insert_time`,`create_time`) values (21,1,3,3,'2021-05-05 20:13:39','2021-05-05 20:13:39'),(22,1,2,2,'2021-05-05 20:13:40','2021-05-05 20:13:40'),(23,1,1,1,'2021-05-05 20:13:41','2021-05-05 20:13:41');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
