package com.example.ac.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

/**
 * 家庭基本信息DO
 */
@Data
@Entity
public class JtjbxxDO {

    private static final long serialVersionUID = 1L;

    @Id
    private int id;
    private int shi;                    // 市
    private int xian;                   // 县（市、区）
    private int zhen;                   // 镇（乡、街道）
    private String xzc;                 // 行政村
    private String zrct;                // 自然村（屯）
    private String lxdh;                // 联系电话
    private int khyh;                   // 开户银行
    private String yhkh;                // 银行卡号
    private int pkhsx;                  // 贫困户属性
    private int jhtpnd;                 // 计划脱贫年度
    private int fpnd;                   // 返贫年度
    private String fpyy;                // 返贫原因
    private int sfjls;                  // 是否军烈属,1是0否
    private int sfbqh;                  // 是否搬迁户,1是0否
    private String bqfs;                // 搬迁方式
    private String bqdz;                // 搬迁地址
    private Date lrrq;                  // 录入日期
    private Date xgrq;                  // 修改日期
    private int lrrdm;                  // 录入人代码id
    private int zpzy1;                  // 致贫主因1
    private int zpzy2;                  // 致贫主因1
    private int zpzy3;                  // 致贫主因1
    private int ncjtrks;                // 年初家庭人口数
    private int nmjtrks;                // 年末家庭人口数
    private int scbz;                   // 删除标志
}
