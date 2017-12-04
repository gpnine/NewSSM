package com.lanou.controller;

import com.alibaba.fastjson.JSON;
import com.lanou.entity.Teacher;
import com.lanou.entity.User;
import com.lanou.service.TeacherService;
import com.lanou.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    private UserService userService;

    //    查找所有用户
    @RequestMapping("/findUser.do")
    public void finds() {
        List<User> users = userService.findUsers();
        System.out.print(users);
    }

    //    查看手机号是否已存在
    @RequestMapping(value = "/findUserPhone.do", method = RequestMethod.POST)
    @ResponseBody
    public String findUserPhone(String userPhone) throws IOException {
        System.out.println(userPhone);
        User user = userService.findUserPhone(userPhone);
        System.out.print(user);
        if (user != null) {
            return "false";
        } else {
            return "true";
        }
    }

    //    注册后插入用户
    @RequestMapping(value = "/insertUser.do", method = RequestMethod.POST)
    public String insertUser(String userPhone,String password) throws IOException {
        System.out.println(userPhone);
        System.out.println(password);
        int result = userService.insertUser(userPhone,password);
        System.out.print(result);
        if (result == 0) {
            return "false";
        } else {
            return "index";
        }
    }

    //   登录
    @RequestMapping(value = "/login.do")
    @ResponseBody
    public String login(HttpSession session,User user) throws IOException {
        User user1 = userService.findUser(user);
        session.setAttribute("user1",user1);
        System.out.print(user1);
        if (user1 != null) {
            return "false";
        } else {
            return "true";
        }

    }
}
