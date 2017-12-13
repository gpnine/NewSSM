package com.lanou.service;

import com.lanou.entity.*;

import java.util.List;

/**
 * Created by lanou on 2017/12/9.
 */
public interface AdminService {
    public boolean adminLogin(String userPhone,String password);

    public List<AdminFunction> adminFunction();

    public boolean addBanner (String bannerScr);

    public boolean delBanner (String bannerScr);

    public List<Wine> showWine();

    public void updeWine(Wine wine);

    public List<Shop> showShop();

    public Wine selectGoodsById(int id);

    public boolean deleteGoodsById(int id);

    public boolean addGoodsById(int id);

    public boolean insertGoods(Wine wine);

    public boolean deleteLogo(Integer logoId);
}
