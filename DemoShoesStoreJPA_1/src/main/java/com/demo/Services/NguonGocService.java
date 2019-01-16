package com.demo.Services;

import com.demo.Model.NguonGoc;

import java.util.List;

public interface NguonGocService {

    public List<NguonGoc> getAllNguonGoc();

    public NguonGoc getNguonGoc(Integer MaNuoc);
}
