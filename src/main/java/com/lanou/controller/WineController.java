package com.lanou.controller;

import com.lanou.entity.User;
import com.lanou.entity.Wine;
import com.lanou.service.UserService;
import com.lanou.service.WineService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
        System.out.print(wines);
        return wines;
    }


//    商品详情
@RequestMapping(value="/goods.do")
public String goods_detile(Integer goodsId, HttpServletRequest request){

    List<Wine> wineList = userService.liuLanJiLu();
    request.setAttribute("wineList",wineList);

    List<Wine> wineList1 = userService.guanZhu();
    request.setAttribute("wineList1",wineList1);


    List<Wine> wineList2 = userService.shangPinTuiJian();
    request.setAttribute("wineList2",wineList2);


   Wine wine =  wineService.goods_detile(goodsId);
    request.setAttribute("wineInfo",wine);
    return "/Ljp_Xiang_Info/html/01.Ljp_info";
}

}
