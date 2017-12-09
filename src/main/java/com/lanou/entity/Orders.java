package com.lanou.entity;

/**
 * Created by lanou on 2017/12/9.
 */
public class Orders {
    private int OrderId;
    private String OrderPay;
    private String OrderWuliu;
    private double OrderAllMoney;
    private int OrderWineId;
    private int UserId;
    private int WineId;
    private String OrderTicket;
    private String OrderText;
    private int OrderScore;
    private double OrderYunfei;

    public Orders() {
        super();
    }

    public Orders(int orderId, String orderPay, String orderWuliu, double orderAllMoney, int orderWineId, int userId, int wineId, String orderTicket, String orderText, int orderScore, double orderYunfei) {
        OrderId = orderId;
        OrderPay = orderPay;
        OrderWuliu = orderWuliu;
        OrderAllMoney = orderAllMoney;
        OrderWineId = orderWineId;
        UserId = userId;
        WineId = wineId;
        OrderTicket = orderTicket;
        OrderText = orderText;
        OrderScore = orderScore;
        OrderYunfei = orderYunfei;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "OrderId=" + OrderId +
                ", OrderPay='" + OrderPay + '\'' +
                ", OrderWuliu='" + OrderWuliu + '\'' +
                ", OrderAllMoney=" + OrderAllMoney +
                ", OrderWineId=" + OrderWineId +
                ", UserId=" + UserId +
                ", WineId=" + WineId +
                ", OrderTicket='" + OrderTicket + '\'' +
                ", OrderText='" + OrderText + '\'' +
                ", OrderScore=" + OrderScore +
                ", OrderYunfei=" + OrderYunfei +
                '}';
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

    public String getOrderWuliu() {
        return OrderWuliu;
    }

    public void setOrderWuliu(String orderWuliu) {
        OrderWuliu = orderWuliu;
    }

    public double getOrderAllMoney() {
        return OrderAllMoney;
    }

    public void setOrderAllMoney(double orderAllMoney) {
        OrderAllMoney = orderAllMoney;
    }

    public int getOrderWineId() {
        return OrderWineId;
    }

    public void setOrderWineId(int orderWineId) {
        OrderWineId = orderWineId;
    }

    public int getUserId() {
        return UserId;
    }

    public void setUserId(int userId) {
        UserId = userId;
    }

    public int getWineId() {
        return WineId;
    }

    public void setWineId(int wineId) {
        WineId = wineId;
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
