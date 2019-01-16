package com.demo.Repository;

import com.demo.Model.Gia;
import com.demo.Model.GiaGiay;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GiaGiayRepor extends JpaRepository<GiaGiay, Gia> {
}
