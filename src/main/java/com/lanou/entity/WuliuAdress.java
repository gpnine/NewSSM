package com.lanou.entity;

/**
 * Created by lanou on 2017/12/10.
 */
public class WuliuAdress {
    private Integer xId;
    private String ShouhuoName;
    private String ShouhuoAdress;
    private String XiangxiAdress;
    private String ShouhuoPhone;
    private String UserPhone;

    public WuliuAdress(Integer xId, String shouhuoName, String shouhuoAdress, String xiangxiAdress, String shouhuoPhone, String userPhone) {
        this.xId = xId;
        ShouhuoName = shouhuoName;
        ShouhuoAdress = shouhuoAdress;
        XiangxiAdress = xiangxiAdress;
        ShouhuoPhone = shouhuoPhone;
        UserPhone = userPhone;
    }

    @Override
    public String toString() {
        return "WuliuAdress{" +
                "xId=" + xId +
                ", ShouhuoName='" + ShouhuoName + '\'' +
                ", ShouhuoAdress='" + ShouhuoAdress + '\'' +
                ", XiangxiAdress='" + XiangxiAdress + '\'' +
                ", ShouhuoPhone='" + ShouhuoPhone + '\'' +
                ", UserPhone='" + UserPhone + '\'' +
                '}';
    }

    public String getUserPhone() {
        return UserPhone;
    }

    public void setUserPhone(String userPhone) {
        UserPhone = userPhone;
    }

    public String getShouhuoAdress() {
        return ShouhuoAdress;
    }

    public void setShouhuoAdress(String shouhuoAdress) {
        ShouhuoAdress = shouhuoAdress;
    }

    public WuliuAdress() {
        super();
    }


    public Integer getxId() {
        return xId;
    }

    public void setxId(Integer xId) {
        this.xId = xId;
    }

    public String getShouhuoName() {
        return ShouhuoName;
    }

    public void setShouhuoName(String shouhuoName) {
        ShouhuoName = shouhuoName;
    }


    public String getXiangxiAdress() {
        return XiangxiAdress;
    }

    public void setXiangxiAdress(String xiangxiAdress) {
        XiangxiAdress = xiangxiAdress;
    }

    public String getShouhuoPhone() {
        return ShouhuoPhone;
    }

    public void setShouhuoPhone(String shouhuoPhone) {
        ShouhuoPhone = shouhuoPhone;
    }

}
