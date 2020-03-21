package com.example.ac.security.dao;

import com.example.ac.security.bean.SysUser;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface SysUserDao {

    @Select("select id," +
            "username," +
            "password," +
            "nc," +
            "xb," +
            "dh," +
            "dzyx," +
            "zhyxq," +
            "mmyxq," +
            "zt," +
            "zjdlip from sys_user s where s.username=#{userName}")
    SysUser findSysUserByname(String username);
}
