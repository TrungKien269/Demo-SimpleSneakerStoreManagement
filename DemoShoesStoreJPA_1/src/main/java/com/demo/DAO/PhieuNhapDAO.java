package com.demo.DAO;

import com.demo.Model.PhieuNhap;
import com.demo.Repository.PhieuNhapRepor;
import com.demo.Services.PhieuNhapService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class PhieuNhapDAO implements PhieuNhapService {

    @Autowired
    PhieuNhapRepor phieuNhapRepor;


    @Override
    public String InsertBill(PhieuNhap phieuNhap) {
        String noti = "";
        try {
            phieuNhapRepor.save(phieuNhap);
            noti = "Success";
        }catch (Exception e){
            noti = e.getMessage();
        }
        return noti;
    }

    @Override
    public String UpdateBill(PhieuNhap phieuNhap) {
        String noti = "";
        try {
            phieuNhapRepor.save(phieuNhap);
            noti = "Success";
        }catch (Exception e){
            noti = e.getMessage();
        }
        return noti;
    }

    @Override
    public PhieuNhap getPhieuNhap(Integer Serial) {
        return phieuNhapRepor.findById(Serial).get();
    }

    @Override
    public Long CountBills() {
        return phieuNhapRepor.count() + 1111;
    }

    @Override
    public List<PhieuNhap> getAllBill() {
        return phieuNhapRepor.findAll();
    }
}
