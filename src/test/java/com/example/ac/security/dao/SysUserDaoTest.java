package com.example.ac.security.dao;

import com.example.ac.security.bean.SysRole;
import com.example.ac.security.bean.SysUser;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.test.context.junit4.SpringRunner;

import org.mybatis.spring.boot.test.autoconfigure.MybatisTest;

import java.util.List;


@RunWith(SpringRunner.class)
@MybatisTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
public class SysUserDaoTest {

    @Autowired
    private SysUserDao sysUserDao;

    @Test
    public void selectSysUserByName() {
        String username = "admin";
        SysUser user = sysUserDao.findSysUserByName(username);
        Assert.assertNotNull(user);
    }


    @Test
    public void getSysRoleByUserId() {
        int userId = 2;
        List<SysRole> list = sysUserDao.getSysRoleByUserId(userId);
        Assert.assertEquals(2,list.size());
    }
}
