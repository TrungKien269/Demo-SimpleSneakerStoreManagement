package com.demo.DAO;


import com.demo.Model.ChiTietGiay;
import com.demo.Model.Giay;
import com.demo.Repository.GiayRepor;
import com.demo.Services.GiayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
@Repository
public class GiayDAO implements GiayService {

    @Autowired
    GiayRepor giayRepor;

    @Autowired
    JdbcTemplate jdbcTemplate;


    @Override
    public List<Giay> getAllShoes() {
        return giayRepor.findAll();
    }

    @Override
    public Giay getShoes(Integer MaGiay) {
        return giayRepor.findById(MaGiay).get();
    }

    @Override
    public String InsertShoes(Giay giay) {
        String noti = "";
        try{
            if(!FilterShoes(giay.getMagiay()))
                throw new Exception("This Username has been used!");
            else {
                giayRepor.save(giay);
                noti = "Success";
            }
        }catch (Exception e){
            noti = e.getMessage();
        }
        return noti;
    }

    @Override
    public String UpdateShoes(Giay giay) {
        String noti = "";
        try {
            giayRepor.save(giay);
            noti = "Success";
        }catch (Exception e){
            noti = e.getMessage();
        }
        return noti;
    }

    @Override
    public String DeleteShoes(Integer MaGiay) {
        return null;
    }

    @Override
    public Long CountShoes() {
        return giayRepor.count() + 111;
    }

    public boolean FilterShoes(Integer MaGiay){
        List<Giay> list = (List<Giay>) giayRepor.findAll();
        for(Giay giay: list){
            if(giay.getMagiay().equals(MaGiay))
                return false;
        }
        return true;
    }
}
