package com.courseware.courseware.manage.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.courseware.courseware.manage.base.Result;
import com.courseware.courseware.manage.entity.NewsCollectionEntity;
import com.courseware.courseware.manage.entity.NewsCommentEntity;
import com.courseware.courseware.manage.entity.NewsEntity;
import com.courseware.courseware.manage.mapper.NewsCollectionDao;
import com.courseware.courseware.manage.mapper.NewsCommentDao;
import com.courseware.courseware.manage.mapper.NewsDao;
import com.courseware.courseware.manage.param.NewsParam;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * Class {@code NewsController} 定义了关于新闻相关的操作，包括新增新闻，评论，收藏等相关操作
 * @author 杨宇涵
 */
@Slf4j
@RestController
public class NewsController {
    @Autowired
    private NewsDao newsDao;
    @Autowired
    private NewsCollectionDao newsCollectionDao;
    @Autowired
    private NewsCommentDao newsCommentDao;
    /**
     * <p>查询新闻信息，返回新闻实体列表
     * @return 新闻列表
     */
    @GetMapping("/news/list")
    public Result<NewsEntity> list(@ModelAttribute NewsParam param){
        Result result = new Result();
        result.setCode(200);
        try {
            QueryWrapper<NewsEntity> wrapper = new QueryWrapper<>();
            NewsEntity classFeeEntity = new NewsEntity();
            BeanUtils.copyProperties(param,classFeeEntity);
            wrapper.setEntity(classFeeEntity);
            List<NewsEntity> list = newsDao.selectList(wrapper);
            if(!CollectionUtils.isEmpty(list)){
                list.forEach(e->{
                    QueryWrapper<NewsCollectionEntity> wrapper2 = new QueryWrapper<>();
                    wrapper2.eq("user_id",param.getUserId());
                    wrapper2.eq("news_id",e.getId());
                    List<NewsCollectionEntity> articleLikeEntities = newsCollectionDao.selectList(wrapper2);
                    if(!CollectionUtils.isEmpty(articleLikeEntities)){
                        e.setCollectionId(articleLikeEntities.get(0).getId());
                    }
                });
            }
            result.setList(list);
        }catch (Exception e){
            log.error("NewsController-list-error:",e);
            result.setCode(500);
            result.setMessage("查询失败");
        }
        return result;
    }
    /**
     * <p>根据新闻名称查询新闻信息，返回新闻实体列表
     * @return 新闻列表
     */
    @GetMapping("/news/key")
    public Result<NewsEntity> list(String key){
        Result result = new Result();
        result.setCode(200);
        try {
            QueryWrapper<NewsEntity> wrapper = new QueryWrapper<>();
            wrapper.like("title",key);
            List<NewsEntity> list = newsDao.selectList(wrapper);
            result.setList(list);
        }catch (Exception e){
            log.error("NewsController-list-error:",e);
            result.setCode(500);
            result.setMessage("查询失败");
        }
        return result;
    }
    /**
     * <p> 添加新闻
     */
    @PostMapping("/news/add")
    public Result<NewsEntity> add(@ModelAttribute NewsParam param){
        Result result = new Result();
        result.setCode(200);
        try {
            NewsEntity templateInfoEntity = new NewsEntity();
            BeanUtils.copyProperties(param,templateInfoEntity);
            newsDao.insert(templateInfoEntity);
        }catch (Exception e){
            log.error("NewsController-add-error:",e);
            result.setCode(500);
            result.setMessage("添加失败");
        }
        return result;
    }
    /**
     * <p> 添加评论
     */
    @PostMapping("/news/addComment")
    public Result<Void> addComment(@ModelAttribute NewsCommentEntity entity){
        Result result = new Result();
        result.setCode(200);
        try {
            entity.setCreateAt(System.currentTimeMillis());
            newsCommentDao.insert(entity);
        }catch (Exception e){
            log.error("NewsController-addComment-error:",e);
            result.setCode(500);
            result.setMessage("添加评论失败");
        }
        return result;
    }
    /**
     * <p> 查询评论
     */
    @GetMapping("/news/commentList")
    public Result<NewsCommentEntity> commentList(@ModelAttribute NewsCommentEntity entity){
        Result result = new Result();
        result.setCode(200);
        try {
            QueryWrapper<NewsCommentEntity> wrapper = new QueryWrapper<>();
            wrapper.setEntity(entity);
            List<NewsCommentEntity> collectionEntityList =  newsCommentDao.selectList(wrapper);
            result.setList(collectionEntityList);
        }catch (Exception e){
            log.error("NewsController-commentList-error:",e);
            result.setCode(500);
            result.setMessage("查询失败");
        }
        return result;
    }
    /**
     * <p> 添加至收藏
     */
    @PostMapping("/news/addCollection")
    public Result<Void> addCollection(@ModelAttribute NewsCollectionEntity entity){
        Result result = new Result();
        result.setCode(200);
        try {
            entity.setCreateAt(System.currentTimeMillis());
            if(newsCollectionDao.selectById(entity.getId())!=null){
                newsCollectionDao.deleteById(entity.getId());
            }
            newsCollectionDao.insert(entity);
            Map<String,Long> map = new HashMap<>();
            map.put("collectionId",entity.getId());
            result.setEntity(map);
        }catch (Exception e){
            log.error("NewsController-addCollection-error:",e);
            result.setCode(500);
            result.setMessage("添加失败");
        }
        return result;
    }
    /**
     * <p> 查询收藏
     */
    @GetMapping("/news/collectionList")
    public Result<NewsEntity> collectionList(@ModelAttribute NewsCollectionEntity entity){
        Result result = new Result();
        result.setCode(200);
        try {
            QueryWrapper<NewsCollectionEntity> wrapper = new QueryWrapper<>();
            wrapper.setEntity(entity);
            List<NewsCollectionEntity> collectionEntityList =  newsCollectionDao.selectList(wrapper);
            if(!CollectionUtils.isEmpty(collectionEntityList)){
                Map<Long,Long> map = collectionEntityList.stream().collect(Collectors.toMap(NewsCollectionEntity::getNewsId, NewsCollectionEntity::getId));
                List<NewsEntity> newsEntityList = newsDao.selectBatchIds(collectionEntityList.stream().map(e->e.getNewsId()).collect(Collectors.toList()));
                if(!CollectionUtils.isEmpty(newsEntityList)){
                    newsEntityList.forEach(e->e.setCollectionId(map.get(e.getId())));
                }
                result.setList(newsEntityList);
            }
        }catch (Exception e){
            log.error("NewsController-collectionList-error:",e);
            result.setCode(500);
            result.setMessage("查询失败");
        }
        return result;
    }
    /**
     * <p> 删除收藏
     */
    @PostMapping("/news/deleteCollection")
    public Result<Void> deleteCollection(Long collectionId){
        Result result = new Result();
        result.setCode(200);
        try {
            newsCollectionDao.deleteById(collectionId);
        }catch (Exception e){
            log.error("NewsController-deleteCollection-error:",e);
            result.setCode(500);
            result.setMessage("删除失败");
        }
        return result;
    }
}
