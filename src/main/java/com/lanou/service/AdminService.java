package com.lanou.service;

import com.lanou.entity.AdminFunction;
import com.lanou.entity.Banner;

import java.util.List;

/**
 * Created by lanou on 2017/12/9.
 */
public interface AdminService {
    public boolean adminLogin(String userPhone,String password);

    public List<AdminFunction> adminFunction();

    public boolean addBanner (String bannerScr);

    public boolean delBanner (String bannerScr);
}
