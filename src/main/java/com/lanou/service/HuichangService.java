package com.lanou.service;

import com.lanou.entity.Huichang;

import java.util.List;


public interface HuichangService {

    public List<Huichang> findHuichang(Integer parentId);
    public Huichang findByHuichangId(Integer huichangId);
}
