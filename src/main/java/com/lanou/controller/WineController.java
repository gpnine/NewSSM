package com.lanou.controller;

import com.lanou.entity.Wine;
import com.lanou.service.WineService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/wine")
public class WineController {

    @Resource
    private WineService wineService;

    //    查找所有用户
    @RequestMapping("/findWines.do")
    public void findWines() {
        List<Wine> wines = wineService.findWines();
        System.out.print(wines);
    }
}
