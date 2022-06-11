package com.courseware.courseware.manage.base;

import com.baomidou.mybatisplus.core.metadata.IPage;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * 返回参数
 */
@Data
public class Result<T> implements Serializable {
    private Integer code;//200成功 500异常
    private List<T> list;
    private T entity;
    private IPage<T> page;
    private String message;
}
