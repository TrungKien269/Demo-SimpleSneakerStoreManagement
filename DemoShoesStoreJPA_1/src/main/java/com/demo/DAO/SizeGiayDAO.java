package com.demo.DAO;


import com.demo.Model.SizeGiay;
import com.demo.Repository.SizeGiayRepor;
import com.demo.Services.SizeGiayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@Repository
public class SizeGiayDAO implements SizeGiayService {

    @Autowired
    SizeGiayRepor sizeGiayRepor;

    @Override
    public List<SizeGiay> getAllSize() {
        return sizeGiayRepor.findAll();
    }

    @Override
    public String InsertSizeGiay(SizeGiay sizeGiay) {
        String noti = "";
        try {
            sizeGiayRepor.save(sizeGiay);
            noti = "Success";
        }catch (Exception e){
            noti = e.getMessage();
        }
        return noti;
    }

    @Override
    public SizeGiay getSizeGiay(Double VNSize) {
        return (SizeGiay) sizeGiayRepor.findById(VNSize).get();
    }
}
