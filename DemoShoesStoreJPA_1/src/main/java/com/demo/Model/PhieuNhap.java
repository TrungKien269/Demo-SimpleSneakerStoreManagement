package com.demo.Model;


import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "phieunhap")
public class PhieuNhap {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer serial;

    @Column(name = "mancc")
    private Integer mancc;

    @Column(name = "ngaynhap")
    private String ngaynhap;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "mancc", insertable = false, updatable = false)
    @Fetch(FetchMode.JOIN)
    private NhaCungCap nhacungcap;

    @OneToMany(mappedBy = "phieunhap", cascade = CascadeType.ALL)
    private List<ChiTietPhieuNhap> chitietphieunhaps;

    @ManyToMany(fetch = FetchType.LAZY, cascade = {
            CascadeType.PERSIST,
            CascadeType.MERGE}, mappedBy = "phieunhaps")
    private List<Giay> giays;

    public Integer getSerial() {
        return serial;
    }

    public void setSerial(Integer serial) {
        this.serial = serial;
    }

    public Integer getMancc() {
        return mancc;
    }

    public NhaCungCap getNhacungcap() {
        return nhacungcap;
    }

    public List<Giay> getGiays() {
        return giays;
    }

    public String getNgaynhap() {
        return ngaynhap;
    }

    public void setNgaynhap(String ngaynhap) {
        this.ngaynhap = ngaynhap;
    }

    public void setMancc(Integer mancc) {
        this.mancc = mancc;
    }

    public void setNhacungcap(NhaCungCap nhacungcap) {
        this.nhacungcap = nhacungcap;
    }

    public void setGiays(List<Giay> giays) {
        this.giays = giays;
    }

    public List<ChiTietPhieuNhap> getChitietphieunhaps() {
        return chitietphieunhaps;
    }

    public void setChitietphieunhaps(List<ChiTietPhieuNhap> chitietphieunhaps) {
        this.chitietphieunhaps = chitietphieunhaps;
    }
}
