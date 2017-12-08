package com.lanou.controller;

import com.lanou.entity.Car;
import com.lanou.entity.Wine;
import com.lanou.service.CarService;
import com.lanou.service.UserService;
import com.lanou.service.WineService;
import com.lanou.util.FastJson_Ali;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/wine")
public class WineController {

    @Resource
    private WineService wineService;
    @Resource
    private UserService userService;


    //    查找
    @RequestMapping("/findWines.do")
    public void findWines() {
        List<Wine> wines = wineService.findWines();
        System.out.print(wines);
    }

    //    模糊查询
    @RequestMapping("/findLike.do")
    @ResponseBody
    public List<Wine> findLike(String likeName) {
        List<Wine> wines = wineService.findLike(likeName);
        return wines;
    }

    //    查看更多
    @RequestMapping("/moreWines.do")
    @ResponseBody
    public List<Wine> moreWines(Integer c, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        c = (c - 1) * 40;
        List<Wine> wines = wineService.moreWines(c);
        System.out.print(wines);
        return wines;
    }


    //    商品详情
    @RequestMapping(value = "/goods.do")
    public String goods_detile(Integer goodsId, HttpServletRequest request) {

        List<Wine> wineList = userService.liuLanJiLu();
        request.setAttribute("wineList", wineList);

        List<Wine> wineList1 = userService.guanZhu();
        request.setAttribute("wineList1", wineList1);

        List<Wine> wineList2 = userService.shangPinTuiJian();
        request.setAttribute("wineList2", wineList2);

        Wine wine = wineService.goods_detile(goodsId);
        request.setAttribute("wineInfo", wine);
        return "/Ljp_Xiang_Info/html/01.Ljp_info";
    }


    @Resource
    private CarService carService;

    //    查找该用户购物车
    @RequestMapping("/findCars.do")
    @ResponseBody
    public List<Car> findCars(String userPhone) {
        List<Car> list = carService.findCars(userPhone);
        System.out.println("返回的：" + list);
        return list;
    }
}
