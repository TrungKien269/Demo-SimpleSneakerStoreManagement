package com.demo.Services;

import com.demo.Model.LoaiGiay;

import java.util.List;

public interface LoaiGiayService {

    public List<LoaiGiay> getAllLoaiGiay();

    public LoaiGiay getLoaiGiay(Integer MaLoai);
}
