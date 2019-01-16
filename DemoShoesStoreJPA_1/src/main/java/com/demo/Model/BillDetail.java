package com.demo.Model;


import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class BillDetail implements Serializable {

    @Column(name = "serial")
    private Integer serial;

    @Column(name = "magiay")
    private Integer magiay;

    public Integer getSerial() {
        return serial;
    }

    public void setSerial(Integer serial) {
        this.serial = serial;
    }

    public Integer getMagiay() {
        return magiay;
    }

    public void setMagiay(Integer magiay) {
        this.magiay = magiay;
    }
}
