package com.lanou.controller;

import com.lanou.entity.Huichang;
import com.lanou.entity.Wine;
import com.lanou.service.HuichangService;
import com.lanou.service.WineService;
import com.lanou.util.FastJson_Ali;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/huichang")
public class HuichangController {

    @Resource
    private HuichangService huichangservice;
    @Resource
    private WineService wineService;

    @RequestMapping("/baijiu.do")
    @ResponseBody
    public Map<String, Object> baijiu(HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        Map<String, Object> baijiu = new HashMap<String, Object>();
        List<Huichang> baijiuloucen = huichangservice.findHuichang(1);
        List<Huichang> bkdaT1 = huichangservice.findBigtu(12, 1);
        List<Huichang> bkdaT2 = huichangservice.findBigtu(13, 1);
        List<Huichang> bkdaT3 = huichangservice.findBigtu(14, 1);
        List<Huichang> bkzjShangping1 = huichangservice.findBigtu(12, 0);
        List<Huichang> bkzjShangping2 = huichangservice.findBigtu(13, 0);
        List<Huichang> bkzjShangping3 = huichangservice.findBigtu(14, 0);
        List<Wine> bkzjWines1 = wineService.findScope1(1151, 1160);
        List<Wine> bkzjWines2 = wineService.findScope1(1161, 1172);
        List<Wine> bkzjWines3 = wineService.findScope1(1173, 1184);
        baijiu.put("baijiuloucen", baijiuloucen);
        baijiu.put("bkdaT1", bkdaT1);
        baijiu.put("bkdaT2", bkdaT2);
        baijiu.put("bkdaT3", bkdaT3);
        baijiu.put("bkzjShangping1", bkzjShangping1);
        baijiu.put("bkzjShangping2", bkzjShangping2);
        baijiu.put("bkzjShangping3", bkzjShangping3);
        baijiu.put("bkzjWines1", bkzjWines1);
        baijiu.put("bkzjWines2", bkzjWines2);
        baijiu.put("bkzjWines3", bkzjWines3);
        return baijiu;
    }

    @RequestMapping("/hongyang.do")
    @ResponseBody
    public Map<String, Object> hongyang(HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        Map<String, Object> hongyang = new HashMap<String, Object>();
        List<Huichang> hongyangloucen = huichangservice.findHuichang(2);
        List<Huichang> hongyangdaT1 = huichangservice.findBigtu(22, 1);
        List<Huichang> hongyangdaT2 = huichangservice.findBigtu(23, 1);
        List<Huichang> hongyangdaT3 = huichangservice.findBigtu(24, 1);
        List<Huichang> hongyangdaT4 = huichangservice.findBigtu(25, 1);
        List<Huichang> hongyangShangping1 = huichangservice.findBigtu(22, 0);
        List<Huichang> hongyangShangping2 = huichangservice.findBigtu(23, 0);
        List<Huichang> hongyangShangping3 = huichangservice.findBigtu(24, 0);
        List<Huichang> hongyangShangping4 = huichangservice.findBigtu(25, 0);
        List<Wine> hongyangWines = wineService.findScope1(2151, 2158);
        List<Wine> hongyangWines2 = wineService.findScope1(2159, 2162);
        List<Wine> hongyangWines3 = wineService.findScope1(2163, 2170);
        List<Wine> hongyangWines4 = wineService.findScope1(2171, 2178);
        hongyang.put("hongyangloucen", hongyangloucen);
        hongyang.put("hongyangdaT1", hongyangdaT1);
        hongyang.put("hongyangdaT2", hongyangdaT2);
        hongyang.put("hongyangdaT3", hongyangdaT3);
        hongyang.put("hongyangdaT4", hongyangdaT4);
        hongyang.put("hongyangShangping1", hongyangShangping1);
        hongyang.put("hongyangShangping2", hongyangShangping2);
        hongyang.put("hongyangShangping3", hongyangShangping3);
        hongyang.put("hongyangShangping4", hongyangShangping4);
        hongyang.put("hongyangWines", hongyangWines);
        hongyang.put("hongyangWines2", hongyangWines2);
        hongyang.put("hongyangWines3", hongyangWines3);
        hongyang.put("hongyangWines4", hongyangWines4);
        return hongyang;
    }

    @RequestMapping("/maotai.do")
    @ResponseBody
    public Map<String, Object> maotai(HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        Map<String, Object> maotai = new HashMap<String, Object>();
        List<Huichang> maotailoucen = huichangservice.findHuichang(3);
        List<Huichang> maotaidaT1 = huichangservice.findBigtu(30, 1);
        List<Huichang> maotaiShangping1 = huichangservice.findBigtu(30, 0);
        List<Huichang> maotaiShangping2 = huichangservice.findBigtu(31, 0);
        List<Wine> maotaiWines1 = wineService.findScope1(3151, 3158);
        List<Wine> maotaiWines2 = wineService.findScope1(3159, 3162);
        maotai.put("maotailoucen", maotailoucen);
        maotai.put("maotaidaT1", maotaidaT1);
        maotai.put("maotaiShangping1", maotaiShangping1);
        maotai.put("maotaiShangping2", maotaiShangping2);
        maotai.put("maotaiWines1", maotaiWines1);
        maotai.put("maotaiWines2", maotaiWines2);
        return maotai;
    }

    @RequestMapping("/wuliangye.do")
    @ResponseBody
    public Map<String, Object> wuliangye(HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        Map<String, Object> wuliangye = new HashMap<String, Object>();
        List<Huichang> wuliangyeloucen = huichangservice.findHuichang(4);
        List<Huichang> wuliangyedaT1 = huichangservice.findBigtu(41, 1);
        List<Huichang> wuliangyeShangping1 = huichangservice.findBigtu(41, 0);
        List<Huichang> wuliangyeShangping2 = huichangservice.findBigtu(42, 0);
        List<Wine> wuliangyeWines1 = wineService.findScope1(4151, 4166);
        List<Wine> wuliangyeWines2 = wineService.findScope1(4167, 4174);
        wuliangye.put("wuliangyeloucen", wuliangyeloucen);
        wuliangye.put("wuliangyedaT1", wuliangyedaT1);
        wuliangye.put("wuliangyeShangping1", wuliangyeShangping1);
        wuliangye.put("wuliangyeShangping2", wuliangyeShangping2);
        wuliangye.put("wuliangyeWines1", wuliangyeWines1);
        wuliangye.put("wuliangyeWines2", wuliangyeWines2);
        return wuliangye;
    }

    @RequestMapping("/yanghe.do")
    @ResponseBody
    public Map<String, Object> yanghe(HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        Map<String, Object> yanghe = new HashMap<String, Object>();
        List<Huichang> yangheloucen = huichangservice.findHuichang(5);
        List<Huichang> yanghedaT1 = huichangservice.findBigtu(53, 1);
        List<Huichang> yangheShangping1 = huichangservice.findBigtu(51, 0);
        List<Huichang> yangheShangping2 = huichangservice.findBigtu(52, 0);
        yanghe.put("yangheloucen", yangheloucen);
        yanghe.put("yanghedaT1", yanghedaT1);
        yanghe.put("yangheShangping1", yangheShangping1);
        yanghe.put("yangheShangping2", yangheShangping2);
        return yanghe;
    }

    @RequestMapping("/tianyoude.do")
    @ResponseBody
    public Map<String, Object> tianyoude(HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        Map<String, Object> tianyoude = new HashMap<String, Object>();
        List<Huichang> tianyoudeloucen = huichangservice.findHuichang(6);
        List<Huichang> tianyoudeShangping1 = huichangservice.findBigtu(61, 0);
        List<Wine> tianyoudeWines1 = wineService.findScope1(6151, 6153);
        List<Wine> tianyoudeWines2 = wineService.findScope1(6154, 6161);
        List<Wine> tianyoudeWines3 = wineService.findScope1(6162, 6164);
        List<Wine> tianyoudeWines4 = wineService.findScope1(6165, 6171);
        List<Wine> tianyoudeWines5 = wineService.findScope1(6172, 6174);
        tianyoude.put("tianyoudeloucen", tianyoudeloucen);
        tianyoude.put("tianyoudeShangping1", tianyoudeShangping1);
        tianyoude.put("tianyoudeWines1", tianyoudeWines1);
        tianyoude.put("tianyoudeWines2", tianyoudeWines2);
        tianyoude.put("tianyoudeWines3", tianyoudeWines3);
        tianyoude.put("tianyoudeWines4", tianyoudeWines4);
        tianyoude.put("tianyoudeWines5", tianyoudeWines5);
        return tianyoude;
    }

    @RequestMapping("/niulanshan.do")
    @ResponseBody
    public Map<String, Object> niulanshan(HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        Map<String, Object> niulanshan = new HashMap<String, Object>();
        List<Huichang> niulanshanloucen = huichangservice.findHuichang(7);
        List<Huichang> niulanshandaT1 = huichangservice.findBigtu(71, 1);
        List<Wine> niulanshanWines1 = wineService.findScope1(7151, 7167);
        niulanshan.put("niulanshanloucen", niulanshanloucen);
        niulanshan.put("niulanshandaT1", niulanshandaT1);
        niulanshan.put("niulanshanWines1", niulanshanWines1);
        return niulanshan;
    }

    @RequestMapping("/luzhoulaojiao.do")
    @ResponseBody
    public Map<String, Object> luzhoulaojiao(HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        Map<String, Object> luzhoulaojiao = new HashMap<String, Object>();
        List<Huichang> luzhoulaojiaoloucen = huichangservice.findHuichang(8);
        List<Huichang> luzhoulaojiaodaT1 = huichangservice.findBigtu(81, 1);
        List<Wine> luzhoulaojiaoWines1 = wineService.findScope1(8151, 8170);
        luzhoulaojiao.put("luzhoulaojiaoloucen", luzhoulaojiaoloucen);
        luzhoulaojiao.put("luzhoulaojiaodaT1", luzhoulaojiaodaT1);
        luzhoulaojiao.put("luzhoulaojiaoWines1", luzhoulaojiaoWines1);
        return luzhoulaojiao;
    }

    @RequestMapping("/hongxing.do")
    @ResponseBody
    public Map<String, Object> hongxing(HttpServletResponse response) {
        FastJson_Ali.toJson(response);
        Map<String, Object> hongxing = new HashMap<String, Object>();
        List<Huichang> hongxingloucen = huichangservice.findHuichang(9);
        List<Huichang> hongxingdaT1 = huichangservice.findBigtu(91, 1);
        List<Huichang> hongShangping1 = huichangservice.findBigtu(91, 0);
        List<Wine> hongxingWines1 = wineService.findScope1(9151, 9160);
        hongxing.put("hongxingloucen", hongxingloucen);
        hongxing.put("hongxingdaT1", hongxingdaT1);
        hongxing.put("hongShangping1", hongShangping1);
        hongxing.put("hongxingWines1", hongxingWines1);
        return hongxing;
    }
}
