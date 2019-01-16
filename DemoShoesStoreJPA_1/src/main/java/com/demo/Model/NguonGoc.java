package com.demo.Model;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "nguongoc")
public class NguonGoc {

    @Id
    @Column(name = "manuoc")
    private Integer manuoc;

    @Column(name = "tennuoc")
    private String tennuoc;

    @OneToMany(targetEntity = Giay.class, mappedBy = "manuoc", orphanRemoval = false, fetch = FetchType.LAZY)
    private Set<Giay> giays;

    public Integer getManuoc() {
        return manuoc;
    }

    public void setManuoc(Integer manuoc) {
        this.manuoc = manuoc;
    }

    public String getTennuoc() {
        return tennuoc;
    }

    public void setTennuoc(String tennuoc) {
        this.tennuoc = tennuoc;
    }

    public Set<Giay> getGiays() {
        return giays;
    }

    public void setGiays(Set<Giay> giays) {
        this.giays = giays;
    }
}
