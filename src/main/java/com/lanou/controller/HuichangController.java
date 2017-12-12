package com.lanou.controller;

import com.lanou.entity.Huichang;
import com.lanou.entity.Wine;
import com.lanou.service.HuichangService;
import com.lanou.service.WineService;
import com.lanou.util.FastJson_Ali;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/huichang")
public class HuichangController {

    @Resource
    private HuichangService huichangservice;
    @Resource
    private WineService wineService;

    @RequestMapping("/findhuichang1.do")
    @ResponseBody
    public Map<String, Object> findHuichang1(HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        Map<String, Object> baijiu1 = new HashMap<String, Object>();
        List<Huichang> baijiuloucen = huichangservice.findHuichang(1);
        List<Huichang> bkdaT1 = huichangservice.findBigtu(12, 1);
        List<Huichang> bkzjShangping = huichangservice.findBigtu(12, 0);
        List<Wine> bkzjWines = wineService.findScope1(1151, 1160);
        List<Huichang> bkdaT2 = huichangservice.findBigtu(13, 1);
        List<Huichang> bkzjShangping2 = huichangservice.findBigtu(13, 0);
        List<Wine> bkzjWines2 = wineService.findScope1(1161, 1172);
        List<Huichang> bkdaT3 = huichangservice.findBigtu(14, 1);
        List<Huichang> bkzjShangping3 = huichangservice.findBigtu(14, 0);
        List<Wine> bkzjWines3 = wineService.findScope1(1173, 1184);
        baijiu1.put("baijiuloucen", baijiuloucen);
        baijiu1.put("bkdaT1", bkdaT1);
        baijiu1.put("bkzjShangping1", bkzjShangping);
        baijiu1.put("bkzjWines1", bkzjWines);
        baijiu1.put("bkdaT2", bkdaT1);
        baijiu1.put("bkzjShangping2", bkzjShangping);
        baijiu1.put("bkzjWines2", bkzjWines);
        baijiu1.put("bkdaT3", bkdaT1);
        baijiu1.put("bkzjShangping3", bkzjShangping);
        baijiu1.put("bkzjWines3", bkzjWines);
        return baijiu1;
    }


}
