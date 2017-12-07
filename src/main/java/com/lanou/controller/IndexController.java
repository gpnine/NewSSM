package com.lanou.controller;

import com.lanou.entity.Banner;
import com.lanou.entity.Shop;
import com.lanou.entity.Wine;
import com.lanou.service.IndexService;
import com.lanou.service.ShopService;
import com.lanou.service.WineService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/index")
public class IndexController {
    @Resource
    private WineService wineService;
    @Resource
    private IndexService indexService;
    
    @Resource
    private ShopService shopService;

    @RequestMapping("/index.do")
    @ResponseBody
    public Map<String, Object> lunBotu(Shop shop1, Integer parentId) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Banner> banners = indexService.index();
        System.out.print(banners);
        List<Shop> shops = finds(shop1, parentId);
        List<Wine> wines = wineService.findWines();
        map.put("banners", banners);
        map.put("shops", shops);
        return map;
    }
    @RequestMapping("/findWines.do")
    @ResponseBody
    public List<Wine> shangping(Integer WineId) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Wine> wines = wineService.findWineById(WineId);
        return wines;
    }

    public List<Shop> finds(Shop shop1, Integer parentId) {
        List<Shop> shops = shopService.findFenlei(parentId);
        for (Shop shop : shops) {
            shop.setShopList(finds(shop1, shop.getShopId()));
        }
        return shops;
    }
    //    范围查询
    @RequestMapping("/findScope.do")
    @ResponseBody
    public List<Wine> findScope(Integer a,Integer b) {
        System.out.println(a);
        System.out.println(b);
        List<Wine> wines = wineService.findScope(a,b);
        System.out.print(wines);
        return wines;
    }
    //判断品牌字段是否为空
    @RequestMapping("/findNotNull.do")
    @ResponseBody
    public List<Shop> findNotNull() {
        List<Shop> shops = shopService.findNotNull();
        return shops;
    }
}
