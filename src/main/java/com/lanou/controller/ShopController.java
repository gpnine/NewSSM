package com.lanou.controller;

import com.lanou.entity.Shop;
import com.lanou.service.ShopService;
import com.lanou.util.FastJson_Ali;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/shop")
public class ShopController {
    @Resource
    private ShopService shopService;
    private HttpServletResponse response;

    //    查找所有用户
    @RequestMapping("/findFenlei.do")
    @ResponseBody
    public List<Shop> finds(Integer parentId) {
//        FastJson_Ali.toJson(response);
        List<Shop> shops = shopService.findFenlei(parentId);
        return shops;
    }

    @RequestMapping("/findFenlei1.do")
    @ResponseBody
    public List<Shop> finds(Shop shop1, Integer parentId) {
        List<Shop> shops = shopService.findFenlei(parentId);
        for (Shop shop : shops) {
            shop.setShopList(finds(shop1, shop.getShopId()));
        }
        return shops;
    }

    @RequestMapping("/goods_more.do")
    @ResponseBody
    public Map<String, Object> goods_more(Integer shopId, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        Map<String, Object> map = new HashMap<String, Object>();
//        品牌
        int[] brandArr = {101, 201, 301, 401};
        for (int i = 0; i < brandArr.length; i++) {
            List<Shop> brand = shopService.findMore(brandArr[i]);
            map.put("brand" + i, brand);
        }
//        产地
        int[] adressArr = {102, 202, 302};
        for (int i = 0; i < adressArr.length; i++) {
            List<Shop> adress = shopService.findMore(adressArr[i]);
            map.put("adress" + i, adress);
        }
//        香型
        List<Shop> scent = shopService.findMore(103);
//        度数
        List<Shop> degree = shopService.findMore(105);
//        种类
        List<Shop> zhonglei = shopService.findMore(203);
        map.put("scent", scent);
        map.put("degree", degree);
        map.put("zhonglei", zhonglei);
//        适用
        int[] shiyongArr = {104, 204, 304, 404};
        for (int i = 0; i < shiyongArr.length; i++) {
            List<Shop> shiyong = shopService.findMore(shiyongArr[i]);
            map.put("shiyong" + i, shiyong);
        }
//        洋酒类型
        List<Shop> yangjiu = shopService.findMore(304);
        map.put("yangjiu", yangjiu);

        return map;
    }

}
