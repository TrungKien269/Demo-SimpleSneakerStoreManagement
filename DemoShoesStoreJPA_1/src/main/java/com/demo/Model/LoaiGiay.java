package com.demo.Model;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "loaigiay")
public class LoaiGiay {

    @Id
    @Column(name = "maloai")
    private Integer maloai;

    @Column(name = "tenloai")
    private String tenloai;

    @Column(name = "mota")
    private String mota;

    @OneToMany(targetEntity = Giay.class, mappedBy = "maloai", orphanRemoval = false, fetch = FetchType.LAZY)
    private Set<Giay> giays;

    public Integer getMaloai() {
        return maloai;
    }

    public void setMaloai(Integer maloai) {
        this.maloai = maloai;
    }

    public String getTenloai() {
        return tenloai;
    }

    public void setTenloai(String tenloai) {
        this.tenloai = tenloai;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public Set<Giay> getGiays() {
        return giays;
    }

    public void setGiays(Set<Giay> giays) {
        this.giays = giays;
    }
}
