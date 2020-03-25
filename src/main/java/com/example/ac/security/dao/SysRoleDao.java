package com.example.ac.security.dao;

import com.example.ac.security.bean.SysRole;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface SysRoleDao {

    @Select("select distinct(a.mc) as mc\n" +
            "from sys_role a, sys_role_menu b \n" +
            "where a.id = b.roleid and b.menuid = #{menuid}")
    List<SysRole> selectRolesByMenuId(int menuid);
}
