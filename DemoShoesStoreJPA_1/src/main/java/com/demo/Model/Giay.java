package com.demo.Model;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "giay")
public class Giay {

    @Id
    @Column(name = "magiay")
    private Integer magiay;

    @Column(name = "tengiay")
    private String  tengiay;

    @Column(name = "tinhtrang")
    private Integer tinhtrang;

    @Column(name = "mahang")
    private Integer mahang;

    @Column(name = "maloai")
    private Integer maloai;

    @Column(name = "manuoc")
    private Integer manuoc;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "mahang", insertable = false, updatable = false)
    @Fetch(FetchMode.JOIN)
    private HangGiay hanggiay;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "maloai", insertable = false, updatable = false)
    @Fetch(FetchMode.JOIN)
    private LoaiGiay loaigiay;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "manuoc", insertable = false, updatable = false)
    @Fetch(FetchMode.JOIN)
    private NguonGoc nguongoc;

    @OneToMany(mappedBy = "giay", cascade = CascadeType.ALL)
    private List<AnhGiay> anhgiays;

    @OneToMany(mappedBy = "giay", cascade = CascadeType.ALL)
    private List<GiaGiay> giagiays;

    @OneToMany(mappedBy = "giay", cascade = CascadeType.ALL)
    private List<MauGiay> maugiays;

    @OneToMany(mappedBy = "giay", cascade = CascadeType.ALL)
    private List<ChiTietPhieuNhap> chitietphieunhaps;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "chitietsizegiay", joinColumns = @JoinColumn(name = "magiay",
            referencedColumnName = "magiay"),
            inverseJoinColumns = @JoinColumn(name = "vnsize", referencedColumnName = "vnsize"))
    private List<SizeGiay> sizegiays;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "chitietphieunhap", joinColumns = @JoinColumn(name = "magiay",
            referencedColumnName = "magiay"),
            inverseJoinColumns = @JoinColumn(name = "serial", referencedColumnName = "serial"))
    private List<PhieuNhap> phieunhaps;


    public Integer getMagiay() {
        return magiay;
    }

    public void setMagiay(Integer magiay) {
        this.magiay = magiay;
    }

    public String getTengiay() {
        return tengiay;
    }

    public void setTengiay(String tengiay) {
        this.tengiay = tengiay;
    }

    public Integer getTinhtrang() {
        return tinhtrang;
    }

    public void setTinhtrang(Integer tinhtrang) {
        this.tinhtrang = tinhtrang;
    }

    public Integer getMahang() {
        return mahang;
    }

    public void setMahang(Integer mahang) {
        this.mahang = mahang;
    }

    public Integer getMaloai() {
        return maloai;
    }

    public void setMaloai(Integer maloai) {
        this.maloai = maloai;
    }

    public Integer getManuoc() {
        return manuoc;
    }

    public void setManuoc(Integer manuoc) {
        this.manuoc = manuoc;
    }

    public List<AnhGiay> getAnhgiays() {
        return anhgiays;
    }

    public HangGiay getHanggiay() {
        return hanggiay;
    }

    public LoaiGiay getLoaigiay() {
        return loaigiay;
    }

    public NguonGoc getNguongoc() {
        return nguongoc;
    }

    public List<GiaGiay> getGiagiays() {
        return giagiays;
    }

    public List<MauGiay> getMaugiays() {
        return maugiays;
    }

    public List<SizeGiay> getSizegiays() {
        return sizegiays;
    }

    public void setSizegiays(List<SizeGiay> sizegiays) {
        this.sizegiays = sizegiays;
    }

    public List<PhieuNhap> getPhieunhaps() {
        return phieunhaps;
    }

    public List<ChiTietPhieuNhap> getChitietphieunhaps() {
        return chitietphieunhaps;
    }

    public void setChitietphieunhaps(List<ChiTietPhieuNhap> chitietphieunhaps) {
        this.chitietphieunhaps = chitietphieunhaps;
    }
}
