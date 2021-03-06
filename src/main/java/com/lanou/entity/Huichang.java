package com.lanou.entity;

/**
 * Created by lanou on 2017/12/12.
 */
public class Huichang {
    private Integer huichangId;
    private String huichangname;
    private String huichangimg;
    private Integer parentId;
    private Integer deleteId;
    private Integer bigTu;

    public Integer getBigTu() {
        return bigTu;
    }

    public void setBigTu(Integer bigTu) {
        this.bigTu = bigTu;
    }

    public Integer getHuichangId() {
        return huichangId;
    }

    public void setHuichangId(Integer huichangId) {
        this.huichangId = huichangId;
    }

    public String getHuichangname() {
        return huichangname;
    }

    public void setHuichangname(String huichangname) {
        this.huichangname = huichangname;
    }

    public String getHuichangimg() {
        return huichangimg;
    }

    public void setHuichangimg(String huichangimg) {
        this.huichangimg = huichangimg;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public Integer getDeleteId() {
        return deleteId;
    }

    public void setDeleteId(Integer deleteId) {
        this.deleteId = deleteId;
    }

    public Huichang() {
        super();
    }

    @Override
    public String toString() {
        return "Huichang{" +
                "huichangId=" + huichangId +
                ", huichangname='" + huichangname + '\'' +
                ", huichangimg='" + huichangimg + '\'' +
                ", parentId=" + parentId +
                ", deleteId=" + deleteId +
                ", bigTu=" + bigTu +
                '}';
    }

    public Huichang(Integer huichangId, String huichangname, String huichangimg, Integer parentId, Integer deleteId, Integer bigTu) {
        this.huichangId = huichangId;
        this.huichangname = huichangname;
        this.huichangimg = huichangimg;
        this.parentId = parentId;
        this.deleteId = deleteId;
        this.bigTu = bigTu;
    }
}
