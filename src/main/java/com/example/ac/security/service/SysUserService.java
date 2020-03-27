package com.example.ac.security.service;

import com.example.ac.security.bean.SysRole;
import com.example.ac.security.bean.SysUser;
import com.example.ac.security.mapper.SysUserMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SysUserService {

    @Resource
    private SysUserMapper sysUserMapper;

    public SysUser findUserByName(String username) {
        return sysUserMapper.findSysUserByName(username);
    }

    public List<SysRole> getRoles(int userId) {
        return sysUserMapper.getSysRoleByUserId(userId);
    }
}
