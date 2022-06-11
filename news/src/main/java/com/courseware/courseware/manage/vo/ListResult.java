package com.courseware.courseware.manage.vo;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class ListResult<T> implements Serializable {

    private List<T> records;
}
