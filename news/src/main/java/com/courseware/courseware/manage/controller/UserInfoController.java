package com.courseware.courseware.manage.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.courseware.courseware.manage.base.Result;
import com.courseware.courseware.manage.entity.UserInfoEntity;
import com.courseware.courseware.manage.mapper.UserInfoDao;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Objects;

/**
 * Class {@code UserInfoController} 定义了关于用户相关的操作，包括用户注册、登录、更新信息相关操作
 * @author 杨宇涵
 */
@Slf4j
@RestController
public class UserInfoController {
    @Autowired
    private UserInfoDao userDao;
    /**
     * <p> 用户登录
     */
    @PostMapping("/user/login")
    public Result<UserInfoEntity> login(@ModelAttribute UserInfoEntity user){
        Result result = new Result();
        result.setCode(200);
        try {
            QueryWrapper<UserInfoEntity> wrapper = new QueryWrapper<>();
            wrapper.setEntity(user);
            UserInfoEntity userEntity = userDao.selectOne(wrapper);
            if(Objects.isNull(userEntity)){
                result.setCode(400);
                result.setMessage("用户名或密码错误");
            }else {
                userEntity.setCreateAt(System.currentTimeMillis());
                result.setEntity(userDao.selectOne(wrapper));
            }
        }catch (Exception e){
            log.error("登录失败：",e);
            result.setCode(500);
            result.setMessage("登录失败");
        }
        return result;
    }
    /**
     * <p> 用户注册
     */
    @PostMapping("/user/register")
    public Result<Void> register(@ModelAttribute UserInfoEntity user){
        Result result = new Result();
        result.setCode(200);
        try{
            QueryWrapper<UserInfoEntity> wrapper = new QueryWrapper<>();
            wrapper.eq("mobile",user.getMobile());
            UserInfoEntity userEntity = userDao.selectOne(wrapper);
            if(Objects.nonNull(userEntity)){
                result.setCode(400);
                result.setMessage("此手机号已注册");
            }else{
                userDao.insert(user);
            }
        }catch (Exception e){
            log.error("注册失败：",e);
            result.setCode(500);
            result.setMessage("注册失败");
        }
        return result;
    }
    /**
     * <p> 用户更换密码
     */
    @PostMapping("/user/update")
    public Result<Void> update(@ModelAttribute UserInfoEntity user){
        Result result = new Result();
        result.setCode(200);
        try{
            UserInfoEntity userEntity = userDao.selectById(user.getId());
            if(!userEntity.getPassword().equals(user.getPassword())){
                result.setCode(400);
                result.setMessage("原密码错误");
            }
            userEntity.setPassword(user.getPassword());
            userDao.updateById(userEntity);
        }catch (Exception e){
            log.error("修改失败:",e);
            result.setCode(500);
            result.setMessage("修改失败");
        }
        return result;
    }
    /**
     * <p> 根据用户名返回用户名称
     */
    @GetMapping("/user/name")
    public Result<String> getName(@ModelAttribute UserInfoEntity user){
        Result result = new Result();
        result.setCode(200);
        try{
            UserInfoEntity userEntity = userDao.selectById(user.getId());
            result.setEntity(userEntity.getUserName());
        }catch (Exception e){
            log.error("查找失败",e);
            result.setCode(500);
            result.setMessage("查找失败");
        }
        return result;
    }
}
