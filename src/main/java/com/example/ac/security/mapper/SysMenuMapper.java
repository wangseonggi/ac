package com.example.ac.security.mapper;

import com.example.ac.security.bean.SysMenu;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface SysMenuMapper {

    @Select("SELECT id, pid, mc, px, zt, cjsj, gxsj \n" +
            "FROM sys_menu WHERE url = #{url}")
    List<SysMenu> getSysMenuByURL(String url);
}
