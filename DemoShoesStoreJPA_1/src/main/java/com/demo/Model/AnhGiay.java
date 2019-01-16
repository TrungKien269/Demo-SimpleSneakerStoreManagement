package com.demo.Model;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;


@Entity
@Table(name = "anhgiay")
public class AnhGiay {

    @EmbeddedId
    private Anh anh;

    @Column(name = "maanh", insertable = false, updatable = false)
    private Double maanh;

    @Column(name = "magiay", insertable = false, updatable = false)
    private Integer magiay;

    @Column(name = "linkanh")
    private String linkanh;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "magiay", insertable = false, updatable = false)
    @Fetch(FetchMode.JOIN)
    private Giay giay;

    public Double getMaanh() {
        return maanh;
    }

    public void setMaanh(Double maanh) {
        this.maanh = maanh;
    }

    public Integer getMagiay() {
        return magiay;
    }

    public void setMagiay(Integer magiay) {
        this.magiay = magiay;
    }

    public String getLinkanh() {
        return linkanh;
    }

    public void setLinkanh(String linkanh) {
        this.linkanh = linkanh;
    }

    public Giay getGiay() {
        return giay;
    }

    public void setGiay(Giay giay) {
        this.giay = giay;
    }

    public Anh getAnh() {
        return anh;
    }

    public void setAnh(Anh anh) {
        this.anh = anh;
    }
}
