package com.demo.DAO;


import com.demo.Model.MauGiay;
import com.demo.Repository.MauGiayRepor;
import com.demo.Services.MauGiayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class MauGiayDAO implements MauGiayService {

    @Autowired
    MauGiayRepor mauGiayRepor;


    @Override
    public String InsertMauGiay(MauGiay mauGiay) {
        String noti = "";
        try{
            mauGiayRepor.save(mauGiay);
            noti = "Success";
        }catch (Exception e){
            noti = e.getMessage();
        }
        return noti;
    }
}
