package com.courseware.courseware.manage.param;

import com.courseware.courseware.manage.entity.NewsEntity;
import lombok.Data;

@Data
public class NewsParam extends NewsEntity {

    private Integer page;

    private Integer size;

    private String userId;
}
