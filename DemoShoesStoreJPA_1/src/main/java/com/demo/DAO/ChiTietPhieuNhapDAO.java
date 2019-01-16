package com.demo.DAO;

import com.demo.Model.BillDetail;
import com.demo.Model.ChiTietPhieuNhap;
import com.demo.Repository.ChiTietPhieuNhapRepor;
import com.demo.Services.ChiTietPhieuNhapService;
import org.apache.jasper.tagplugins.jstl.core.Catch;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
@Transactional class ChiTietPhieuNhapDAO implements ChiTietPhieuNhapService {

    @Autowired
    ChiTietPhieuNhapRepor chiTietPhieuNhapRepor;

    @Override
    public String InsertChiTietBill(ChiTietPhieuNhap chiTietPhieuNhap) {
        String noti = "";
        try{
            chiTietPhieuNhapRepor.save(chiTietPhieuNhap);
            noti = "Success";
        }catch (Exception e){
            noti = e.getMessage();
        }
        return noti;
    }

    @Override
    public List<ChiTietPhieuNhap> getALlListDetail() {
        return chiTietPhieuNhapRepor.findAll();
    }

    @Override
    public List<ChiTietPhieuNhap> getAllListDetailBySerial(Integer Serial, Integer MaGiay) {
        BillDetail billDetail = new BillDetail();
        billDetail.setSerial(Serial);
        billDetail.setMagiay(MaGiay);
        Iterable<BillDetail> iterable = new ArrayList<BillDetail>();
        ((ArrayList<BillDetail>) iterable).add(billDetail);
        return chiTietPhieuNhapRepor.findAllById(iterable);
    }

}
