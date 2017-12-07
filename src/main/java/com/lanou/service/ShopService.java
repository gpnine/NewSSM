package com.lanou.service;

import com.lanou.entity.Shop;

import java.util.List;

public interface ShopService {
    public List<Shop> findFenlei(Integer parentId);
    public List<Shop> findFuji(Integer shopId);
    public List<Shop> findNotNull();
}
