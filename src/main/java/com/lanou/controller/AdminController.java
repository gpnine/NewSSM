package com.lanou.controller;

import com.lanou.entity.*;
import com.lanou.service.AdminService;
import com.lanou.service.CarService;
import com.lanou.service.IndexService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Resource
    private AdminService adminService;
    @Resource
    private IndexService indexService;


    @RequestMapping("/adminLogin.do")
    public String adminLogin(String userPhone, String password, HttpSession session) {

       boolean result = adminService.adminLogin(userPhone, password);

       if(result){
           List<AdminFunction> list = adminService.adminFunction();
           session.setAttribute("Afun", list);

           List<Banner> banners = indexService.index();
           session.setAttribute("Banner",banners);

           List<Wine> wines = adminService.showWine();
           System.out.println("wines:"+wines);
           session.setAttribute("wines",wines);


           List<Shop> shops = adminService.showShop();
           System.out.println("shops:"+shops);
           session.setAttribute("shops",shops);


           return "Admin/bms_html/BMS";
       }
       return "Admin/bms_html/bms_login";
    }



    @RequestMapping(value = "/addBanner.do",method = RequestMethod.POST)
    public String addBanner(String bannerSrc,HttpSession session) {

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



    @RequestMapping("/insertGoods.do")
    public String insertGoods(String WineName,String WineBianhao,Double WinePrice,String WineImg1) {
        Integer i =1;
        Wine wine = new Wine();
        wine.setWineName(WineName);
        wine.setWineBianhao(WineBianhao);
        wine.setWinePrice(WinePrice);
        wine.setWineImg1(WineImg1);
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












