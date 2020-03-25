package com.example.ac.security.service;

import com.example.ac.security.bean.SysMenu;
import com.example.ac.security.bean.SysRole;
import com.example.ac.security.bean.SysUser;
import com.example.ac.security.dao.SysMenuDao;
import com.example.ac.security.dao.SysUserDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SysMenuService {

    @Resource
    private SysMenuDao sysMenuDao;

    public List<SysMenu> getMenus(String url) {
        return sysMenuDao.getSysMenuByURL(url);
    }
}
