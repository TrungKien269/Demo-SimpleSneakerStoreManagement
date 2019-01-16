package com.demo.DAO;

import com.demo.Model.Account;
import com.demo.Repository.AccountRepor;
import com.demo.Services.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AccountDAO implements AccountService {

    @Autowired
    AccountRepor accountRepor;

    @Override
    public List<Account> getAllAccounts() {

        return (List<Account>) accountRepor.findAll();
    }

    @Override
    public boolean CheckAccount(String username, String pass) {
        Account account = (Account) accountRepor.findById(username).get();
        if(account.getPassword().equals(pass))
            return true;
        return false;
    }

    @Override
    public Account getAccount(String username) {
        Account account = (Account) accountRepor.findById(username).get();
        return account;
    }

    @Override
    public String InsertAccount(Account account) {
        String noti = "";
        try{
            if(!FilterAccount(account.getUsername()))
                throw new Exception("This Username has been used!");
            else {
                accountRepor.save(account);
                noti = "Success";
            }
        }catch (Exception e){
            noti = e.getMessage();
        }
        return noti;
    }

    @Override
    public String UpdateAccount(Account account) {
        String noti = "";
        try {
            accountRepor.save(account);
            noti = "Success";
        }catch (Exception e){
            noti = e.getMessage();
        }
        return noti;
    }

    @Override
    public String DeleteAccount(String username) {
        String noti = "";
        try{
            accountRepor.deleteById(username);
            noti = "Success";
        }catch (Exception e){
            noti = e.getMessage();
        }
        return noti;
    }

    public boolean FilterAccount(String username){
        List<Account> list = getAllAccounts();
        for (Account account : list) {
            if(account.getUsername().equals(username))
                return false;
        }
        return true;
    }
}
