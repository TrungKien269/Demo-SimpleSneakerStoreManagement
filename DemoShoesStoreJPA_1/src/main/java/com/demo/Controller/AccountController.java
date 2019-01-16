package com.demo.Controller;


import com.demo.Model.Account;
import com.demo.Model.AnhGiay;
import com.demo.Services.AccountService;
import com.demo.Services.AnhGiayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class AccountController {

    @Autowired
    AccountService accountService;

    @Autowired
    AnhGiayService anhGiayService;

    @RequestMapping(value = "/account")
    public ModelAndView Account(){
        return new ModelAndView("account");
    }

    @RequestMapping(value = "usermanager", method = RequestMethod.GET)
    public ModelAndView ManageAccount(){
        List<Account> accList = accountService.getAllAccounts();
        ModelAndView model = new ModelAndView();
        model.addObject("accList", accList);
        model.setViewName("usermanager");
        return model;
    }

    @RequestMapping(value = "/editaccount/{username}", method = RequestMethod.GET)
    public ModelAndView EditAccount(@PathVariable("username") String UserName){
        ModelAndView model = new ModelAndView();
        Account account = accountService.getAccount(UserName);
        model.addObject("account", account);
        model.setViewName("editaccount");
        return model;
    }

    @RequestMapping(value = "/deleteaccount/{username}", method = RequestMethod.GET)
    public ModelAndView DeleteAccount(@PathVariable("username") String UserName){
        ModelAndView model = new ModelAndView();
        String noti = accountService.DeleteAccount(UserName);
        if(noti.equals("Success"))
        {
            model = ManageAccount();
            return model;
        }
        else {
            model.setViewName("error");
            model.addObject("error", noti);
            return model;
        }
    }

    @RequestMapping(value = "/newaccount", method = RequestMethod.POST)
    public ModelAndView InsertAccount(@RequestParam(value = "username") String username,
                                      @RequestParam(value = "password") String pass,
                                      @RequestParam(value = "position") String position){
        ModelAndView model = new ModelAndView();
        Account account = new Account();
        account.setUsername(username);
        account.setPassword(pass);
        account.setMaloai(Integer.parseInt(position));
        String noti = accountService.InsertAccount(account);
        if(noti.equals("Success"))
        {
            model = Account();
            return model;
        }
        else {
            model.setViewName("error");
            model.addObject("error", noti);
            return model;
        }
    }

    @RequestMapping(value = "/updateaccount", method = RequestMethod.POST)
    public ModelAndView UpdateAccount(@RequestParam(value = "username") String username,
                                      @RequestParam(value = "password") String pass,
                                      @RequestParam(value = "position") String position){
        ModelAndView model = new ModelAndView();
        Account account = new Account();
        account.setUsername(username);
        account.setPassword(pass);
        account.setMaloai(Integer.parseInt(position));
        String noti = accountService.UpdateAccount(account);
        if(noti.equals("Success"))
        {
            model = EditAccount(username);
            return model;
        }
        else {
            model.setViewName("error");
            model.addObject("error", noti);
            return model;
        }
    }

}
