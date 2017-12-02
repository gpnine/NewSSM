package com.lanou.dao;


import com.lanou.entity.User;

import java.util.List;

public interface UserMapper {
    public List<User> findUsers();

    public User findUserPhone(String iphone);

    public int insertUser(User user);

    public User login(User user);
}
