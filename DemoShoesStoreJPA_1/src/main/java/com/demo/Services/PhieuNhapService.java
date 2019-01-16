package com.demo.Services;

import com.demo.Model.PhieuNhap;

import java.util.List;

public interface PhieuNhapService {

    public String InsertBill(PhieuNhap phieuNhap);

    public String UpdateBill(PhieuNhap phieuNhap);

    public PhieuNhap getPhieuNhap(Integer Serial);

    public Long CountBills();

    public List<PhieuNhap> getAllBill();
}
