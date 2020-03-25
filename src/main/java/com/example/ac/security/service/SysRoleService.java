package com.example.ac.security.service;

import com.example.ac.security.bean.SysMenu;
import com.example.ac.security.bean.SysRole;
import com.example.ac.security.dao.SysMenuDao;
import com.example.ac.security.dao.SysRoleDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SysRoleService {

    @Resource
    private SysRoleDao sysRoleDao;

    public List<SysRole> selectRolesByMenuId(int menuid) {
        return sysRoleDao.selectRolesByMenuId(menuid);
    }
}
