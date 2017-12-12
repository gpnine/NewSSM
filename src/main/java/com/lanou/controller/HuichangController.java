package com.lanou.controller;

import com.lanou.entity.Huichang;
import com.lanou.service.HuichangService;
import com.lanou.util.FastJson_Ali;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/huichang")
public class HuichangController {

    @Resource
    private HuichangService huichangservice;

    @RequestMapping("/findhuichang.do")
    @ResponseBody
    public Map<String, Object> findHuichang(Integer parentId, HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        Map<String, Object> map = new HashMap<String, Object>();
        List<Huichang> huichangs1 = huichangservice.findHuichang(1);
        List<Huichang> datu1 = huichangservice.findHuichang(12);
        List<Huichang> datu2 = huichangservice.findHuichang(13);
        List<Huichang> datu3 = huichangservice.findHuichang(14);

        return map;
    }
}
