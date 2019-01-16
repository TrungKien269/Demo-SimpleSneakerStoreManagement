package com.demo.Model;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class Anh implements Serializable {

    @Column(name = "magiay")
    private Integer magiay;

    @Column(name = "maanh")
    private Double maanh;

    public Integer getMagiay() {
        return magiay;
    }

    public void setMagiay(Integer magiay) {
        this.magiay = magiay;
    }

    public Double getMaanh() {
        return maanh;
    }

    public void setMaanh(Double maanh) {
        this.maanh = maanh;
    }
}
