package com.lanou.controller;

import com.lanou.entity.Huichang;
import com.lanou.service.HuichangService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/huichang")
public class HuichangController {

    @Resource
    private HuichangService huichangservice;

    @RequestMapping("/findhuichang.do")
    @ResponseBody
    public List<Huichang> findHuichang(Integer parentId){
        return huichangservice.findHuichang(parentId);
    }
}
