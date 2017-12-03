package com.lanou.entity;

/**
 * Created by lanou on 2017/12/3.
 */
public class Car {
    private Integer CarId;
    private Integer WineId;
    private Integer UserId;
    private Integer deleteId;
    private Integer counts;

    @Override
    public String toString() {
        return "Car{" +
                "CarId=" + CarId +
                ", WineId=" + WineId +
                ", UserId=" + UserId +
                ", deleteId=" + deleteId +
                ", counts=" + counts +
                '}';
    }

    public Car(Integer carId, Integer wineId, Integer userId, Integer deleteId, Integer counts) {
        CarId = carId;
        WineId = wineId;
        UserId = userId;
        this.deleteId = deleteId;
        this.counts = counts;
    }

    public Integer getCounts() {
        return counts;
    }

    public void setCounts(Integer counts) {
        this.counts = counts;
    }

    public Car() {
        super();
    }

    public Integer getCarId() {
        return CarId;
    }

    public void setCarId(Integer carId) {
        CarId = carId;
    }

    public Integer getWineId() {
        return WineId;
    }

    public void setWineId(Integer wineId) {
        WineId = wineId;
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


}
