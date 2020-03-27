package com.example.ac.entity.holder;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * 基本信息及户主的数据对象
 */
@Data
@Entity
public class JbxxHzHolder {

    @Id
    private int id;
    private String fpnd;
    private int sfydbqh;
    private Integer pkhsx;
    private Integer jhtpnd;
    private String hzxm;
    private String zjhm;
}
