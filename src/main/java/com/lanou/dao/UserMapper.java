package com.lanou.dao;


import com.lanou.entity.User;
import com.lanou.entity.Wine;

import java.util.List;

public interface UserMapper {
    public List<User> findUsers();
    public User findUserById(Integer uId);

    public User findUserPhone(String iphone);

    public int insertUser(User user);

    public User login(User user);

    public void updatePassword(User user);

    public List<Wine> liuLanJiLu();

    public List<Wine> guanZhu();

    public List<Wine> shangPinTuiJian();
}
