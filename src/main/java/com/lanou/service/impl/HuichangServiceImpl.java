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
}
