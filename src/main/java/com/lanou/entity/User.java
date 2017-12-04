package com.lanou.entity;

/**
 * Created by lanou on 2017/12/2.
 */
public class User {
    private Integer uId;

    private String userNickName;

    private String userPhone;

    private String userMail;
    private String userQQ;
    private String userTrueName;
    private Integer userGender;
    private String userIdentity;
    private String userDetilHome;
    private Integer userMask;

    public void setUserNickName(String userNickName) {
        this.userNickName = userNickName;
    }

    public void setUserMail(String userMail) {
        this.userMail = userMail;
    }

    public void setUserQQ(String userQQ) {
        this.userQQ = userQQ;
    }

    public void setUserTrueName(String userTrueName) {
        this.userTrueName = userTrueName;
    }



    public void setUserIdentity(String userIdentity) {
        this.userIdentity = userIdentity;
    }

    public void setUserDetilHome(String userDetilHome) {
        this.userDetilHome = userDetilHome;
    }

    public void setUserMask(Integer userMask) {
        this.userMask = userMask;
    }

    public String getUserNickName() {

        return userNickName;
    }

    public String getUserMail() {
        return userMail;
    }

    public String getUserQQ() {
        return userQQ;
    }

    public String getUserTrueName() {
        return userTrueName;
    }



    public String getUserIdentity() {
        return userIdentity;
    }

    public String getUserDetilHome() {
        return userDetilHome;
    }

    public Integer getUserMask() {
        return userMask;
    }

    private String password;
    private String userAdress;
    private double money;
    private Integer userVip;






    public User() {
        super();
    }

    public User(Integer uId, String userNickName, String userPhone, String userMail, String userQQ, String userTrueName, Integer userGender, String userIdentity, String userDetilHome, Integer userMask, String password, String userAdress, double money, Integer userVip) {
        this.uId = uId;
        this.userNickName = userNickName;
        this.userPhone = userPhone;
        this.userMail = userMail;
        this.userQQ = userQQ;
        this.userTrueName = userTrueName;
        this.userGender = userGender;
        this.userIdentity = userIdentity;
        this.userDetilHome = userDetilHome;
        this.userMask = userMask;
        this.password = password;
        this.userAdress = userAdress;
        this.money = money;
        this.userVip = userVip;
    }

    @Override
    public String toString() {
        return "User{" +
                "uId=" + uId +
                ", userNickName='" + userNickName + '\'' +
                ", userPhone='" + userPhone + '\'' +
                ", userMail='" + userMail + '\'' +
                ", userQQ='" + userQQ + '\'' +
                ", userTrueName='" + userTrueName + '\'' +
                ", userGender=" + userGender +
                ", userIdentity='" + userIdentity + '\'' +
                ", userDetilHome='" + userDetilHome + '\'' +
                ", userMask=" + userMask +
                ", password='" + password + '\'' +
                ", userAdress='" + userAdress + '\'' +
                ", money=" + money +
                ", userVip=" + userVip +
                '}';
    }

    public void setUserGender(Integer userGender) {
        this.userGender = userGender;
    }

    public Integer getUserGender() {

        return userGender;
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
