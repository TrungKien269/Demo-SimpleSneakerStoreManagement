package com.demo.Model;

import javax.persistence.*;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "sizegiay")
public class SizeGiay {

    @Id
    private Double vnsize;

    @Column(name = "uksize")
    private Double uksize;

    @Column(name = "ussize")
    private Double ussize;

    @ManyToMany(fetch = FetchType.LAZY, cascade = {
                    CascadeType.PERSIST,
                    CascadeType.MERGE}, mappedBy = "sizegiays")
    private List<Giay> giays;

    public Double getVnsize() {
        return vnsize;
    }

    public void setVnsize(Double vnsize) {
        this.vnsize = vnsize;
    }

    public Double getUksize() {
        return uksize;
    }

    public void setUksize(Double uksize) {
        this.uksize = uksize;
    }

    public Double getUssize() {
        return ussize;
    }

    public void setUssize(Double ussize) {
        this.ussize = ussize;
    }

    public List<Giay> getGiays() {
        return giays;
    }

    public void setGiays(List<Giay> giays) {
        this.giays = giays;
    }
}
