package com.demo.DAO;


import com.demo.Model.HangGiay;
import com.demo.Repository.HangGiayRepor;
import com.demo.Services.HangGiayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class HangGiayDAO implements HangGiayService {

    @Autowired
    HangGiayRepor hangGiayRepor;

    @Override
    public List<HangGiay> getAllHangGiay() {
        return (List<HangGiay>) hangGiayRepor.findAll();
    }

    @Override
    public HangGiay getHangGiay(Integer MaHang) {
        HangGiay hangGiay = (HangGiay) hangGiayRepor.findById(MaHang).get();
        return hangGiay;
    }
}
