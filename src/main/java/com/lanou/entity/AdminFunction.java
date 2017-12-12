package com.lanou.entity;

/**
 * Created by lanou on 2017/12/11.
 */
public class AdminFunction {

    private Integer funId ;

    private String funName ;

    @Override
    public String toString() {
        return "AdminFunction{" +
                "funId=" + funId +
                ", funName='" + funName + '\'' +
                '}';
    }

    public AdminFunction(Integer funId, String funName) {
        this.funId = funId;
        this.funName = funName;
    }

    public AdminFunction() {
        super();
    }

    public Integer getFunId() {
        return funId;
    }

    public void setFunId(Integer funId) {
        this.funId = funId;
    }

    public String getFunName() {
        return funName;
    }

    public void setFunName(String funName) {
        this.funName = funName;
    }
}
