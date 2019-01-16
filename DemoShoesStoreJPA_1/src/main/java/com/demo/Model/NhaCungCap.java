package com.demo.Model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "nhacungcap")
public class NhaCungCap {

    @Id
    private Integer mancc;

    @Column(name = "tenncc")
    private String tenncc;

    @Column(name = "sodt")
    private String sodt;

    @Column(name = "diachi")
    private String diachi;

    @OneToMany(mappedBy = "mancc", cascade = CascadeType.ALL)
    private List<PhieuNhap> phieunhaps;

    public Integer getMancc() {
        return mancc;
    }

    public void setMancc(Integer mancc) {
        this.mancc = mancc;
    }

    public String getTenncc() {
        return tenncc;
    }

    public void setTenncc(String tenncc) {
        this.tenncc = tenncc;
    }

    public String getSodt() {
        return sodt;
    }

    public void setSodt(String sodt) {
        this.sodt = sodt;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }
}
