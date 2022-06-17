package com.courseware.courseware.manage.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName(value = "feedback")
public class FeedbackEntity implements Serializable {
    @TableId(type= IdType.AUTO)
    private Long id;
    @TableField
    private Long userId;
    @TableField
    private String feedback;
    @TableField
    private Long createAt;
}
