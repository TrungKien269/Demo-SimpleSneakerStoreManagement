package com.demo.Services;

import com.demo.Model.AnhGiay;

import java.util.List;

public interface AnhGiayService  {

    public List<AnhGiay> getAllAnhGiay();

    public List<AnhGiay> getAnhFromMaGiay(Integer MaGiay);

    public String InsertAnhGiay(AnhGiay anhGiay);
}
