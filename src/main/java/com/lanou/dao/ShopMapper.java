package com.lanou.dao;


import com.lanou.entity.Shop;
import com.lanou.entity.Wine;

import java.util.List;

public interface ShopMapper {
    public List<Shop> findFenlei(Integer parentId);
    public List<Shop> findFuji(Integer shopId);
}
