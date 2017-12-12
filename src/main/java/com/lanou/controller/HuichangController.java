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

    @RequestMapping("/findhuichang.do")
    @ResponseBody
    public Map<String, Object> findHuichang(HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        Map<String, Object> map = new HashMap<String, Object>();
        Huichang bkzj = huichangservice.findByHuichangId(12);
        List<Huichang> bkzjShangping = huichangservice.findHuichang(12);
        List<Wine> bkzjWines=wineService.findScope1(1151,1160);
        map.put("bkzj",bkzj);
        map.put("bkzjShangping",bkzjShangping);
        map.put("bkzjWines",bkzjWines);
        return map;
    }


}
