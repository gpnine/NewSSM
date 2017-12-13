package com.lanou.dao;


import com.lanou.entity.Shop;
import com.lanou.entity.Wine;

import java.util.List;

public interface ShopMapper {
    //    根据父级id查找
    public List<Shop> findFenlei(Integer parentId);

    public List<Shop> findMore(Integer parentId);

    //查找所有字段中有图的品牌
    public List<Shop> findNotNull();
}
