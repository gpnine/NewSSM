package com.lanou.dao;


import com.lanou.entity.Wine;

import java.util.List;
import java.util.Map;

public interface WineMapper {
    public List<Wine> findWines();
    public List<Wine> moreWines(Map map);
    public List<Wine> findWineById(Integer wineId);
    public Wine findWineByWineId(Integer wineId);
    public List<Wine> findLike(String likeName);
    public List<Wine> findScope(Map map);

//    商品详情
    public Wine goods_detile(Integer wid);
    public List<Wine> rexiao();

}
