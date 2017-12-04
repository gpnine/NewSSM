package com.lanou.entity;

/**
 * Created by lanou on 2017/12/4.
 */
public class Banner {
    private int bannerId;
    private String bannerSrc;
    private int delectId;

    @Override
    public String toString() {
        return "Banner{" +
                "bannerId=" + bannerId +
                ", bannerSrc='" + bannerSrc + '\'' +
                ", delectId=" + delectId +
                '}';
    }

    public Banner(int bannerId, String bannerSrc, int delectId) {
        this.bannerId = bannerId;
        this.bannerSrc = bannerSrc;
        this.delectId = delectId;
    }

    public Banner() {
        super();
    }

    public void setBannerId(int bannerId) {
        this.bannerId = bannerId;
    }

    public void setBannerSrc(String bannerSrc) {
        this.bannerSrc = bannerSrc;
    }

    public void setDelectId(int delectId) {
        this.delectId = delectId;
    }

    public int getBannerId() {

        return bannerId;
    }

    public String getBannerSrc() {
        return bannerSrc;
    }

    public int getDelectId() {
        return delectId;
    }
}
