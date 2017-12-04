package com.lanou.controller;

import com.lanou.entity.Banner;
import com.lanou.entity.Car;
import com.lanou.service.CarService;
import com.lanou.service.IndexService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/index")
public class IndexController {

    @Resource
    private IndexService indexService;

    @RequestMapping("/index.do")
    @ResponseBody
    public List<Banner> lunBotu() {
        List<Banner> banners = indexService.index();
        System.out.print(banners);
        return banners;
    }
}
