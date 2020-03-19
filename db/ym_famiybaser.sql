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
CREATE DATABASE /*!32312 IF NOT EXISTS*/ym /*!40100 DEFAULT CHARACTER SET utf8 */;

USE ym;

/*Table structure for table ym_family_base */

DROP TABLE IF EXISTS ym_family_base;

CREATE TABLE ym_family_base (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  city int(10) unsigned NOT NULL COMMENT '市',
  county int(10) unsigned NOT NULL COMMENT '县（市、区）',
  town int(10) unsigned NOT NULL COMMENT '镇（乡、街道）',
  avillage varchar(20) NOT NULL DEFAULT '' COMMENT '行政村',
  nvillage varchar(20) NOT NULL DEFAULT '' COMMENT '自然村（屯）',
  tel varchar(20) NOT NULL DEFAULT '' COMMENT '联系电话',
  dpst_bk int(10) unsigned NOT NULL COMMENT '开户银行',
  bk_num varchar(20) NOT NULL DEFAULT '' COMMENT '银行卡号',
  family_attr smallint(3) unsigned NOT NULL DEFAULT 0 COMMENT '贫困户属性',
  poverty_relief_tm smallint(4) unsigned NOT NULL DEFAULT 0 COMMENT '计划脱贫年度',
  poverty_rtn_tm smallint(4) unsigned NOT NULL DEFAULT 0 COMMENT '返贫年度',
  poverty_rtn_rsn varchar(20) NOT NULL DEFAULT '' COMMENT '返贫原因',
  is_martyrsfamily smallint(1) unsigned NOT NULL DEFAULT 0 COMMENT '是否军烈属（1是0否）',
  is_relocated smallint(1) unsigned NOT NULL DEFAULT 1 COMMENT '是否搬迁户（1是0否）',
  relocated_way varchar(20) NOT NULL DEFAULT '' COMMENT '搬迁方式',
  relocated_addr varchar(80) NOT NULL DEFAULT '' COMMENT '搬迁地址',
  add_time datetime DEFAULT NULL COMMENT '录入日期',
  update_time datetime DEFAULT NULL COMMENT '修改日期',
  uid int(10) unsigned NOT NULL DEFAULT 0 COMMENT '录入人ID',
  poverty_causes1 tinyint(2) unsigned NOT NULL DEFAULT 0 COMMENT '致贫主因1',
  poverty_causes2 tinyint(2) unsigned NOT NULL DEFAULT 0 COMMENT '致贫主因1',
  poverty_causes3 tinyint(2) unsigned NOT NULL DEFAULT 0 COMMENT '致贫主因1',
  household_num_Jan tinyint(2) unsigned NOT NULL DEFAULT 0 COMMENT '年初家庭人口数',
  household_num_Dec tinyint(2) unsigned NOT NULL DEFAULT 0 COMMENT '年末家庭人口数',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


id,city,county,town,avillage,nvillage,tel,dpst_bk,bk_num,family_attr,poverty_relief_tm,poverty_rtn_tm,poverty_rtn_rsn,is_martyrsfamily,is_relocated,relocated_way,relocated_addr,update_time,poverty_causes1,poverty_causes2,poverty_causes3,household_num_Jan,household_num_Dec