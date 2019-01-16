package com.demo.Model;


import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;

@Entity
@Table(name = "giagiay")
public class GiaGiay {

    @EmbeddedId
    private Gia gia;

    @Column(name = "magiay", insertable = false, updatable = false)
    private Integer magiay;

    @Column(name = "giagiay", insertable = false, updatable = false)
    private Double giagiay;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "magiay", insertable = false, updatable = false)
    @Fetch(FetchMode.JOIN)
    private Giay giay;

    public void setGia(Gia gia) {
        this.gia = gia;
    }

    public Giay getGiay() {
        return giay;
    }

    public Gia getGia() {
        return gia;
    }

    public Integer getMagiay() {
        return magiay;
    }

    public void setMagiay(Integer magiay) {
        this.magiay = magiay;
    }

    public Double getGiagiay() {
        return giagiay;
    }

    public void setGiagiay(Double giagiay) {
        this.giagiay = giagiay;
    }
}
