package com.demo.DAO;


import com.demo.Model.GiaGiay;
import com.demo.Repository.GiaGiayRepor;
import com.demo.Repository.GiayRepor;
import com.demo.Services.GiaGiayService;
import com.demo.Services.GiayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class GiaGiayDAO implements GiaGiayService {

    @Autowired
    GiaGiayRepor giaGiayRepor;

    @Override
    public String InsertGiaGiay(GiaGiay giaGiay) {
        String noti = "";
        try{
            giaGiayRepor.save(giaGiay);
            noti = "Success";
        }catch (Exception e){
            noti = e.getMessage();
        }
        return noti;
    }
}
