package com.example.ac.security;

import com.example.ac.security.handler.CustomAccessDeniedHandler;
import com.example.ac.security.handler.CustomAuthenticationEntryPoint;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;

@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    UserDetailsService customUserDetailsService;

    /**
     * Http安全配置
     */
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        /**
         * 关闭csrf
         */
        http
                .csrf().disable();
        /**
         * 表单登录：使用默认的表单登录页面和登录端点/login进行登录
         * 出登录：使用默认的退出登录端点/logout退出登录
         * 权限：除了/toHome和/toUser之外的其它请求都要求用户已登录
         */
        http
                .formLogin()
                    .loginPage("/login")
                    .successForwardUrl("/index")
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
         * 自定义认证及授权异常处理
         */
        http
                .exceptionHandling()
                    .accessDeniedHandler(new CustomAccessDeniedHandler())
                    .authenticationEntryPoint(new CustomAuthenticationEntryPoint()); // 配置EntryPoint会禁用默认登录页
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth
                .inMemoryAuthentication()
                .passwordEncoder(NoOpPasswordEncoder.getInstance())
                .withUser("admin22").password("123456").roles("admin")
                .and()
                .withUser("user11").password("123456").roles("user");

        // 加入自定义的认证提供者
        auth
                .authenticationProvider(daoAuthenticationProvider());
    }

    /**
     * 使用security自带的provider
     */
    @Bean
    DaoAuthenticationProvider daoAuthenticationProvider() {
        DaoAuthenticationProvider daoAuthenticationProvider = new DaoAuthenticationProvider();
        daoAuthenticationProvider.setPasswordEncoder(new BCryptPasswordEncoder());
        daoAuthenticationProvider.setUserDetailsService(customUserDetailsService);

        return daoAuthenticationProvider;
    }
}
