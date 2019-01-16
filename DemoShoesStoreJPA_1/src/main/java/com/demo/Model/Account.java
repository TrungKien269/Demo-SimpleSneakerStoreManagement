package com.demo.Model;

import javax.persistence.*;

@Entity
@Table(name = "taikhoan")
public class Account {

    @Id
    private String username;

    @Column(name = "Password")
    private String password;

    @Column(name = "maloai")
    private int maloai;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getMaloai() {
        return maloai;
    }

    public void setMaloai(Integer maloai) {
        this.maloai = maloai;
    }
}
