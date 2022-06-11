package com.courseware.courseware.manage.entity;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * Class {@code NewsEntity} 定义了关于校园新闻实体，利用Serializable接口序列化，实体内容包括id,标题，内容，新闻类型，创建时间，图片url
 * @author 杨宇涵
 */
@Data
@TableName(value = "news")
public class NewsEntity implements Serializable{
    @TableId(type= IdType.AUTO)
    private Long id;
    @TableField
    private String title;
    @TableField
    private String content;
    @TableField
    private Integer type;
    @TableField
    private Long createAt;
    @TableField
    private String url;
    @TableField(exist = false)
    private Long collectionId;
}