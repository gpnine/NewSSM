package com.lanou.entity;

import java.util.List;

/**
 * Created by lanou on 2017/12/9.
 */
public class Orders {
    private int OrderId;
    private String OrderPay;
    private double OrderAllMoney;
    private String UserPhone;
    private String OrderTicket;
    private String OrderText;
    private int OrderScore;
    private double OrderYunfei;
    private int YesOrNo;
    private int Adress_id;
    private int GouwuCishu;
    private int ShifouZhifu;
    private Wine wine;

    public Wine getWine() {
        return wine;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "OrderId=" + OrderId +
                ", OrderPay='" + OrderPay + '\'' +
                ", OrderAllMoney=" + OrderAllMoney +
                ", UserPhone='" + UserPhone + '\'' +
                ", OrderTicket='" + OrderTicket + '\'' +
                ", OrderText='" + OrderText + '\'' +
                ", OrderScore=" + OrderScore +
                ", OrderYunfei=" + OrderYunfei +
                ", YesOrNo=" + YesOrNo +
                ", Adress_id=" + Adress_id +
                ", GouwuCishu=" + GouwuCishu +
                ", ShifouZhifu=" + ShifouZhifu +
                ", wine=" + wine +
                ", wines=" + wines +
                '}';
    }

    public void setWine(Wine wine) {
        this.wine = wine;
    }

    public String getUserPhone() {
        return UserPhone;
    }

    public void setUserPhone(String userPhone) {
        UserPhone = userPhone;
    }

    public int getGouwuCishu() {
        return GouwuCishu;
    }

    public void setGouwuCishu(int gouwuCishu) {
        GouwuCishu = gouwuCishu;
    }

    public Orders(int orderId, String orderPay, double orderAllMoney, String userPhone, String orderTicket, String orderText, int orderScore, double orderYunfei, int yesOrNo, int adress_id, int gouwuCishu, int shifouZhifu, Wine wine, List<Wine> wines) {
        OrderId = orderId;
        OrderPay = orderPay;
        OrderAllMoney = orderAllMoney;
        UserPhone = userPhone;
        OrderTicket = orderTicket;
        OrderText = orderText;
        OrderScore = orderScore;
        OrderYunfei = orderYunfei;
        YesOrNo = yesOrNo;
        Adress_id = adress_id;
        GouwuCishu = gouwuCishu;
        ShifouZhifu = shifouZhifu;
        this.wine = wine;
        this.wines = wines;
    }

    public int getShifouZhifu() {
        return ShifouZhifu;
    }

    public void setShifouZhifu(int shifouZhifu) {
        ShifouZhifu = shifouZhifu;
    }

    public int getAdress_id() {
        return Adress_id;
    }

    public void setAdress_id(int adress_id) {
        Adress_id = adress_id;
    }

    public int getYesOrNo() {
        return YesOrNo;
    }

    public void setYesOrNo(int yesOrNo) {
        YesOrNo = yesOrNo;
    }

    private List<Wine> wines;

    public Orders() {
        super();
    }

    public List<Wine> getWines() {
        return wines;
    }

    public void setWines(List<Wine> wines) {
        this.wines = wines;
    }


    public int getOrderId() {
        return OrderId;
    }

    public void setOrderId(int orderId) {
        OrderId = orderId;
    }

    public String getOrderPay() {
        return OrderPay;
    }

    public void setOrderPay(String orderPay) {
        OrderPay = orderPay;
    }

    public double getOrderAllMoney() {
        return OrderAllMoney;
    }

    public void setOrderAllMoney(double orderAllMoney) {
        OrderAllMoney = orderAllMoney;
    }


    public String getOrderTicket() {
        return OrderTicket;
    }

    public void setOrderTicket(String orderTicket) {
        OrderTicket = orderTicket;
    }

    public String getOrderText() {
        return OrderText;
    }

    public void setOrderText(String orderText) {
        OrderText = orderText;
    }

    public int getOrderScore() {
        return OrderScore;
    }

    public void setOrderScore(int orderScore) {
        OrderScore = orderScore;
    }

    public double getOrderYunfei() {
        return OrderYunfei;
    }

    public void setOrderYunfei(double orderYunfei) {
        OrderYunfei = orderYunfei;
    }
}
