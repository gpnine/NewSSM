package com.lanou.dao;


import com.lanou.entity.Wine;

import java.util.List;
import java.util.Map;

public interface WineMapper {
    public List<Wine> findWines();
    public List<Wine> findWineById(Integer wineId);
    //分页展示
    public List<Wine> moreWines(Map map);

    //根据商品id查找
    public Wine findWineByWineId(Integer wineId);

    //多字段模糊查询
    public List<Wine> findLike(String likeName);

    //多字段模糊查询到的数量
    public int likeCount(String likeName);

    //范围查找
    public List<Wine> findScope(Map map);

    public List<Wine> findScope1(Map map);

    //    商品详情
    public Wine goods_detile(Integer wid);

    //热销商品
    public List<Wine> rexiao(String WineBrand);

    public List<Wine> rexiao1(Map map);

    public List<Wine> chengjiao(Map map);

    public List<Wine> jiage(Map map);

    public List<Wine> pinlunshu(Map map);

    public List<Wine> shangjia(Map map);

    public List<Wine> ziying(Map map);

    public List<Wine> allGoodsNum(String WineBrand);

}
