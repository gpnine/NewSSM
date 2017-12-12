package com.lanou.dao;

import com.lanou.entity.Huichang;

import java.util.List;

public interface HuichangMapper {
    public List<Huichang> findHuichang(Integer parentId);
    public Huichang findByHuichangId(Integer huichangId);
    public List<Huichang> findBigtu(Huichang huichang);
}
