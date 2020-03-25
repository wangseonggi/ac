package com.example.ac.security.dao;

import com.example.ac.security.bean.SysMenu;
import com.example.ac.security.bean.SysRole;
import com.example.ac.security.bean.SysUser;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.boot.test.autoconfigure.MybatisTest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;


@RunWith(SpringRunner.class)
@MybatisTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
public class SysMenuDaoTest {

    @Autowired
    private SysMenuDao sysMenuDao;

    @Test
    public void selectSysUserByName() {
        String url = "/fun1/fun_a";
        List<SysMenu> list = sysMenuDao.getSysMenuByURL(url);
        Assert.assertNotNull(list);
    }
}
