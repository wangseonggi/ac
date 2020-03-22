package com.example.ac.security.service;

import com.example.ac.security.bean.SysRole;
import com.example.ac.security.bean.SysUser;
import com.example.ac.security.dao.SysUserDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SysUserService {

    @Resource
    private SysUserDao sysUserDao;

    public SysUser findUserByName(String username) {
        return sysUserDao.findSysUserByName(username);
    }

    public List<SysRole> getRoles(int userId) {
        return sysUserDao.getSysRoleByUserId(userId);
    }
}
