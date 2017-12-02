package com.lanou.dao;


import com.lanou.entity.User;
import com.lanou.entity.Wine;

import java.util.List;

public interface WineMapper {
    public List<Wine> findWines();
}
