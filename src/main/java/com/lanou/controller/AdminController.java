package com.lanou.controller;

import com.lanou.entity.AdminFunction;
import com.lanou.entity.Banner;
import com.lanou.entity.User;
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
           System.out.println("Afun"+list);

           List<Banner> banners = indexService.index();
           System.out.println("Banner"+banners);
           session.setAttribute("Banner",banners);


           return "Admin/bms_html/BMS";
       }
       return "Admin/bms_html/bms_login";
    }



    @RequestMapping(value = "/addBanner.do",method = RequestMethod.POST)
    public String addBanner(String bannerSrc,HttpSession session) {

        boolean result = adminService.addBanner(bannerSrc);
        List<AdminFunction> list = adminService.adminFunction();
        session.setAttribute("Afun", list);
        System.out.println("Afun"+list);

        List<Banner> banners = indexService.index();
        System.out.println("Banner"+banners);
        session.setAttribute("Banner",banners);

        return "Admin/bms_html/BMS";
    }


    @RequestMapping(value = "/delBanner.do",method = RequestMethod.POST)
    public String delBanner(String bannerSrc,HttpSession session) {
        boolean result = adminService.delBanner(bannerSrc);
        System.out.println("result:"+result);


        List<Banner> banners = indexService.index();
        System.out.println("Banner"+banners);
        session.setAttribute("Banner",banners);


        return "Admin/bms_html/BMS";
    }

}
