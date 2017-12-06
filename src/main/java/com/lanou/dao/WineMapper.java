package com.lanou.dao;


import com.lanou.entity.Wine;

import java.util.List;
import java.util.Map;

public interface WineMapper {
    public List<Wine> findWines();
    public List<Wine> findWineById(Integer WineId);
    public List<Wine> findLike(String likeName);
    public List<Wine> findScope(Map map);

}
