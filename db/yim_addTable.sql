/*
SQLyog v10.2 
MySQL - 5.5.5-10.2.14-MariaDB-log : Database - ym
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ym` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ym`;

/*Table structure for table `ym_family_base` */

DROP TABLE IF EXISTS `ym_family_base`;

CREATE TABLE `ym_family_base` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city` int(10) unsigned NOT NULL COMMENT '市',
  `county` int(10) unsigned NOT NULL COMMENT '县（市、区）',
  `town` int(10) unsigned NOT NULL COMMENT '镇（乡、街道）',
  `avillage` varchar(20) NOT NULL DEFAULT '' COMMENT '行政村',
  `nvillage` varchar(20) NOT NULL DEFAULT '' COMMENT '自然村（屯）',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '联系电话',
  `dpst_bk` int(10) unsigned NOT NULL COMMENT '开户银行',
  `bk_num` varchar(20) NOT NULL DEFAULT '' COMMENT '银行卡号',
  `family_attr` smallint(3) unsigned NOT NULL DEFAULT 0 COMMENT '贫困户属性',
  `poverty_relief_tm` smallint(4) unsigned NOT NULL DEFAULT 0 COMMENT '计划脱贫年度',
  `poverty_rtn_tm` smallint(4) unsigned NOT NULL DEFAULT 0 COMMENT '返贫年度',
  `poverty_rtn_rsn` varchar(20) NOT NULL DEFAULT '' COMMENT '返贫原因',
  `is_martyrsfamily` smallint(1) unsigned NOT NULL DEFAULT 0 COMMENT '是否军烈属（1是0否）',
  `is_relocated` smallint(1) unsigned NOT NULL DEFAULT 1 COMMENT '是否搬迁户（1是0否）',
  `relocated_way` varchar(20) NOT NULL DEFAULT '' COMMENT '搬迁方式',
  `relocated_addr` varchar(80) NOT NULL DEFAULT '' COMMENT '搬迁地址',
  `add_time` datetime DEFAULT NULL COMMENT '录入日期',
  `update_time` datetime DEFAULT NULL COMMENT '修改日期',
  `uid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '录入人ID',
  `poverty_causes1` tinyint(2) unsigned NOT NULL DEFAULT 0 COMMENT '致贫主因1',
  `poverty_causes2` tinyint(2) unsigned NOT NULL DEFAULT 0 COMMENT '致贫主因1',
  `poverty_causes3` tinyint(2) unsigned NOT NULL DEFAULT 0 COMMENT '致贫主因1',
  `household_num_Jan` tinyint(2) unsigned NOT NULL DEFAULT 0 COMMENT '年初家庭人口数',
  `household_num_Dec` tinyint(2) unsigned NOT NULL DEFAULT 0 COMMENT '年末家庭人口数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8;

/*Data for the table `ym_family_base` */

insert  into `ym_family_base`(`id`,`city`,`county`,`town`,`avillage`,`nvillage`,`tel`,`dpst_bk`,`bk_num`,`family_attr`,`poverty_relief_tm`,`poverty_rtn_tm`,`poverty_rtn_rsn`,`is_martyrsfamily`,`is_relocated`,`relocated_way`,`relocated_addr`,`add_time`,`update_time`,`uid`,`poverty_causes1`,`poverty_causes2`,`poverty_causes3`,`household_num_Jan`,`household_num_Dec`) values (191,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 02:19:28',NULL,0,0,0,0,0,0),(193,2,9,15,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址222','2019-11-17 08:23:22',NULL,0,0,0,0,0,0),(194,1,3,19,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址222','2019-11-17 12:50:15',NULL,0,0,0,0,0,0),(195,2,9,16,'村1','村2','13222225555',12,'9291010102919',3,2024,2021,'没有钱啊',1,0,'搬迁凡是134','我是地址22333','2019-11-17 14:01:00',NULL,0,0,0,0,0,0),(196,1,3,20,'测试行政村22','测试自然村屯11','13222221111',1231,'0889',1,2020,2018,'因学',1,1,'测试搬迁方式22','测试搬迁地址22','2019-11-17 17:02:19',NULL,0,0,0,0,0,0),(197,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 17:05:10',NULL,0,0,0,0,0,0),(198,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 17:06:28',NULL,0,0,0,0,0,0),(199,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 17:10:28',NULL,0,0,0,0,0,0),(200,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 17:12:07',NULL,0,0,0,0,0,0),(201,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 17:19:18',NULL,0,0,0,0,0,0),(202,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 17:21:32',NULL,0,0,0,0,0,0),(203,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 17:23:34',NULL,0,0,0,0,0,0),(204,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 17:27:34',NULL,0,0,0,0,0,0),(205,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 17:29:55',NULL,0,0,0,0,0,0),(206,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 17:31:39',NULL,0,0,0,0,0,0),(207,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 17:39:54',NULL,0,0,0,0,0,0),(208,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 17:50:30',NULL,0,0,0,0,0,0),(209,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 17:50:44',NULL,0,0,0,0,0,0),(210,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 17:54:50',NULL,0,0,0,0,0,0),(211,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 17:56:10',NULL,0,0,0,0,0,0),(212,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:00:28',NULL,0,0,0,0,0,0),(213,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:03:42',NULL,0,0,0,0,0,0),(214,1,3,19,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:05:53',NULL,0,0,0,0,0,0),(215,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:07:01',NULL,0,0,0,0,0,0),(216,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:07:40',NULL,0,0,0,0,0,0),(217,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:10:03',NULL,0,0,0,0,0,0),(218,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:11:10',NULL,0,0,0,0,0,0),(219,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:12:09',NULL,0,0,0,0,0,0),(220,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:13:32',NULL,0,0,0,0,0,0),(221,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:14:18',NULL,0,0,0,0,0,0),(222,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:14:55',NULL,0,0,0,0,0,0),(223,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:15:41',NULL,0,0,0,0,0,0),(224,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:16:28',NULL,0,0,0,0,0,0),(225,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:17:08',NULL,0,0,0,0,0,0),(226,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:19:00',NULL,0,0,0,0,0,0),(227,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:19:25',NULL,0,0,0,0,0,0),(228,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:20:40',NULL,0,0,0,0,0,0),(229,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:22:44',NULL,0,0,0,0,0,0),(230,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:23:59',NULL,0,0,0,0,0,0),(231,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:24:59',NULL,0,0,0,0,0,0),(232,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:27:01',NULL,0,0,0,0,0,0),(233,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:27:56',NULL,0,0,0,0,0,0),(236,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:34:15',NULL,0,0,0,0,0,0),(237,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:35:09',NULL,0,0,0,0,0,0),(238,2,9,16,'测试行政村','测试自然村屯','13222221111',111,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 18:36:10',NULL,0,0,0,0,0,0),(239,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 20:14:24',NULL,0,0,0,0,0,0),(240,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 20:32:55',NULL,0,0,0,0,0,0),(241,1,3,20,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 20:53:23',NULL,0,0,0,0,0,0),(242,2,8,13,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 21:16:47',NULL,0,0,0,0,0,0),(243,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 21:40:17',NULL,0,0,0,0,0,0),(244,1,3,19,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 21:40:17',NULL,0,0,0,0,0,0),(245,1,0,0,'测试行政村','测试自然村屯','13222221111',0,'',1,2020,2018,'因学',0,1,'测试搬迁方式','测试搬迁地址','2019-11-17 22:22:30',NULL,0,0,0,0,0,0);

/*Table structure for table `ym_family_base_addition` */

DROP TABLE IF EXISTS `ym_family_base_addition`;

CREATE TABLE `ym_family_base_addition` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` int(10) unsigned NOT NULL,
  `poverty_causes1` tinyint(2) unsigned NOT NULL DEFAULT 0,
  `poverty_causes2` tinyint(2) unsigned NOT NULL DEFAULT 0,
  `poverty_causes3` tinyint(2) unsigned NOT NULL DEFAULT 0,
  `household_num_Jan` tinyint(2) unsigned NOT NULL DEFAULT 0,
  `household_num_Dec` tinyint(2) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

/*Data for the table `ym_family_base_addition` */

insert  into `ym_family_base_addition`(`id`,`fid`,`poverty_causes1`,`poverty_causes2`,`poverty_causes3`,`household_num_Jan`,`household_num_Dec`) values (19,207,3,2,5,1,1),(20,241,4,2,0,1,3),(23,244,8,7,9,1,3);

/*Table structure for table `ym_family_base_condition` */

DROP TABLE IF EXISTS `ym_family_base_condition`;

CREATE TABLE `ym_family_base_condition` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` int(10) unsigned NOT NULL DEFAULT 0,
  `area_cultivated` decimal(6,2) unsigned NOT NULL DEFAULT 0.00 COMMENT '耕地面积（亩）',
  `area_woodland` decimal(6,2) unsigned NOT NULL DEFAULT 0.00 COMMENT '林地面积（亩）',
  `area_turninto` decimal(6,2) unsigned NOT NULL DEFAULT 0.00 COMMENT '退耕还林面积（亩）',
  `area_fruit` decimal(6,2) unsigned NOT NULL DEFAULT 0.00 COMMENT '林果面积（亩）',
  `area_foragegrass` decimal(6,2) unsigned NOT NULL DEFAULT 0.00 COMMENT '牧草地面积（亩)',
  `area_waters` decimal(6,2) unsigned NOT NULL DEFAULT 0.00 COMMENT '水面面积（亩）',
  `is_cooperative` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '是否加入农民专业合作社',
  `get_leaded` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '是否有龙头企业带动',
  `get_pioneer` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '是否有创业致富带头人带动',
  `get_electric` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '是否通生活用电',
  `get_television` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '是否通广播电视',
  `get_potablewater` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '是否解决安全饮用水',
  `get_toilet` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '是否有卫生厕所',
  `distance_mainroad` decimal(5,2) unsigned NOT NULL DEFAULT 0.00 COMMENT '与村主干路距离（公里）',
  `type_road` tinyint(2) unsigned NOT NULL DEFAULT 0 COMMENT '入户路类型',
  `area_housing` decimal(5,2) unsigned NOT NULL DEFAULT 0.00 COMMENT '住房面积（平方米）',
  `is_dilapidated` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '是否危房',
  `level_dilapidated` tinyint(2) unsigned DEFAULT 0 COMMENT '危房等级',
  `year_reform` smallint(6) unsigned DEFAULT 0 COMMENT '危改年度',
  `type_fuel` tinyint(2) unsigned NOT NULL DEFAULT 0 COMMENT '主要燃料类型',
  `type_fuel_other` varchar(20) NOT NULL DEFAULT '' COMMENT '具体燃料名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='生产生活条件';

/*Data for the table `ym_family_base_condition` */

insert  into `ym_family_base_condition`(`id`,`fid`,`area_cultivated`,`area_woodland`,`area_turninto`,`area_fruit`,`area_foragegrass`,`area_waters`,`is_cooperative`,`get_leaded`,`get_pioneer`,`get_electric`,`get_television`,`get_potablewater`,`get_toilet`,`distance_mainroad`,`type_road`,`area_housing`,`is_dilapidated`,`level_dilapidated`,`year_reform`,`type_fuel`,`type_fuel_other`) values (22,207,'1.00','3.00','4.00','5.00','5.00','2.00',0,0,0,0,0,0,0,'1.00',0,'2.00',1,0,205,0,''),(23,245,'1.10','2.00','3.00','4.00','5.00','6.00',1,1,1,1,0,1,1,'11.00',1,'22.00',1,0,2015,0,'');

/*Table structure for table `ym_family_base_member` */

DROP TABLE IF EXISTS `ym_family_base_member`;

CREATE TABLE `ym_family_base_member` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(10) unsigned NOT NULL COMMENT '家庭id',
  `member_name` varchar(20) NOT NULL DEFAULT '' COMMENT '姓名',
  `sex` tinyint(1) NOT NULL DEFAULT 1 COMMENT '性别1男0女',
  `id_num` varchar(25) NOT NULL DEFAULT '' COMMENT '证件号码',
  `relation` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '与户主关系',
  `nation` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '民族',
  `political_exp` tinyint(2) unsigned NOT NULL DEFAULT 0 COMMENT '政治面貌',
  `level_edu` tinyint(2) unsigned NOT NULL DEFAULT 0 COMMENT '文化程度',
  `school_status` tinyint(2) unsigned NOT NULL DEFAULT 0 COMMENT '在校生状况',
  `stopedu_rsn` tinyint(2) unsigned NOT NULL DEFAULT 0 COMMENT '失学原因',
  `healthy_status` tinyint(2) unsigned NOT NULL DEFAULT 0 COMMENT '健康状况',
  `labor_skill` tinyint(2) unsigned NOT NULL DEFAULT 0 COMMENT '劳动技能',
  `can_mandarin` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '是否会讲普通话',
  `medical_insurance` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '是否参加城镇居民基本医疗保险',
  `business_insurance` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '是否参加商业补充医疗保险',
  `basic_allowances` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '是否享受农村居民最低生活保障',
  `endowment_insurance` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '是否参加城乡居民基本养老保险',
  `accident_insurance` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '是否享受人身意外保险补贴',
  `tel` varchar(15) NOT NULL DEFAULT '' COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

/*Data for the table `ym_family_base_member` */


/*Table structure for table `ym_region` */

DROP TABLE IF EXISTS `ym_region`;

CREATE TABLE `ym_region` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '上级ID',
  `name` varchar(40) NOT NULL DEFAULT '' COMMENT '行政区划名称',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '行政区划代码',
  `enable` smallint(2) unsigned NOT NULL DEFAULT 1 COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='行政区划表';

/*Data for the table `ym_region` */


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
