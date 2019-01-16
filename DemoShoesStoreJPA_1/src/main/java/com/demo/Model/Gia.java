package com.demo.Model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class Gia implements Serializable {

    @Column(name = "magiay")
    private Integer magiay;

    @Column(name = "giagiay")
    private Double giagiay;


    public void setMagiay(Integer magiay) {
        this.magiay = magiay;
    }

    public void setGiagiay(Double giagiay) {
        this.giagiay = giagiay;
    }
}
