package com.demo.Services;

import com.demo.Model.ChiTietGiay;
import com.demo.Model.Giay;

import java.util.List;
import java.util.Optional;

public interface GiayService {

    public List<Giay> getAllShoes();

    public Giay getShoes(Integer MaGiay);

    public String InsertShoes(Giay giay);

    public String UpdateShoes(Giay giay);

    public String DeleteShoes(Integer MaGiay);

    public Long CountShoes();
}
