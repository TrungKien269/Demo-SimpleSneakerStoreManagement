package com.demo.Services;

import com.demo.Model.HangGiay;

import java.util.List;

public interface HangGiayService {

    public List<HangGiay> getAllHangGiay();

    public HangGiay getHangGiay(Integer MaHang);
}
