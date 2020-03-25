package com.example.ac.security.dao;

import com.example.ac.security.bean.SysMenu;
import com.example.ac.security.bean.SysRole;
import com.example.ac.security.bean.SysUser;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface SysMenuDao {

    @Select("SELECT id, pid, mc, px, zt, cjsj, gxsj \n" +
            "FROM sys_menu WHERE url = #{url}")
    List<SysMenu> getSysMenuByURL(String url);
}
