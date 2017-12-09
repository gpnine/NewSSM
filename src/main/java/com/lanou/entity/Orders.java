package com.lanou.entity;

/**
 * Created by lanou on 2017/12/9.
 */
public class Orders {
    private int OrderId;
    private String OrderPay;
    private String OrderWuliu;
    private Double OrderAllMoney;
    private int OrderWineId;
    private int UserId;
    private int WineId;
    private String OrderTicket;
    private String OrderText;
    private int OrderScore;
    private Double OrderYunfei;

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

    public Double getOrderAllMoney() {
        return OrderAllMoney;
    }

    public void setOrderAllMoney(Double orderAllMoney) {
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

    public Double getOrderYunfei() {
        return OrderYunfei;
    }

    public void setOrderYunfei(Double orderYunfei) {
        OrderYunfei = orderYunfei;
    }

    public Orders() {
        super();
    }

    @Override
    public String toString() {
        return "Order{" +
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

    public Orders(int orderId, String orderPay, String orderWuliu, Double orderAllMoney, int orderWineId, int userId, int wineId, String orderTicket, String orderText, int orderScore, Double orderYunfei) {
        this.OrderId = orderId;
        this.OrderPay = orderPay;
        this.OrderWuliu = orderWuliu;
        this.OrderAllMoney = orderAllMoney;
        this.OrderWineId = orderWineId;
        this.UserId = userId;
        this.WineId = wineId;
        this.OrderTicket = orderTicket;
        this.OrderText = orderText;
        this.OrderScore = orderScore;
        this.OrderYunfei = orderYunfei;
    }
}
