package com.courseware.courseware.manage.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.courseware.courseware.manage.base.Result;
import com.courseware.courseware.manage.entity.UserInfoEntity;
import com.courseware.courseware.manage.mapper.UserInfoDao;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Objects;

/**
 * @author ltf
 */
@Slf4j
@RestController
public class UserInfoController {

    @Autowired
    private UserInfoDao userDao;

    @PostMapping("/user/login")
    public Result<UserInfoEntity> login(@ModelAttribute UserInfoEntity dto){
        Result result = new Result();
        result.setCode(200);
        try {
            QueryWrapper<UserInfoEntity> wrapper = new QueryWrapper<>();
            wrapper.setEntity(dto);
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

    @PostMapping("/user/register")
    public Result<Void> register(@ModelAttribute UserInfoEntity dto){
        Result result = new Result();
        result.setCode(200);
        try{
            QueryWrapper<UserInfoEntity> wrapper = new QueryWrapper<>();
            wrapper.eq("mobile",dto.getMobile());
            UserInfoEntity userEntity = userDao.selectOne(wrapper);
            if(Objects.nonNull(userEntity)){
                result.setCode(400);
                result.setMessage("此手机号已注册");
            }else{
                userDao.insert(dto);
            }
        }catch (Exception e){
            log.error("注册失败：",e);
            result.setCode(500);
            result.setMessage("注册失败");
        }
        return result;
    }

    @PostMapping("/user/update")
    public Result<Void> update(@ModelAttribute UserInfoEntity dto){
        Result result = new Result();
        result.setCode(200);
        try{
            UserInfoEntity userEntity = userDao.selectById(dto.getId());
            if(!userEntity.getPassword().equals(dto.getPassword())){
                result.setCode(400);
                result.setMessage("原密码错误");
            }
            userEntity.setPassword(dto.getPassword());
            userDao.updateById(userEntity);
        }catch (Exception e){
            log.error("修改失败:",e);
            result.setCode(500);
            result.setMessage("修改失败");
        }
        return result;
    }
}
