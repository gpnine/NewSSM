package com.lanou.controller;

import com.lanou.entity.*;
import com.lanou.service.*;
import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Resource
    private AdminService adminService;
    @Resource
    private IndexService indexService;
    @Resource
    private OrdersService ordersService;
    @Resource
    private WineService wineService;


    @RequestMapping("/adminLogin.do")
    public String adminLogin(String userPhone, String password, HttpSession session) {

        boolean result = adminService.adminLogin(userPhone, password);

        if (result) {
            List<AdminFunction> list = adminService.adminFunction();
            session.setAttribute("Afun", list);

            List<Banner> banners = indexService.index();
            session.setAttribute("Banner", banners);

            List<Wine> wines = adminService.showWine();
            session.setAttribute("wines", wines);


            List<Shop> shops = adminService.showShop();
            session.setAttribute("shops", shops);


            List<Orders> orders = ordersService.dingdan();
            for (int j = 0; j < orders.size(); j++) {
//            获取订单号
                int orderId = orders.get(j).getOrderId();
//            获取总价
//            根据订单号找到对应商品
                List<OrderAndWine> orderAndWines = ordersService.findWines(orderId);
                for (int i = 0; i < orderAndWines.size(); i++) {
                    Wine wine = wineService.findWineByWineId(orderAndWines.get(i).getWine_id());
                    orderAndWines.get(i).setWine(wine);
                }
                orders.get(j).setOrderAndWines(orderAndWines);
                System.out.println("asd");
            }
            System.out.println("orders:"+orders);
            session.setAttribute("orders",orders);
            return "Admin/bms_html/BMS";
        }
        return "Admin/bms_html/bms_login";
    }


    public void as(){

    }




    @RequestMapping(value = "/addBanner.do")
    public String addBanner(HttpSession session,MultipartFile myFile,String bannerSrc ) {
        File files = new File("resource/views/img/Banner_img/"+bannerSrc);
        try {
            FileUtils.copyInputStreamToFile(myFile.getInputStream(),files);
        } catch (IOException e) {
            e.printStackTrace();
        }
//        boolean result = adminService.addBanner("resource/views/img/Banner_img/"+bannerSrc);

        boolean result = adminService.addBanner("resource/views/img/Banner_img/"+bannerSrc);

        List<AdminFunction> list = adminService.adminFunction();
        session.setAttribute("Afun", list);
        List<Banner> banners = indexService.index();
        session.setAttribute("Banner",banners);
        return "Admin/bms_html/BMS";
    }


    @RequestMapping(value = "/delBanner.do",method = RequestMethod.POST)
    public String delBanner(String bannerSrc,HttpSession session) {
        boolean result = adminService.delBanner(bannerSrc);



        List<Banner> banners = indexService.index();
        session.setAttribute("Banner",banners);


        return "Admin/bms_html/BMS";
    }


    @RequestMapping(value = "/updeWine.do",method = RequestMethod.POST)
    public void updeWine(Integer WId,String WineName,double WinePrice,String WineScent,String WineCity,HttpSession session) {
        Wine wine = new Wine();
        wine.setWineName(WineName);
        wine.setWinePrice(WinePrice);
        wine.setWineScent(WineScent);
        wine.setWineCity(WineCity);
        wine.setWId(WId);
        adminService.updeWine(wine);

    }



    @RequestMapping("/goodsDetile.do")
    public String goodsDetile(int id,HttpSession session) {
        Wine wine = adminService.selectGoodsById(id);
        session.setAttribute("goods",wine);
        return "Admin/bms_html/bms_firstpage_pay";
    }


    @RequestMapping("/goodsAdd.do")
    public String goodsAdd(int id) {
        boolean result = adminService.addGoodsById(id);
        return "success";
    }

    @RequestMapping("/goodsDelete.do")
    public String goodsDelete(int id,HttpSession session) {
        boolean result = adminService.deleteGoodsById(id);
        return "success";
    }


    Integer i =1;
    String WineImg1;
    @RequestMapping("/insertGoods.do")
    public String insertGoods(String WineName,String WineBianhao,Double WinePrice,MultipartFile imgFile,Integer WineSales) {
        String imgName = i+".jpg";
        File files = new File("/Users/lanou/Desktop/zjw/NewSSM/src/main/webapp/resource/views/img/wine1/"+imgName);
        try {
            FileUtils.copyInputStreamToFile(imgFile.getInputStream(),files);
        } catch (IOException e) {
            e.printStackTrace();
        }


        Wine wine = new Wine();
        wine.setWineName(WineName);
        wine.setWineBianhao(WineBianhao);
        wine.setWinePrice(WinePrice);
        wine.setWineSales(WineSales);
        wine.setWineImg1("wine1/"+imgName);
        wine.setWId(i++);
        boolean resule = adminService.insertGoods(wine);
        return "success";
    }



    @RequestMapping("/deleteLogo.do")
    public String deleteLogo(Integer logoId,HttpSession session) {
        boolean result = adminService.deleteLogo(logoId);
        return "success";
    }








}












