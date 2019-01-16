package com.demo.Repository;

import com.demo.Model.AnhGiay;
import com.demo.Model.ChiTietGiay;
import com.demo.Model.Giay;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.Repository;

import java.util.List;

public interface GiayRepor extends JpaRepository<Giay, Integer> {

//    @Query("Select giay.magiay,giay.tengiay ,hanggiay.tenhang, loaigiay.tenloai, nguongoc.tennuoc, " +
//            "tinhtrang\n" +
//            "From giay inner join hanggiay on giay.mahang = hanggiay.mahang inner join " +
//            "loaigiay on giay.maloai = loaigiay.maloai \n" +
//            "inner join nguongoc on giay.manuoc = nguongoc.manuoc")
//    public List<ChiTietGiay> getAllShoes();
}
