package com.example.ac.security;

import com.example.ac.security.handler.CustomAccessDeniedHandler;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    /**
     * Http安全配置
     */
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        /**
         * 表单登录：使用默认的表单登录页面和登录端点/login进行登录
         * 出登录：使用默认的退出登录端点/logout退出登录
         * 权限：除了/toHome和/toUser之外的其它请求都要求用户已登录
         */
        http
                .formLogin()
                    .permitAll()
                    .and()
                .logout()
                    .permitAll()
                    .and()
                .authorizeRequests()
                    .antMatchers("/toHome", "/toUser")
                    .permitAll()
                    .antMatchers("/fun1/**")
                    .hasAnyRole("admin")
                    .anyRequest()
                    .authenticated();

        /**
         * 自定义的异常处理
         */
        http
                .exceptionHandling()
                    .accessDeniedHandler(new CustomAccessDeniedHandler());
//                    .authenticationEntryPoint();
    }
}
