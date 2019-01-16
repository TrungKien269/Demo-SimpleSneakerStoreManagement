package com.demo.Repository;

import com.demo.Model.BillDetail;
import com.demo.Model.ChiTietPhieuNhap;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ChiTietPhieuNhapRepor extends JpaRepository<ChiTietPhieuNhap, BillDetail> {
}
