package com.example.ac.security.service;

import com.example.ac.security.bean.SysRole;
import com.example.ac.security.mapper.SysRoleMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SysRoleService {

    @Resource
    private SysRoleMapper sysRoleMapper;

    public List<SysRole> selectRolesByMenuId(int menuid) {
        return sysRoleMapper.selectRolesByMenuId(menuid);
    }
}
