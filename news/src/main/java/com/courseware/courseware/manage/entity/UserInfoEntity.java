package com.courseware.courseware.manage.entity;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;


/**
* user_info
*/
@Data
@TableName(value = "user_info")
public class UserInfoEntity implements Serializable{

    /**
    * id
    */
    @TableId(type = IdType.AUTO)
    private Long id;
    
    /**
    * 用户名称
    */
    @TableField
    private String userName;
    
    /**
    * 用户密码
    */
    @TableField
    private String password;
    
    /**
    * 手机号
    */
    @TableField
    private String mobile;
    
    /**
    * 创建时间
    */
    @TableField
    private Long createAt;

}