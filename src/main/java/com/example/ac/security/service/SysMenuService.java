package com.example.ac.security.service;

import com.example.ac.security.bean.SysMenu;
import com.example.ac.security.mapper.SysMenuMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SysMenuService {

    @Resource
    private SysMenuMapper sysMenuMapper;

    public List<SysMenu> getMenus(String url) {
        return sysMenuMapper.getSysMenuByURL(url);
    }
}
