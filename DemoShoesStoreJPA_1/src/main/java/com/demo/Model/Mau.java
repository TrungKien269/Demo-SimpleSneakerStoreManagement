package com.demo.Model;

import javax.persistence.*;
import java.io.Serializable;

@Embeddable
public class Mau implements Serializable{

    @Column(name = "magiay")
    private Integer magiay;

    @Column(name = "maugiay")
    private String maugiay;

    public Integer getMagiay() {
        return magiay;
    }

    public void setMagiay(Integer magiay) {
        this.magiay = magiay;
    }

    public String getMaugiay() {
        return maugiay;
    }

    public void setMaugiay(String maugiay) {
        this.maugiay = maugiay;
    }
}
