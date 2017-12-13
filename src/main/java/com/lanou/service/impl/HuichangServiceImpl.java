package com.lanou.service.impl;


import com.lanou.dao.HuichangMapper;
import com.lanou.entity.Huichang;
import com.lanou.service.HuichangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

@Service("huichangService")
public class HuichangServiceImpl implements HuichangService {
    @Autowired
    private HuichangMapper huichangmapper;

    public List<Huichang> findHuichang(Integer parentId) {

        return huichangmapper.findHuichang(parentId);
    }

    public List<Huichang> findBigtu(Integer parentId, Integer bigTu) {
        Huichang huichang = new Huichang();
        huichang.setParentId(parentId);
        huichang.setBigTu(bigTu);
        return huichangmapper.findBigtu(huichang);
    }

    public Huichang findByHuichangId(Integer huichangId) {
        return huichangmapper.findByHuichangId(huichangId);
    }
}
