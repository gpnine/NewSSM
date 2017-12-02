package com.lanou.entity;

/**
 * Created by lanou on 2017/12/2.
 */
public class Wine {
    private Integer WId;
    private String WineName;
    private Integer WineBrandId;
    private String WineLiter;
    private double WinePrice;
    private Integer WineDegreeId;
    private Integer WineAdressId;
    private String WineCompany;
    private String WineSales;
    private Integer WineCount;
    private String WineImg1;
    private String WineImg2;
    private String WineImg3;
    private String WineImg4;
    private String WineImg5;
    private String WineImg6;
    private Integer deleteId;

    public Wine() {
        super();
    }

    public Wine(Integer WId, String wineName, Integer wineBrandId, double winePrice, String wineLiter, Integer wineDegreeId, Integer wineAdressId, String wineCompany, String wineSales, Integer wineCount, String wineImg1, String wineImg2, String wineImg3, String wineImg4, String wineImg5, String wineImg6, Integer deleteId) {
        this.WId = WId;
        WineName = wineName;
        WineBrandId = wineBrandId;
        WinePrice = winePrice;
        WineLiter = wineLiter;
        WineDegreeId = wineDegreeId;
        WineAdressId = wineAdressId;
        WineCompany = wineCompany;
        WineSales = wineSales;
        WineCount = wineCount;
        WineImg1 = wineImg1;
        WineImg2 = wineImg2;
        WineImg3 = wineImg3;
        WineImg4 = wineImg4;
        WineImg5 = wineImg5;
        WineImg6 = wineImg6;
        this.deleteId = deleteId;
    }

    @Override
    public String toString() {
        return "Wine{" +
                "WId=" + WId +
                ", WineName='" + WineName + '\'' +
                ", WineBrandId=" + WineBrandId +
                ", WinePrice=" + WinePrice +
                ", WineLiter='" + WineLiter + '\'' +
                ", WineDegreeId=" + WineDegreeId +
                ", WineAdressId=" + WineAdressId +
                ", WineCompany='" + WineCompany + '\'' +
                ", WineSales='" + WineSales + '\'' +
                ", WineCount=" + WineCount +
                ", WineImg1='" + WineImg1 + '\'' +
                ", WineImg2='" + WineImg2 + '\'' +
                ", WineImg3='" + WineImg3 + '\'' +
                ", WineImg4='" + WineImg4 + '\'' +
                ", WineImg5='" + WineImg5 + '\'' +
                ", WineImg6='" + WineImg6 + '\'' +
                ", deleteId=" + deleteId +
                '}';
    }

    public Integer getWId() {
        return WId;
    }

    public void setWId(Integer WId) {
        this.WId = WId;
    }

    public String getWineName() {
        return WineName;
    }

    public void setWineName(String wineName) {
        WineName = wineName;
    }

    public Integer getWineBrandId() {
        return WineBrandId;
    }

    public void setWineBrandId(Integer wineBrandId) {
        WineBrandId = wineBrandId;
    }

    public double getWinePrice() {
        return WinePrice;
    }

    public void setWinePrice(double winePrice) {
        WinePrice = winePrice;
    }

    public String getWineLiter() {
        return WineLiter;
    }

    public void setWineLiter(String wineLiter) {
        WineLiter = wineLiter;
    }

    public Integer getWineDegreeId() {
        return WineDegreeId;
    }

    public void setWineDegreeId(Integer wineDegreeId) {
        WineDegreeId = wineDegreeId;
    }

    public Integer getWineAdressId() {
        return WineAdressId;
    }

    public void setWineAdressId(Integer wineAdressId) {
        WineAdressId = wineAdressId;
    }

    public String getWineCompany() {
        return WineCompany;
    }

    public void setWineCompany(String wineCompany) {
        WineCompany = wineCompany;
    }

    public String getWineSales() {
        return WineSales;
    }

    public void setWineSales(String wineSales) {
        WineSales = wineSales;
    }

    public Integer getWineCount() {
        return WineCount;
    }

    public void setWineCount(Integer wineCount) {
        WineCount = wineCount;
    }

    public String getWineImg1() {
        return WineImg1;
    }

    public void setWineImg1(String wineImg1) {
        WineImg1 = wineImg1;
    }

    public String getWineImg2() {
        return WineImg2;
    }

    public void setWineImg2(String wineImg2) {
        WineImg2 = wineImg2;
    }

    public String getWineImg3() {
        return WineImg3;
    }

    public void setWineImg3(String wineImg3) {
        WineImg3 = wineImg3;
    }

    public String getWineImg4() {
        return WineImg4;
    }

    public void setWineImg4(String wineImg4) {
        WineImg4 = wineImg4;
    }

    public String getWineImg5() {
        return WineImg5;
    }

    public void setWineImg5(String wineImg5) {
        WineImg5 = wineImg5;
    }

    public String getWineImg6() {
        return WineImg6;
    }

    public void setWineImg6(String wineImg6) {
        WineImg6 = wineImg6;
    }

    public Integer getDeleteId() {
        return deleteId;
    }

    public void setDeleteId(Integer deleteId) {
        this.deleteId = deleteId;
    }
}
