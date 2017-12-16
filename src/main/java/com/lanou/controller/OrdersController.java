package com.lanou.controller;

import com.lanou.entity.*;
import com.lanou.service.CarService;
import com.lanou.service.OrdersService;
import com.lanou.service.WineService;
import com.lanou.util.FastJson_Ali;
import org.aspectj.weaver.ast.Or;
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
@RequestMapping("/orders")
public class OrdersController {

    @Resource
    private OrdersService ordersService;
    @Resource
    private WineService wineService;
    @Resource
    private CarService carService;

    //    查找该用户购物车
    @RequestMapping("/findCars.do")
    @ResponseBody
    public List<Car> findCars(String userPhone, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        List<Car> list = carService.findCars(userPhone);
        return list;
    }

    //根据酒的id找到对应的酒
    @RequestMapping("/findWine.do")
    @ResponseBody
    public Wine findWineByWineId(Integer wineId, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        Wine wine = wineService.findWineByWineId(wineId);
        return wine;
    }

    //查看订单
    @RequestMapping("/findOrders.do")
    @ResponseBody
    public List<Orders> findOrders(String userPhone, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        List<Orders> orders = ordersService.yiZhifu(userPhone);
        for (int j = 0; j < orders.size(); j++) {
            int orderId = orders.get(j).getOrderId();
            double ordersAllMoney = orders.get(j).getOrderAllMoney();
            orders.get(j).setOrderAllMoney(ordersAllMoney);
            List<OrderAndWine> orderAndWines = ordersService.findWines(orderId);
            for (int i = 0; i < orderAndWines.size(); i++) {
                Wine wine = wineService.findWineByWineId(orderAndWines.get(i).getWine_id());
                orders.get(i).setWine(wine);
            }
        }
        return orders;
    }

    //根据xId找到物流地址
    @RequestMapping("/findByxId.do")
    @ResponseBody
    public WuliuAdress findByxId(Integer xId, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        WuliuAdress wuliuAdresses = ordersService.findByxId(xId);
        return wuliuAdresses;
    }

    //修改物流地址
    @RequestMapping("/UpdateAdress.do")
    @ResponseBody
    public String UpdateAdress(String ShouhuoName, String ShouhuoAdress, String XiangxiAdress, String ShouhuoPhone, Integer xId, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        int result = ordersService.UpdateAdress(ShouhuoName, ShouhuoAdress, XiangxiAdress, ShouhuoPhone, xId);
        if (result == 0) {
            return "false";
        } else {
            return "true";
        }
    }

    //删除物流地址
    @RequestMapping("/DeleteAdress.do")
    @ResponseBody
    public String DeleteAdress(Integer xId, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        int result = ordersService.DeleteAdress(xId);
        if (result == 0) {
            return "false";
        } else {
            return "true";
        }
    }

    //找到订单中的酒
    @RequestMapping("/findWines.do")
    @ResponseBody
    public List<Car> findWines(String userPhone, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        Orders order = ordersService.weiZhifu(userPhone);
        int orderId = order.getOrderId();
        List<OrderAndWine> orderAndWines = ordersService.findWines(orderId);
        List<Car> cars = new ArrayList<Car>();
        for (int i = 0; i < orderAndWines.size(); i++) {
            Car car = carService.findUserWine(userPhone, orderAndWines.get(i).getWine_id());
            cars.add(car);
        }
        return cars;
    }

    //更新订单信息
    @RequestMapping("/updateOrders.do")
    @ResponseBody
//    http://10.80.13.161:8080/orders/updateOrders.do?OrderPay=在线支付&OrderAllMoney=1000&OrderWineId=1001&UserId=1&OrderTicket=不需要发票&OrderText=老板你好帅&OrderScore=10&OrderYunfei=50&Adresss_id=1
    public String insertOrders(String OrderPay, double OrderAllMoney, String OrderTicket, String OrderText, int OrderScore, double OrderYunfei, int Adress_id, String userPhone, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        System.out.println("+++++++++++++++++++++++++++++++++++++++");
        System.out.println(userPhone);
        int result = ordersService.updateOrders(OrderPay, OrderAllMoney, OrderTicket, OrderText, OrderScore, OrderYunfei, Adress_id, userPhone);
        if (result == 0) {
            return "false";
        } else {
            return "true";
        }
    }

    //插入未支付的订单
    @RequestMapping("/insertOrder.do")
    @ResponseBody
//    http://10.80.13.161:8080/orders/insertOrders.do?OrderPay=在线支付&OrderAllMoney=1000&OrderWineId=1001&UserId=1&OrderTicket=不需要发票&OrderText=老板你好帅&OrderScore=10&OrderYunfei=50
    public String insertOrder(String userPhone, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        int result = ordersService.insertOrder(userPhone);
        if (result == 0) {
            return "false";
        } else {
            return "true";
        }
    }

    //添加物流地址
    @RequestMapping("/insertAdress.do")
    @ResponseBody
//    http://10.80.13.161:8080/orders/insertAdress.do?ShouhuoName=朱成林&SHouhuoAdress=安徽省&XiangxiAdress=池州&ShouhuoPhone=13859642315&user_id=1
    public String insertAdress(String ShouhuoName, String ShouhuoAdress, String XiangxiAdress, String ShouhuoPhone, String userPhone, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        int result = ordersService.insertAdress(ShouhuoName, ShouhuoAdress, XiangxiAdress, ShouhuoPhone, userPhone);
        if (result == 0) {
            return "false";
        } else {
            return "true";
        }
    }

    //显示物流地址
    @RequestMapping("/selectWuliu.do")
    @ResponseBody
//    http://10.80.13.161:8080/orders/insertAdress.do?ShouhuoName=朱成林&SHouhuoAdress=安徽省&XiangxiAdress=池州&ShouhuoPhone=13859642315&userPhone=1
    public String selectWuliu(String ShouhuoName, String SHouhuoAdress, String XiangxiAdress, String ShouhuoPhone, String userPhone, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        int result = ordersService.insertAdress(ShouhuoName, SHouhuoAdress, XiangxiAdress, ShouhuoPhone, userPhone);
        if (result == 0) {
            return "false";
        } else {
            return "true";
        }
    }

    //显示总价格
    @RequestMapping("/findAllMoney.do")
    @ResponseBody
    public double findAllMoney(String userPhone, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        Orders orders = ordersService.findAllMoney(userPhone);
        double moneys = orders.getOrderAllMoney();
        return moneys;
    }

    //插入选中的酒到订单中（外键表）
    @RequestMapping("/insertWine.do")
    @ResponseBody
//    http://10.80.13.161:8080/orders/insertWine.do?order_id=1&wine_id=1001
    public String insertWine(String userPhone, String wineId, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        Orders order = ordersService.weiZhifu(userPhone);
        int orderId = order.getOrderId();
        String[] wineArr = wineId.split("\\-");
        int result = 0;
        for (int i = 0; i < wineArr.length; i++) {
            int wid = Integer.parseInt(wineArr[i]);
            int counts = carService.selectCount1(wid, userPhone);
            ordersService.insertWine(orderId, wid, counts);
        }
        if (result == 0) {
            return "false";
        } else {
            return "true";
        }
    }

    //未支付的订单
    @RequestMapping("/weiZhifu.do")
    @ResponseBody
//    http://10.80.13.161:8080/orders/insertWine.do?order_id=1&wine_id=1001
    public String weiZhifu(String userPhone, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        Orders order = ordersService.weiZhifu(userPhone);
        int orderId = order.getOrderId();
        if (orderId == 0) {
            return "false";
        } else {
            return "true";
        }
    }

    @RequestMapping("/clearCar.do")
    @ResponseBody
    public String clearCar(String userPhone, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        int result = carService.clearCar(userPhone);
        if (result == 0) {
            return "false";
        } else {
            return "true";
        }
    }

    @RequestMapping("/findWuliu.do")
    @ResponseBody
    public List<WuliuAdress> findWuliu(String userPhone, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        List<WuliuAdress> wuliu = ordersService.findWuliu(userPhone);
        return wuliu;
    }

    @RequestMapping("/ShifouZhifu.do")
    @ResponseBody
    public String ShifouZhifu(String userPhone, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        int result = ordersService.ShifouZhifu(userPhone);
        if (result == 0) {
            return "false";
        } else {
            return "true";
        }
    }

//    @RequestMapping("/tijiaoDingdan.do")
//    @ResponseBody
////    http://10.80.13.161:8080/orders/tijiaoDingdan.do?userPhone=1
//    public String tijiaoDingdan(String userPhone, HttpServletResponse response) {
//        FastJson_Ali.toJson(response);
//        int result = ordersService.tijiaoDingdan(userPhone);
//        if (result == 0) {
//            return "false";
//        } else {
//            return "true";
//        }
//    }
}
