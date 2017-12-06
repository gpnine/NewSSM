package com.lanou.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

public class FastJson_Ali {

	public static void toJson(HttpServletResponse response) {
		response.setContentType("text/html; charset=UTF-8");
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setCharacterEncoding("utf-8");
//		String jsonStr = JSON.toJSONString(obj);
//		PrintWriter out = null;
//		try {
//			out = response.getWriter();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		out.write(jsonStr);
//		out.flush();
	}
	
	
}
