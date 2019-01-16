package com.demo.Repository;

import com.demo.Model.Mau;
import com.demo.Model.MauGiay;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MauGiayRepor extends JpaRepository<MauGiay, Mau> {
}
