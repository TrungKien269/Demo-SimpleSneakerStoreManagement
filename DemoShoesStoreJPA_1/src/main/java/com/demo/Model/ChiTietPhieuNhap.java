package com.demo.Model;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;

@Entity
@Table(name = "chitietphieunhap")
public class ChiTietPhieuNhap {

    @EmbeddedId
    private BillDetail billdetail;

    @Column(name = "soluong")
    private Integer soluong;

    @Column(name = "gianhap")
    private Double gianhap;

    @Column(name = "serial", insertable = false, updatable = false)
    private Integer serial;

    @Column(name = "magiay", insertable = false, updatable = false)
    private Integer magiay;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "magiay", insertable = false, updatable = false)
    @Fetch(FetchMode.JOIN)
    private Giay giay;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "serial", insertable = false, updatable = false)
    @Fetch(FetchMode.JOIN)
    private PhieuNhap phieunhap;

    public BillDetail getBilldetail() {
        return billdetail;
    }

    public void setBilldetail(BillDetail billdetail) {
        this.billdetail = billdetail;
    }

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

    public Giay getGiay() {
        return giay;
    }

    public void setGiay(Giay giay) {
        this.giay = giay;
    }

    public PhieuNhap getPhieunhap() {
        return phieunhap;
    }

    public void setPhieunhap(PhieuNhap phieunhap) {
        this.phieunhap = phieunhap;
    }

    public Integer getSoluong() {
        return soluong;
    }

    public void setSoluong(Integer soluong) {
        this.soluong = soluong;
    }

    public Double getGianhap() {
        return gianhap;
    }

    public void setGianhap(Double gianhap) {
        this.gianhap = gianhap;
    }
}
