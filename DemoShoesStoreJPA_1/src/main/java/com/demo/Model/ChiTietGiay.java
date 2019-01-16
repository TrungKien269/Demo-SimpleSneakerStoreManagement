package com.demo.Model;

public class ChiTietGiay {

    private Integer MaGiay;
    private String TenGiay;
    private String TenHang;
    private String TenLoai;
    private String TenNuoc;
    private Integer TinhTrang;

    public ChiTietGiay(){}

    public ChiTietGiay(Integer maGiay, String tenGiay, String tenHang, String tenLoai, String tenNuoc, Integer tinhTrang) {
        MaGiay = maGiay;
        TenGiay = tenGiay;
        TenHang = tenHang;
        TenLoai = tenLoai;
        TenNuoc = tenNuoc;
        TinhTrang = tinhTrang;
    }

    public Integer getMaGiay() {
        return MaGiay;
    }

    public void setMaGiay(Integer maGiay) {
        MaGiay = maGiay;
    }

    public String getTenGiay() {
        return TenGiay;
    }

    public void setTenGiay(String tenGiay) {
        TenGiay = tenGiay;
    }

    public String getTenHang() {
        return TenHang;
    }

    public void setTenHang(String tenHang) {
        TenHang = tenHang;
    }

    public String getTenLoai() {
        return TenLoai;
    }

    public void setTenLoai(String tenLoai) {
        TenLoai = tenLoai;
    }

    public String getTenNuoc() {
        return TenNuoc;
    }

    public void setTenNuoc(String tenNuoc) {
        TenNuoc = tenNuoc;
    }

    public Integer getTinhTrang() {
        return TinhTrang;
    }

    public void setTinhTrang(Integer tinhTrang) {
        TinhTrang = tinhTrang;
    }
}
