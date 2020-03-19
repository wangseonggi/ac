/*
SQLyog v10.2 
MySQL - 5.5.5-10.2.14-MariaDB-log : Database - ym_online
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ym_online` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ym_online`;

/*Table structure for table `az_settlement_household` */

DROP TABLE IF EXISTS `az_settlement_household`;

CREATE TABLE `az_settlement_household` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键值',
  `azdbh` varchar(20) DEFAULT NULL COMMENT '安置点编号',
  `jtbh` varchar(20) DEFAULT NULL COMMENT '家庭编号',
  `hz` varchar(20) DEFAULT NULL COMMENT '户主',
  `ldfh` varchar(40) DEFAULT NULL COMMENT '楼栋房号',
  `ndfqrw` varchar(10) DEFAULT NULL COMMENT '年度搬迁任务',
  `bqlx` varchar(20) DEFAULT NULL COMMENT '搬迁类型：1，建档立卡贫困户；2，同步搬迁户',
  `qcdsj` varchar(20) DEFAULT NULL COMMENT '迁出底市级',
  `qcdxj` varchar(20) DEFAULT NULL COMMENT '迁出地县级',
  `qcdxxdz` varchar(80) DEFAULT NULL COMMENT '迁出地详细地址',
  `qcdlx` char(4) DEFAULT NULL COMMENT '迁出地类型：1，一类；2，二类；3，三类；4，四类',
  `jtsyhrk` int(11) DEFAULT NULL COMMENT '家庭受益户人口',
  `zfmj` float DEFAULT NULL COMMENT '住房面积',
  `zczj` int(11) DEFAULT NULL COMMENT '自筹资金',
  `bqrzsj` datetime DEFAULT NULL COMMENT '搬迁入住时间',
  `sjrzsj` datetime DEFAULT NULL COMMENT '实际入住时间',
  `sfsjrzmln` char(2) DEFAULT NULL COMMENT '是否实际入住满两年',
  `yyzf` varchar(20) DEFAULT NULL COMMENT '原有住房',
  `yzfmj` float DEFAULT NULL COMMENT '原住房面积',
  `ccjf` varchar(20) DEFAULT NULL COMMENT '拆除旧房',
  `bhzfzl` varchar(20) DEFAULT NULL COMMENT '保护住房种类',
  `ccsj` varchar(10) DEFAULT NULL COMMENT '拆除时间',
  `ccjfmj` float DEFAULT NULL COMMENT '拆除旧房面积',
  `dxcfjl` varchar(20) DEFAULT NULL COMMENT '兑现拆房奖励',
  `fkfl` varchar(20) DEFAULT NULL COMMENT '复垦复绿',
  `fkflmj` float DEFAULT NULL COMMENT '复垦复绿面积',
  `cyfcxm` varchar(30) DEFAULT NULL COMMENT '产业扶持项目',
  `nnhdcyfczj` int(11) DEFAULT NULL COMMENT '年内获得产业扶持资金',
  `tpqk` varchar(20) DEFAULT NULL COMMENT '脱贫情况',
  `hkqy` char(2) DEFAULT NULL COMMENT '户口迁移',
  `fczbl` char(2) DEFAULT NULL COMMENT '房子证办理',
  `lxdh` varchar(20) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
