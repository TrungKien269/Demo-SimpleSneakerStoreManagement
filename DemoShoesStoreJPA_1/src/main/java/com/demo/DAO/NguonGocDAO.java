package com.demo.DAO;


import com.demo.Model.NguonGoc;
import com.demo.Repository.NguonGocRepor;
import com.demo.Services.NguonGocService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class NguonGocDAO implements NguonGocService {

    @Autowired
    NguonGocRepor nguonGocRepor;

    @Override
    public List<NguonGoc> getAllNguonGoc() {
        return (List<NguonGoc>) nguonGocRepor.findAll();
    }

    @Override
    public NguonGoc getNguonGoc(Integer MaNuoc) {
        return nguonGocRepor.findById(MaNuoc).get();
    }
}
