package com.demo.Services;

import com.demo.Model.ChiTietPhieuNhap;

import java.util.List;

public interface ChiTietPhieuNhapService {

    public String InsertChiTietBill(ChiTietPhieuNhap chiTietPhieuNhap);

    public List<ChiTietPhieuNhap> getALlListDetail();

    public List<ChiTietPhieuNhap> getAllListDetailBySerial(Integer Serial, Integer MaGiay);
}
