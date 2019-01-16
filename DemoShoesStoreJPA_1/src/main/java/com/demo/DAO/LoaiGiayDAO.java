package com.demo.DAO;

import com.demo.Model.LoaiGiay;
import com.demo.Repository.LoaiGiayRepor;
import com.demo.Services.LoaiGiayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class LoaiGiayDAO implements LoaiGiayService {

    @Autowired
    LoaiGiayRepor loaiGiayRepor;

    @Override
    public List<LoaiGiay> getAllLoaiGiay() {
        return (List<LoaiGiay>) loaiGiayRepor.findAll();
    }

    @Override
    public LoaiGiay getLoaiGiay(Integer MaLoai) {
        return loaiGiayRepor.findById(MaLoai).get();
    }
}
