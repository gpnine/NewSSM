package com.lanou.controller;

import com.lanou.entity.Shop;
import com.lanou.service.ShopService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/shop")
public class ShopController {
    @Resource
    private ShopService shopService;

    //    查找所有用户
    @RequestMapping("/findFenlei.do")
    public void finds() {
        List<Shop> shops = shopService.findFenlei();
        System.out.print(shops);
    }

}
