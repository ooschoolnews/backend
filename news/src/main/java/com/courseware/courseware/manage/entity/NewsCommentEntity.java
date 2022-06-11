package com.courseware.courseware.manage.entity;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;


/**
* news_comment
*/
@Data
@TableName(value = "news_comment")
public class NewsCommentEntity implements Serializable{
    
    /**
    * id
    */
    @TableId(type= IdType.AUTO)
    private Long id;
    
    /**
    * 帖子id
    */
    @TableField
    private Long newsId;
    
    /**
    * 用户id
    */
    @TableField
    private Long userId;
    
    /**
    * 评论内容
    */
    @TableField
    private String content;
    
    /**
    * 创建时间
    */
    @TableField
    private Long createAt;

}