package com.demo.Controller;

import com.demo.Model.*;
import com.demo.Services.ChiTietPhieuNhapService;
import com.demo.Services.GiayService;
import com.demo.Services.NhaCungCapService;
import com.demo.Services.PhieuNhapService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class BillController {

    @Autowired
    PhieuNhapService phieuNhapService;

    @Autowired
    NhaCungCapService nhaCungCapService;

    @Autowired
    GiayService giayService;

    @Autowired
    ChiTietPhieuNhapService chiTietPhieuNhapService;

    @RequestMapping(value = "/listbills", method = RequestMethod.GET)
    public ModelAndView ListBillsPage(){
        List<PhieuNhap> phieuNhapList = phieuNhapService.getAllBill();
        ModelAndView model = new ModelAndView();
        model.setViewName("bill");
        model.addObject("phieuNhapList", phieuNhapList);
        return model;
    }

    @RequestMapping(value = "/billdetail/{serial}", method = RequestMethod.GET)
    public ModelAndView ListBillsDetailPage(@PathVariable("serial") String serial){
        PhieuNhap phieuNhap = phieuNhapService.getPhieuNhap(Integer.parseInt(serial));
        List<ChiTietPhieuNhap> chiTietPhieuNhaps = phieuNhap.getChitietphieunhaps();
        ModelAndView model = new ModelAndView();
        model.setViewName("billdetail");
        model.addObject("serial", serial);
        model.addObject("chiTietPhieuNhaps", chiTietPhieuNhaps);
        return model;
    }

    @RequestMapping(value = "/updatebillpage/{serial}", method = RequestMethod.GET)
    public ModelAndView UpdateBillsDetailPage(@PathVariable("serial") String serial){
        ModelAndView model = new ModelAndView();
        List<Giay> giayList = giayService.getAllShoes();
        model.setViewName("updatebill");
        model.addObject("giayList", giayList);
        model.addObject("serial", serial);
        return model;
    }

    @RequestMapping(value = "/insertbillpage", method = RequestMethod.GET)
    public ModelAndView InsertBillPage(){
        Long Serial = phieuNhapService.CountBills();
        List<NhaCungCap> nccList = nhaCungCapService.getAllNhaCungCap();
        List<Giay> giayList = giayService.getAllShoes();
        ModelAndView model = new ModelAndView();
        model.addObject("serial", Serial);
        model.addObject("nccList", nccList);
        model.addObject("giayList", giayList);
        model.setViewName("insertbill");
        return model;
    }

    @RequestMapping(value = "/insertbill", method = RequestMethod.POST)
    public ModelAndView InsertBill(@RequestParam(value = "serial") String serial,
                                   @RequestParam(value = "mancc") String mancc,
                                   @RequestParam(value = "ngaynhap") String ngaynhap){
        PhieuNhap phieuNhap = new PhieuNhap();
        phieuNhap.setNgaynhap(ngaynhap);
        phieuNhap.setMancc(Integer.parseInt(mancc));
        String noti = phieuNhapService.InsertBill(phieuNhap);

        ModelAndView model = new ModelAndView();
        if(noti.equals("Success"))
            model = InsertBillPage();
        else {
            model.setViewName("error");
            model.addObject("error", noti);
        }
        return model;
    }

    @RequestMapping(value = "/updatebill", method = RequestMethod.POST)
    public ModelAndView UpdateBill(@RequestParam(value = "serial") String serial,
                                   @RequestParam(value = "magiay") String magiay,
                                   @RequestParam(value = "soluong") String soluong,
                                   @RequestParam(value = "gianhap") String gianhap){

        BillDetail billDetail = new BillDetail();
        billDetail.setSerial(Integer.parseInt(serial));
        billDetail.setMagiay(Integer.parseInt(magiay));
        ChiTietPhieuNhap chiTietPhieuNhap = new ChiTietPhieuNhap();
        chiTietPhieuNhap.setGianhap(Double.parseDouble(gianhap));
        chiTietPhieuNhap.setSoluong(Integer.parseInt(soluong));
        chiTietPhieuNhap.setBilldetail(billDetail);
        PhieuNhap phieuNhap = phieuNhapService.getPhieuNhap(Integer.parseInt(serial));
        chiTietPhieuNhap.setPhieunhap(phieuNhap);
        String noti = chiTietPhieuNhapService.InsertChiTietBill(chiTietPhieuNhap);
        ModelAndView model = new ModelAndView();
        if(noti.equals("Success"))
            model = ListBillsPage();
        else {
            model.setViewName("error");
            model.addObject("error", noti);
        }
        return model;
    }
}
