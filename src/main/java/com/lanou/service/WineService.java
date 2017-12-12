package com.lanou.service;

import com.lanou.entity.Wine;

import java.util.List;
import java.util.Map;

public interface WineService {

    public List<Wine> findWines();

    public List<Wine> moreWines(Integer c);

    public List<Wine> findWineById(Integer WineId);

    public Wine findWineByWineId(Integer wineId);

    public int likeCount(String likeName);

    public List<Wine> findLike(String likeName);

    //	商品详情
    public Wine goods_detile(Integer goodsId);

    public List<Wine> findScope(Integer a, Integer b);
    public List<Wine> findScope1(Integer a1, Integer b1);

    public List<Wine> rexiao();
}
