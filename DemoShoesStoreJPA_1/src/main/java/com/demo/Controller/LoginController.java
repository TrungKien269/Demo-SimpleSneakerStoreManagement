package com.demo.Controller;

import com.demo.Model.AnhGiay;
import com.demo.Services.AccountService;
import com.demo.Services.AnhGiayService;
import org.springframework.stereotype.Controller;
import com.demo.Model.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@Controller
public class LoginController {

    @Autowired
    AccountService accountService;

    @Autowired
    AnhGiayService anhGiayService;

    private Cookie [] cookies;
    private String username = "";

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView Index(HttpServletRequest request){
        cookies = request.getCookies();
        List<Account> accList = accountService.getAllAccounts();
        ModelAndView model = Dashboard();
        for (Cookie cookie: cookies ) {
            for(Account account: accList){
                if(cookie.getName().equals(account.getUsername()))
                    return model;
            }
        }
        return new ModelAndView("login");
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView Login(@RequestParam(value = "username") String username,
                              @RequestParam(value = "pass") String pass,
                              HttpServletResponse response) {
        boolean check = accountService.CheckAccount(username, pass);
        this.username = username;
        String cookieValue = username + pass;
        Cookie cookie = new Cookie(username, cookieValue);
        cookie.setMaxAge(60 * 60);
        response.addCookie(cookie);
        ModelAndView model = Dashboard();
        if(check)
        {
            return model;
        }
        else
        {
            this.username = "";
            model.setViewName("error");
            model.addObject("error", "Username or Password is Wrong!");
            return model;
        }
    }

    @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
    public  ModelAndView Dashboard(){
        List<AnhGiay> list = anhGiayService.getAllAnhGiay();
        ModelAndView model = new ModelAndView();
        model.setViewName("dashboard");
        model.addObject("list",list);
        model.addObject("user", this.username);
        return model;
    }

    @RequestMapping(value = "/logout")
    public ModelAndView Logout(HttpServletRequest request,HttpServletResponse response){
        cookies = request.getCookies();
        List<Account> accList = accountService.getAllAccounts();
        for (Cookie cookie: cookies ) {
            for(Account account: accList){
                if(cookie.getName().equals(account.getUsername())){
                    cookie.setValue(null);
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                }
            }
        }
        this.username = "";
        return new ModelAndView("/login");
    }
}
