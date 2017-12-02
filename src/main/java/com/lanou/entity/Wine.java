package com.lanou.entity;

/**
 * Created by lanou on 2017/12/2.
 */
public class Wine {
    private Integer wId;
    private String wineName;
    private String WineImg1;
    private String WineImg2;
    private String WineImg3;
    private String WineImg4;
    private String WineImg5;
    private String WineImg6;
    private Integer parentId;
    private String wineDegree;
    private String wineBrand;
    private String BrandImg;
    private String WineOrigin;
    private String WineCompany;
    private String WineScent;
    private String WineLiter;
    private double WinePrice;
    private String WineSales;
    private Integer deleteId;
    private Integer WineCount;

    public Integer getwId() {
        return wId;
    }

    public void setwId(Integer wId) {
        this.wId = wId;
    }

    public String getWineName() {
        return wineName;
    }

    public void setWineName(String wineName) {
        this.wineName = wineName;
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

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public String getWineDegree() {
        return wineDegree;
    }

    public void setWineDegree(String wineDegree) {
        this.wineDegree = wineDegree;
    }

    public String getWineBrand() {
        return wineBrand;
    }

    public void setWineBrand(String wineBrand) {
        this.wineBrand = wineBrand;
    }

    public String getBrandImg() {
        return BrandImg;
    }

    public void setBrandImg(String brandImg) {
        BrandImg = brandImg;
    }

    public String getWineOrigin() {
        return WineOrigin;
    }

    public void setWineOrigin(String wineOrigin) {
        WineOrigin = wineOrigin;
    }

    public String getWineCompany() {
        return WineCompany;
    }

    public void setWineCompany(String wineCompany) {
        WineCompany = wineCompany;
    }

    public String getWineScent() {
        return WineScent;
    }

    public void setWineScent(String wineScent) {
        WineScent = wineScent;
    }

    public String getWineLiter() {
        return WineLiter;
    }

    public void setWineLiter(String wineLiter) {
        WineLiter = wineLiter;
    }

    public double getWinePrice() {
        return WinePrice;
    }

    public void setWinePrice(double winePrice) {
        WinePrice = winePrice;
    }

    public String getWineSales() {
        return WineSales;
    }

    public void setWineSales(String wineSales) {
        WineSales = wineSales;
    }

    public Integer getDeleteId() {
        return deleteId;
    }

    public void setDeleteId(Integer deleteId) {
        this.deleteId = deleteId;
    }

    public Integer getWineCount() {
        return WineCount;
    }

    public void setWineCount(Integer wineCount) {
        WineCount = wineCount;
    }

    public Wine() {
        super();
    }

    public Wine(Integer wId, String wineName, String wineImg1, String wineImg2, String wineImg3, String wineImg4, String wineImg5, String wineImg6, Integer parentId, String wineDegree, String wineBrand, String brandImg, String wineOrigin, String wineCompany, String wineScent, String wineLiter, double winePrice, String wineSales, Integer deleteId, Integer wineCount) {
        this.wId = wId;
        this.wineName = wineName;
        WineImg1 = wineImg1;
        WineImg2 = wineImg2;
        WineImg3 = wineImg3;
        WineImg4 = wineImg4;
        WineImg5 = wineImg5;
        WineImg6 = wineImg6;
        this.parentId = parentId;
        this.wineDegree = wineDegree;
        this.wineBrand = wineBrand;
        BrandImg = brandImg;
        WineOrigin = wineOrigin;
        WineCompany = wineCompany;
        WineScent = wineScent;
        WineLiter = wineLiter;
        WinePrice = winePrice;
        WineSales = wineSales;
        this.deleteId = deleteId;
        WineCount = wineCount;
    }

    @Override
    public String toString() {
        return "Wine{" +
                "wId=" + wId +
                ", wineName='" + wineName + '\'' +
                ", WineImg1='" + WineImg1 + '\'' +
                ", WineImg2='" + WineImg2 + '\'' +
                ", WineImg3='" + WineImg3 + '\'' +
                ", WineImg4='" + WineImg4 + '\'' +
                ", WineImg5='" + WineImg5 + '\'' +
                ", WineImg6='" + WineImg6 + '\'' +
                ", parentId=" + parentId +
                ", wineDegree='" + wineDegree + '\'' +
                ", wineBrand='" + wineBrand + '\'' +
                ", BrandImg='" + BrandImg + '\'' +
                ", WineOrigin='" + WineOrigin + '\'' +
                ", WineCompany='" + WineCompany + '\'' +
                ", WineScent='" + WineScent + '\'' +
                ", WineLiter='" + WineLiter + '\'' +
                ", WinePrice=" + WinePrice +
                ", WineSales='" + WineSales + '\'' +
                ", deleteId=" + deleteId +
                ", WineCount=" + WineCount +
                '}';
    }
}
