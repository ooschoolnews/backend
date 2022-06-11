package com.courseware.courseware.manage.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * Class {@code UserInfoEntity} 定义了用户实体，利用Serializable接口序列化，实体内容包括id,用户名称，用户密码，手机号，创建时间
 * @author 杨宇涵
 */
@Data
@TableName(value = "user_info")
public class UserInfoEntity implements Serializable{
    @TableId(type = IdType.AUTO)
    private Long id;
    @TableField
    private String userName;
    @TableField
    private String password;
    @TableField
    private String mobile;
    @TableField
    private Long createAt;
}