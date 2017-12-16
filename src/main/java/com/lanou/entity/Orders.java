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
    private List<OrderAndWine> orderAndWines;

    public Orders() {
        super();
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
                ", orderAndWines=" + orderAndWines +
                '}';
    }

    public List<OrderAndWine> getOrderAndWines() {
        return orderAndWines;
    }

    public void setOrderAndWines(List<OrderAndWine> orderAndWines) {
        this.orderAndWines = orderAndWines;
    }

    public Orders(int orderId, String orderPay, double orderAllMoney, String userPhone, String orderTicket, String orderText, int orderScore, double orderYunfei, int yesOrNo, int adress_id, int gouwuCishu, int shifouZhifu, List<OrderAndWine> orderAndWines) {
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
        this.orderAndWines = orderAndWines;
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

    public String getUserPhone() {
        return UserPhone;
    }

    public void setUserPhone(String userPhone) {
        UserPhone = userPhone;
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

    public int getYesOrNo() {
        return YesOrNo;
    }

    public void setYesOrNo(int yesOrNo) {
        YesOrNo = yesOrNo;
    }

    public int getAdress_id() {
        return Adress_id;
    }

    public void setAdress_id(int adress_id) {
        Adress_id = adress_id;
    }

    public int getGouwuCishu() {
        return GouwuCishu;
    }

    public void setGouwuCishu(int gouwuCishu) {
        GouwuCishu = gouwuCishu;
    }

    public int getShifouZhifu() {
        return ShifouZhifu;
    }

    public void setShifouZhifu(int shifouZhifu) {
        ShifouZhifu = shifouZhifu;
    }

}
