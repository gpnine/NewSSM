package com.lanou.entity;

/**
 * Created by lanou on 2017/12/3.
 */
public class Car {

    private Integer CarId;

    private Integer wineId;

    private Integer counts;

    private Integer UserId;

    private Integer deleteId;

    private Wine wines;

    @Override
    public String toString() {
        return "Car{" +
                "CarId=" + CarId +
                ", wineId=" + wineId +
                ", counts=" + counts +
                ", UserId=" + UserId +
                ", deleteId=" + deleteId +
                ", wines=" + wines +
                '}';
    }

    public Wine getWines() {
        return wines;
    }

    public void setWines(Wine wines) {
        this.wines = wines;
    }

    public Integer getCarId() {
        return CarId;
    }

    public void setCarId(Integer carId) {
        CarId = carId;
    }

    public Integer getWineId() {
        return wineId;
    }

    public void setWineId(Integer wineId) {
        this.wineId = wineId;
    }

    public Integer getCounts() {
        return counts;
    }

    public void setCounts(Integer counts) {
        this.counts = counts;
    }

    public Integer getUserId() {
        return UserId;
    }

    public void setUserId(Integer userId) {
        UserId = userId;
    }

    public Integer getDeleteId() {
        return deleteId;
    }

    public void setDeleteId(Integer deleteId) {
        this.deleteId = deleteId;
    }



    public Car() {
        super();
    }


}
