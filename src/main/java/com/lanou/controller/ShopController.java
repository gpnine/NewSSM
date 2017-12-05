package com.lanou.controller;

import com.lanou.entity.Shop;
import com.lanou.service.ShopService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/shop")
public class ShopController {
    @Resource
    private ShopService shopService;

    //    查找所有用户
    @RequestMapping("/findFenlei.do")
    @ResponseBody
    public List<Shop> finds(Integer parentId) {
        List<Shop> shops = shopService.findFenlei(parentId);
        return shops;
    }

<<<<<<< HEAD
=======

>>>>>>> 26af7b003f942372a28a29539054f3c0038dd1b1
    @RequestMapping("/findFenlei1.do")
    @ResponseBody
    public List<Shop> finds(Shop shop1, Integer parentId) {
        List<Shop> shops = shopService.findFenlei(parentId);
        for (Shop shop : shops) {
            shop.setShopList(finds(shop1, shop.getShopId()));
        }
        return shops;
    }
<<<<<<< HEAD
=======

    //    查找所有用户
//    @RequestMapping("/findFenlei1.do")
//    @ResponseBody
//    public List<Shop> finds(Shop shop1, Integer parentId) {
//        List<Shop> shops = shopService.findFenlei(parentId);
//        for (Shop shop : shops) {
//            shop.setShopList(finds(shop1, shop.getShopId()));
//        }
//        return shops;
//    }
//>>>>>>> a2a845a402a3fea1ce1593c90ea28ac03ae74835
>>>>>>> 26af7b003f942372a28a29539054f3c0038dd1b1

    //    查询父级
    @RequestMapping("/findFuji.do")
    @ResponseBody
    public List<Shop> findFuji(Integer parentId) {
        List<Shop> shops = shopService.findFuji(parentId);
        return shops;
    }

}
