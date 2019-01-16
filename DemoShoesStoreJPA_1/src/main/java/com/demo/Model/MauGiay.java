package com.demo.Model;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;

@Entity
@Table(name = "maugiay")
public class MauGiay {

    @EmbeddedId
    private Mau mau;

    @Column(name = "magiay", insertable = false, updatable = false)
    private Integer magiay;

    @Column(name = "maugiay", insertable = false, updatable = false)
    private String maugiay;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "magiay", insertable = false, updatable = false)
    @Fetch(FetchMode.JOIN)
    private Giay giay;

    public Mau getMau() {
        return mau;
    }

    public void setMau(Mau mau) {
        this.mau = mau;
    }

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

    public Giay getGiay() {
        return giay;
    }
}
