package com.lanou.entity;

import java.util.List;

/**
 * Created by lanou on 2017/12/2.
 */
public class Shop {
    private Integer shopId;
    private String shopName;
    private Integer parentId;
    private String shopImg;
    private Integer deleteId;
    private List<Shop> shopList;

    @Override
    public String toString() {
        return "Shop{" +
                "shopId=" + shopId +
                ", shopName='" + shopName + '\'' +
                ", parentId=" + parentId +
                ", shopImg='" + shopImg + '\'' +
                ", deleteId=" + deleteId +
                ", shopList=" + shopList +
                '}';
    }

    public List<Shop> getShopList() {
        return shopList;
    }

    public void setShopList(List<Shop> shopList) {
        this.shopList = shopList;
    }

    public Integer getDeleteId() {
        return deleteId;
    }

    public void setDeleteId(Integer deleteId) {
        this.deleteId = deleteId;
    }

    public Integer getShopId() {
        return shopId;
    }

    public void setShopId(Integer shopId) {
        this.shopId = shopId;
    }

    public String getShopName() {
        return shopName;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public String getShopImg() {
        return shopImg;
    }

    public void setShopImg(String shopImg) {
        this.shopImg = shopImg;
    }

    public Shop() {
        super();
    }

    public Shop(Integer shopId, String shopName, Integer parentId, String shopImg, Integer deleteId, List<Shop> shopList) {
        this.shopId = shopId;
        this.shopName = shopName;
        this.parentId = parentId;
        this.shopImg = shopImg;
        this.deleteId = deleteId;
        this.shopList = shopList;
    }
}
