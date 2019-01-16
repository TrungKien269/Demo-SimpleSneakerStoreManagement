package com.demo.Services;

import com.demo.Model.NhaCungCap;

import java.util.List;

public interface NhaCungCapService {

    public List<NhaCungCap> getAllNhaCungCap();

    public NhaCungCap getNhaCungCap(Integer MaNCC);
}
