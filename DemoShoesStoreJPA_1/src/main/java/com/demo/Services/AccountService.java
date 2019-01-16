package com.demo.Services;

import com.demo.Model.Account;

import java.util.List;

public interface AccountService {
    public List<Account> getAllAccounts();

    public boolean CheckAccount(String username, String pass);

    public Account getAccount(String username);

    public String InsertAccount(Account account);

    public String UpdateAccount(Account account);

    public String DeleteAccount(String username);
}
