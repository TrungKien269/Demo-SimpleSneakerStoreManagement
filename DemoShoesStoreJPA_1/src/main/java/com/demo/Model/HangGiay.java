package com.demo.Model;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "hanggiay")
public class HangGiay {

    @Id
    @Column(name = "mahang")
    private Integer mahang;

    @Column(name = "tenhang")
    private String tenhang;

    @Column(name = "mota")
    private String mota;

    @OneToMany(mappedBy = "mahang", cascade = CascadeType.ALL)
    private Set<Giay> giays;

    public Integer getMahang() {
        return mahang;
    }

    public void setMahang(Integer mahang) {
        this.mahang = mahang;
    }

    public String getTenhang() {
        return tenhang;
    }

    public void setTenhang(String tenhang) {
        this.tenhang = tenhang;
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
