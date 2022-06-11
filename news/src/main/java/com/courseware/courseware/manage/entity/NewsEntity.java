package com.courseware.courseware.manage.entity;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;


/**
* news
*/
@Data
@TableName(value = "news")
public class NewsEntity implements Serializable{

    
    /**
    * id
    */
    @TableId(type= IdType.AUTO)
    private Long id;
    
    /**
    * 标题
    */
    @TableField
    private String title;
    
    /**
    * 内容
    */
    @TableField
    private String content;
    
    /**
    *
    */
    @TableField
    private Integer type;
    
    /**
    * 创建时间
    */
    @TableField
    private Long createAt;

    @TableField
    private String url;

    @TableField(exist = false)
    private Long collectionId;

}