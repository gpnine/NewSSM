package com.lanou.entity;

/**
 * Created by lanou on 2017/12/2.
 */
public class User {
    private Integer uId;
    private String userPhone;
    private String password;
    private String userAdress;
    private double money;
    private Integer userVip;

    public User() {
        super();
    }

    @Override
    public String toString() {
        return "User{" +
                "uId=" + uId +
                ", userPhone='" + userPhone + '\'' +
                ", password='" + password + '\'' +
                ", userAdress='" + userAdress + '\'' +
                ", money=" + money +
                ", userVip=" + userVip +
                '}';
    }

    public User(Integer uId, String userPhone, String password, String userAdress, double money, Integer userVip) {
        this.uId = uId;
        this.userPhone = userPhone;
        this.password = password;
        this.userAdress = userAdress;
        this.money = money;
        this.userVip = userVip;
    }

    public Integer getuId() {

        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserAdress() {
        return userAdress;
    }

    public void setUserAdress(String userAdress) {
        this.userAdress = userAdress;
    }

    public double getMoney() {
        return money;
    }

    public void setMoney(double money) {
        this.money = money;
    }

    public Integer getUserVip() {
        return userVip;
    }

    public void setUserVip(Integer userVip) {
        this.userVip = userVip;
    }
}
