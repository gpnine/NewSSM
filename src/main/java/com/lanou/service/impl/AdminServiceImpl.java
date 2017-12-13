package com.lanou.service.impl;

import com.lanou.dao.AdminMapper;
import com.lanou.entity.*;
import com.lanou.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by lanou on 2017/12/9.
 */
@Service("adminService")
public class AdminServiceImpl implements AdminService{
    @Autowired
    private AdminMapper adminMapper;

    public boolean adminLogin(String userPhone,String password) {
        User user = new User();
        user.setUserPhone(userPhone);
        user.setPassword(password);
        List<User> list = adminMapper.adminLogin(user);
        boolean result = (list.size() != 0);
        return result;
    }

    public List<AdminFunction> adminFunction() {
        List<AdminFunction> list = adminMapper.adminFunction();
        return list;
    }

    public boolean addBanner(String bannerScr) {
        int i = adminMapper.addBanner(bannerScr);
        if (i!=0){
            return true;
        }
        return false;
    }

    public boolean delBanner(String bannerScr) {

        int i = adminMapper.delBanner(bannerScr);
        if (i!=0){
            return true;
        }
        return false;
    }

    public List<Wine> showWine() {
        List<Wine> list = adminMapper.showWine();
         return list;
    }

    public void updeWine(Wine wine){
        adminMapper.updaWine(wine);
    }

    public List<Shop> showShop() {
        List<Shop> list = adminMapper.showShop();
        return list;
    }

    public Wine selectGoodsById(int id) {
        Wine wine = adminMapper.selectGoodsById(id);
        return wine;
    }

    public boolean deleteGoodsById(int id) {
       int i = adminMapper.deleteGoodsById(id);
       if (i!=0){
           return true;
       }
        return false;
    }


    public boolean addGoodsById(int id) {
        int i = adminMapper.addGoodsById(id);
        if (i!=0){
            return true;
        }
        return false;
    }

    public boolean insertGoods(Wine wine){
        int i = adminMapper.insertGoods(wine);
        if (i!=0){
            return true;
        }
        return false;
    }

    public boolean deleteLogo(Integer logoId) {
        int i = adminMapper.deleteLogo(logoId);
        if (i!=0){
            return true;
        }
        return false;
    }
}
