package com.example.ac.security.dao;

import com.example.ac.security.bean.SysUser;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.test.context.junit4.SpringRunner;

import org.mybatis.spring.boot.test.autoconfigure.MybatisTest;


@RunWith(SpringRunner.class)
@MybatisTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
public class SysUserDaoTest {

    @Autowired
    private SysUserDao sysUserDao;

    @Test
    public void selectSysUserByName() {
        String username = "admin";
        SysUser user = sysUserDao.findSysUserByname(username);
        Assert.assertNotNull(user);
    }
}
