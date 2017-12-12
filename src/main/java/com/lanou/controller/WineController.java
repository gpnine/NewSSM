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
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/wine")
public class WineController {

    @Resource
    private WineService wineService;
    @Resource
    private UserService userService;
    @Resource
    private CarService carService;


    //    查找
    @RequestMapping("/findWines.do")
    public void findWines() {
        List<Wine> wines = wineService.findWines();
    }

    //    模糊查询
    @RequestMapping("/findLike.do")
    @ResponseBody
    public List<Wine> findLike(String likeName, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
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
        return wines;
    }

    //    热销
    @RequestMapping("/rexiao.do")
    @ResponseBody
    public List<Wine> rexiao(HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        List<Wine> wines = wineService.rexiao();
        return wines;
    }

    //    商品详情
    @RequestMapping(value = "/goods.do")
    public String goods_detile(Integer wid, HttpServletRequest request) {


        request.setAttribute("wid", wid);
        List<Wine> wineList = userService.liuLanJiLu();
        request.setAttribute("wineList", wineList);

        List<Wine> wineList1 = userService.guanZhu();
        request.setAttribute("wineList1", wineList1);

        List<Wine> wineList2 = userService.shangPinTuiJian();
        request.setAttribute("wineList2", wineList2);

        Wine wine = wineService.goods_detile(wid);
        request.setAttribute("wineInfo", wine);
        return "/Ljp_Xiang_Info/html/01.Ljp_info";
    }

    //    查找该用户购物车
    @RequestMapping("/findCars.do")
    @ResponseBody
    public List<Car> findCars(String userPhone,HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        List<Car> list = carService.findCars(userPhone);
        return list;
    }


    //    添加商品到购物车
    @RequestMapping("/addCars.do")
    @ResponseBody
    public int addCars(String userPhone, Integer goodsId, Integer counts, HttpSession session) {
        int result = carService.insertShop(userPhone, goodsId, counts);


        List<Car> cars = userService.cars(userPhone);
        for (int i = 0; i < cars.size(); i++) {
            int w = cars.get(i).getWineId();
            Wine wi = userService.selectCar(w);
            cars.get(i).setWines(wi);
        }
        session.setAttribute("cars", cars);

        return result;
    }


}
