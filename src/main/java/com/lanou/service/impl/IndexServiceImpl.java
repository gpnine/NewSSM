package com.lanou.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.lanou.dao.IndexMapper;
import com.lanou.entity.Banner;
import com.lanou.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by lanou on 2017/12/4.
 */
@Service("indexService")
public class IndexServiceImpl implements IndexService{
    @Autowired
    private IndexMapper indexMapper;

    public List<Banner> index() {
        /*
        * 这里是网站主页，这里需要请求的数据有：
        *       1、轮播图的图片
        * */
        return indexMapper.lunBoTu();
    }
}
