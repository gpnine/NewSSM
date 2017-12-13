package com.lanou.dao;

import com.lanou.entity.*;

import java.util.List;

/**
 * Created by lanou on 2017/12/11.
 */
public interface AdminMapper {

    public List<User> adminLogin(User user);

    public List<AdminFunction> adminFunction();

    public int addBanner(String bannerSrc);

    public int delBanner(String bannerSrc);

    public List<Wine> showWine();

    public int updaWine(Wine wine);

    public List<Shop> showShop();

    public Wine selectGoodsById(int id);

    public int deleteGoodsById(int id);

    public int addGoodsById(int id);

    public int insertGoods(Wine wine);

    public int deleteLogo(Integer logoId);
}
