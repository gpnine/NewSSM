package com.lanou.dao;

import com.lanou.entity.AdminFunction;
import com.lanou.entity.User;

import java.util.List;

/**
 * Created by lanou on 2017/12/11.
 */
public interface AdminMapper {

    public List<User> adminLogin(User user);

    public List<AdminFunction> adminFunction();

    public int addBanner(String bannerSrc);

    public int delBanner(String bannerSrc);
}
