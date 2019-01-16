package com.demo.DAO;

import com.demo.Model.NhaCungCap;
import com.demo.Repository.NhaCungCapRepor;
import com.demo.Services.NhaCungCapService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@Repository
public class NhaCungCapDAO implements NhaCungCapService {

    @Autowired
    NhaCungCapRepor nhaCungCapRepor;


    @Override
    public List<NhaCungCap> getAllNhaCungCap() {
        return nhaCungCapRepor.findAll();
    }

    @Override
    public NhaCungCap getNhaCungCap(Integer MaNCC) {
        return nhaCungCapRepor.getOne(MaNCC);
    }
}
