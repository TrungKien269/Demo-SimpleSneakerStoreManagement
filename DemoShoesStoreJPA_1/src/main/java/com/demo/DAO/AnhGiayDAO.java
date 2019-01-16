package com.demo.DAO;

import com.demo.Model.AnhGiay;
import com.demo.Model.HangGiay;
import com.demo.Repository.AnhGiayRepor;
import com.demo.Repository.HangGiayRepor;
import com.demo.Services.AnhGiayService;
import com.demo.Services.HangGiayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class AnhGiayDAO implements AnhGiayService {

    @Autowired
    AnhGiayRepor anhGiayRepor;

    @Override
    public List<AnhGiay> getAllAnhGiay() {
        return (List<AnhGiay>) anhGiayRepor.findAll();
    }

    @Override
    public List<AnhGiay> getAnhFromMaGiay(Integer MaGiay) {
        return null;
    }

    @Override
    public String InsertAnhGiay(AnhGiay anhGiay) {
        String noti = "";
        try{
            anhGiayRepor.save(anhGiay);
            noti = "Success";
        }catch (Exception e){
            noti = e.getMessage();
        }
        return noti;
    }
}
