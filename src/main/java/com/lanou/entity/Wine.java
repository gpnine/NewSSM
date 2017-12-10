package com.lanou.entity;

/**
 * Created by lanou on 2017/12/2.
 */
public class Wine {
    private Integer WId;
    private String WineName;
    private String WineLiter;
    private String WineEvalution;
    private Integer WineEvaCount;
    private double WinePrice;
    private String WineCompany;
    private Integer WineSales;
    private String WineScent;
    private String WineBrand;
    private String WineDegree;
    private String WineAdress;
    private String WineShiyong;
    private String WineCity;
    private String FromAdress;
    private String WineBianhao;
    private Integer WineCount;
    private String WineContain;
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

    @Override
    public String toString() {
        return "Wine{" +
                "WId=" + WId +
                ", WineName='" + WineName + '\'' +
                ", WineLiter='" + WineLiter + '\'' +
                ", WineEvalution='" + WineEvalution + '\'' +
                ", WineEvaCount=" + WineEvaCount +
                ", WinePrice=" + WinePrice +
                ", WineCompany='" + WineCompany + '\'' +
                ", WineSales=" + WineSales +
                ", WineScent='" + WineScent + '\'' +
                ", WineBrand='" + WineBrand + '\'' +
                ", WineDegree='" + WineDegree + '\'' +
                ", WineAdress='" + WineAdress + '\'' +
                ", WineShiyong='" + WineShiyong + '\'' +
                ", WineCity='" + WineCity + '\'' +
                ", FromAdress='" + FromAdress + '\'' +
                ", WineBianhao='" + WineBianhao + '\'' +
                ", WineCount=" + WineCount +
                ", WineContain='" + WineContain + '\'' +
                ", WineImg1='" + WineImg1 + '\'' +
                ", WineImg2='" + WineImg2 + '\'' +
                ", WineImg3='" + WineImg3 + '\'' +
                ", WineImg4='" + WineImg4 + '\'' +
                ", WineImg5='" + WineImg5 + '\'' +
                ", WineImg6='" + WineImg6 + '\'' +
                ", deleteId=" + deleteId +
                '}';
    }

    public Wine(Integer WId, String wineName, String wineLiter) {
        this.WId = WId;
        WineName = wineName;
        WineLiter = wineLiter;
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

    public String getWineLiter() {
        return WineLiter;
    }

    public void setWineLiter(String wineLiter) {
        WineLiter = wineLiter;
    }

    public String getWineEvalution() {
        return WineEvalution;
    }

    public void setWineEvalution(String wineEvalution) {
        WineEvalution = wineEvalution;
    }

    public Integer getWineEvaCount() {
        return WineEvaCount;
    }

    public void setWineEvaCount(Integer wineEvaCount) {
        WineEvaCount = wineEvaCount;
    }

    public double getWinePrice() {
        return WinePrice;
    }

    public void setWinePrice(double winePrice) {
        WinePrice = winePrice;
    }

    public String getWineCompany() {
        return WineCompany;
    }

    public void setWineCompany(String wineCompany) {
        WineCompany = wineCompany;
    }

    public Integer getWineSales() {
        return WineSales;
    }

    public void setWineSales(Integer wineSales) {
        WineSales = wineSales;
    }

    public String getWineScent() {
        return WineScent;
    }

    public void setWineScent(String wineScent) {
        WineScent = wineScent;
    }

    public String getWineBrand() {
        return WineBrand;
    }

    public void setWineBrand(String wineBrand) {
        WineBrand = wineBrand;
    }

    public String getWineDegree() {
        return WineDegree;
    }

    public void setWineDegree(String wineDegree) {
        WineDegree = wineDegree;
    }

    public String getWineAdress() {
        return WineAdress;
    }

    public void setWineAdress(String wineAdress) {
        WineAdress = wineAdress;
    }

    public String getWineShiyong() {
        return WineShiyong;
    }

    public void setWineShiyong(String wineShiyong) {
        WineShiyong = wineShiyong;
    }

    public String getWineCity() {
        return WineCity;
    }

    public void setWineCity(String wineCity) {
        WineCity = wineCity;
    }

    public String getFromAdress() {
        return FromAdress;
    }

    public void setFromAdress(String fromAdress) {
        FromAdress = fromAdress;
    }

    public String getWineBianhao() {
        return WineBianhao;
    }

    public void setWineBianhao(String wineBianhao) {
        WineBianhao = wineBianhao;
    }

    public Integer getWineCount() {
        return WineCount;
    }

    public void setWineCount(Integer wineCount) {
        WineCount = wineCount;
    }

    public String getWineContain() {
        return WineContain;
    }

    public void setWineContain(String wineContain) {
        WineContain = wineContain;
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

    public Wine(Integer WId, String wineName, String wineLiter, String wineEvalution, Integer wineEvaCount, double winePrice, String wineCompany, Integer wineSales, String wineScent, String wineBrand, String wineDegree, String wineAdress, String wineShiyong, String wineCity, String fromAdress, String wineBianhao, Integer wineCount, String wineContain, String wineImg1, String wineImg2, String wineImg3, String wineImg4, String wineImg5, String wineImg6, Integer deleteId) {
        this.WId = WId;
        WineName = wineName;
        WineLiter = wineLiter;
        WineEvalution = wineEvalution;
        WineEvaCount = wineEvaCount;
        WinePrice = winePrice;
        WineCompany = wineCompany;
        WineSales = wineSales;
        WineScent = wineScent;
        WineBrand = wineBrand;
        WineDegree = wineDegree;
        WineAdress = wineAdress;
        WineShiyong = wineShiyong;
        WineCity = wineCity;
        FromAdress = fromAdress;
        WineBianhao = wineBianhao;
        WineCount = wineCount;
        WineContain = wineContain;
        WineImg1 = wineImg1;
        WineImg2 = wineImg2;
        WineImg3 = wineImg3;
        WineImg4 = wineImg4;
        WineImg5 = wineImg5;
        WineImg6 = wineImg6;
        this.deleteId = deleteId;
    }
}
