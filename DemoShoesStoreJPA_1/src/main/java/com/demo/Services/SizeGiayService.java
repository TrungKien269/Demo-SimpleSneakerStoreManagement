package com.demo.Services;

import com.demo.Model.SizeGiay;

import java.util.List;

public interface SizeGiayService {

    public List<SizeGiay> getAllSize();

    public String InsertSizeGiay(SizeGiay sizeGiay);

    public SizeGiay getSizeGiay(Double VNSize);
}
