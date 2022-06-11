package com.courseware.courseware.manage.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * Class {@code NewsCollectionEntity} 定义了关于校园新闻收藏实体，利用Serializable接口序列化，实体内容包括id,新闻id，用户id，创建时间
 * @author 杨宇涵
 */
@Data
@TableName(value = "news_collection")
public class NewsCollectionEntity implements Serializable{
    @TableId(type=IdType.AUTO)
    private Long id;
    @TableField
    private Long newsId;
    @TableField
    private Long userId;
    @TableField
    private Long createAt;
}