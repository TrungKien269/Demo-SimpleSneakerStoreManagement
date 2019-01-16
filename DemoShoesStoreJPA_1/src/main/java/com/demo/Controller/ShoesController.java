package com.demo.Controller;

import com.demo.Repository.GiaGiayRepor;
import com.demo.Repository.HangGiayRepor;
import com.demo.Services.*;
import org.springframework.stereotype.Controller;
import com.demo.Model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ShoesController {

    @Autowired
    GiayService giayService;

    @Autowired
    AnhGiayService anhGiayService;

    @Autowired
    SizeGiayService sizeGiayService;

    @Autowired
    GiaGiayService giaGiayService;

    @Autowired
    MauGiayService mauGiayService;

    @Autowired
    HangGiayService hangGiayService;

    @Autowired
    LoaiGiayService loaiGiayService;

    @Autowired
    NguonGocService nguonGocService;

    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public ModelAndView ShowGiay(){
        List<Giay> list = giayService.getAllShoes();
        ModelAndView model = new ModelAndView();
        model.addObject("shoesList", list);
        model.setViewName("test");
        return model;
    }

    @RequestMapping(value = "/insertshoes", method = RequestMethod.GET)
    public ModelAndView ManageShoes(){

        List<Giay> shoesList = giayService.getAllShoes();
        List<HangGiay> hanggiayList = hangGiayService.getAllHangGiay();
        List<LoaiGiay> loaigiayList = loaiGiayService.getAllLoaiGiay();
        List<NguonGoc> nguongocList = nguonGocService.getAllNguonGoc();
        List<SizeGiay> sizeList = sizeGiayService.getAllSize();
        String IDGiay = giayService.CountShoes().toString();


        ModelAndView model = new ModelAndView();
        model.addObject("shoesList", shoesList);
        model.addObject("hanggiayList", hanggiayList);
        model.addObject("loaigiayList", loaigiayList);
        model.addObject("nguongocList", nguongocList);
        model.addObject("sizeList", sizeList);
        model.addObject("shoesID", IDGiay);
        model.setViewName("shoesadding");
        return model;
    }

    @RequestMapping(value = "/shoesdetail/{magiay}", method = RequestMethod.GET)
    public ModelAndView ChiTietGiay(@PathVariable("magiay") String MaGiay){
        ModelAndView model = new ModelAndView();
        String AnhGiay = "../../static/assets/img/shoes/";
        Giay giay = giayService.getShoes(Integer.parseInt(MaGiay));
        AnhGiay = AnhGiay + giay.getAnhgiays().get(0).getLinkanh();
        model.addObject("giay", giay);
        model.addObject("anhgiay", AnhGiay);
        model.setViewName("shoesdetail");
        return model;
    }

    @RequestMapping(value = "/addchitietsize", method = RequestMethod.POST)
    public ModelAndView AddSizeGiay(@RequestParam(value = "magiay") String magiay,
                                    @RequestParam(value = "sizegiay") String sizegiay){
        ModelAndView model = new ModelAndView();
        Giay giay = giayService.getShoes(Integer.parseInt(magiay));
        SizeGiay sizeGiay = sizeGiayService.getSizeGiay(Double.parseDouble(sizegiay));
        giay.getSizegiays().add(sizeGiay);
        sizeGiay.getGiays().add(giay);
        String noti = giayService.UpdateShoes(giay);
        if(noti.equals("Success"))
        {
            model = ChiTietGiay(magiay);
        }
        else
        {
            model.setViewName("error");
            model.addObject("error", noti);
        }
        return model;
    }

    @RequestMapping(value = "/addgiagiay", method = RequestMethod.POST)
    public ModelAndView AddGiaGiay(@RequestParam(value = "magiay") String magiay,
                                   @RequestParam(value = "giagiay") String giagiay){
        ModelAndView model = new ModelAndView();
        Gia gia = new Gia();
        gia.setMagiay(Integer.parseInt(magiay));
        gia.setGiagiay(Double.parseDouble(giagiay));
        GiaGiay giaGiay = new GiaGiay();
        giaGiay.setGia(gia);
        String noti = giaGiayService.InsertGiaGiay(giaGiay);
        if(noti.equals("Success"))
        {
            model = ChiTietGiay(magiay);
        }
        else
        {
            model.setViewName("error");
            model.addObject("error", noti);
        }
        return model;
    }

    @RequestMapping(value = "/addmaugiay", method = RequestMethod.POST)
    public ModelAndView AddMauGiay(@RequestParam(value = "magiay") String magiay,
                                   @RequestParam(value = "maugiay") String maugiay){
        ModelAndView model = new ModelAndView();
        Mau mau = new Mau();
        mau.setMagiay(Integer.parseInt(magiay));
        mau.setMaugiay(maugiay);
        MauGiay mauGiay = new MauGiay();
        mauGiay.setMau(mau);
        String noti = mauGiayService.InsertMauGiay(mauGiay);
        if(noti.equals("Success"))
        {
            model = ChiTietGiay(magiay);
        }
        else
        {
            model.setViewName("error");
            model.addObject("error", noti);
        }
        return model;
    }

    @RequestMapping(value = "/addgiay", method = RequestMethod.POST)
    public ModelAndView AddGiay(@RequestParam(value = "magiay") String magiay,
                                   @RequestParam(value = "tengiay") String tengiay,
                                   @RequestParam(value = "mahang") String mahang,
                                   @RequestParam(value = "maloai") String maloai,
                                   @RequestParam(value = "manuoc") String manuoc,
                                   @RequestParam(value = "vnsize") String vnsize,
                                   @RequestParam(value = "maugiay") String maugiay,
                                   @RequestParam(value = "giagiay") String giagiay,
                                   @RequestParam(value = "hinh") MultipartFile hinh){

        Giay giay = new Giay();
        giay.setMagiay(Integer.parseInt(magiay));
        giay.setTengiay(tengiay);
        giay.setMahang(Integer.parseInt(mahang));
        giay.setManuoc(Integer.parseInt(manuoc));
        giay.setMaloai(Integer.parseInt(maloai));
        giay.setTinhtrang(1);
        String noti1 = giayService.InsertShoes(giay);

        SizeGiay sizeGiay = sizeGiayService.getSizeGiay(Double.parseDouble(vnsize));
        giay = giayService.getShoes(Integer.parseInt(magiay));
        List<SizeGiay> sizeList = new ArrayList<SizeGiay>();
        sizeList.add(sizeGiay);
        giay.setSizegiays(sizeList);
        sizeGiay.getGiays().add(giay);
        String noti2 = giayService.UpdateShoes(giay);

        Mau mau = new Mau();
        mau.setMagiay(Integer.parseInt(magiay));
        mau.setMaugiay(maugiay);
        MauGiay mauGiay = new MauGiay();
        mauGiay.setMau(mau);
        String noti3 = mauGiayService.InsertMauGiay(mauGiay);

        Gia gia = new Gia();
        gia.setMagiay(Integer.parseInt(magiay));
        gia.setGiagiay(Double.parseDouble(giagiay));
        GiaGiay giaGiay = new GiaGiay();
        giaGiay.setGia(gia);
        String noti4 = giaGiayService.InsertGiaGiay(giaGiay);

        Long countShoes = giayService.CountShoes() - 111;
        Double maAnh = countShoes.doubleValue();
        String idHinh = maAnh + ".jpeg";
        saveFileTo(hinh, idHinh);
        Anh anh = new Anh();
        anh.setMaanh(maAnh);
        anh.setMagiay(Integer.parseInt(magiay));
        AnhGiay anhGiay = new AnhGiay();
        anhGiay.setAnh(anh);
        anhGiay.setLinkanh(idHinh);
        String noti5 = anhGiayService.InsertAnhGiay(anhGiay);

        ModelAndView model = new ModelAndView();

        if(noti1.equals("Success") && noti2.equals("Success") && noti3.equals("Success") && noti4.equals("Success") && noti5.equals("Success"))
        {
            model = ManageShoes();
        }
        else
        {
            model.setViewName("error");
            model.addObject("error1", noti1);
            model.addObject("error2", noti2);
            model.addObject("error3", noti3);
            model.addObject("error4", noti4);
            model.addObject("error5", noti5);
        }
        return model;
    }

    @RequestMapping(value = "/shoesdetail", method = RequestMethod.GET)
    public ModelAndView ModifyShoes(){
        List<Giay> shoesList = giayService.getAllShoes();
        List<HangGiay> hanggiayList = hangGiayService.getAllHangGiay();
        List<LoaiGiay> loaigiayList = loaiGiayService.getAllLoaiGiay();
        List<NguonGoc> nguongocList = nguonGocService.getAllNguonGoc();
        List<SizeGiay> sizeList = sizeGiayService.getAllSize();

        ModelAndView model = new ModelAndView();
        model.addObject("shoesList", shoesList);
        model.addObject("hanggiayList", hanggiayList);
        model.addObject("loaigiayList", loaigiayList);
        model.addObject("nguongocList", nguongocList);
        model.addObject("sizeList", sizeList);
        List<Giay> list = giayService.getAllShoes();

        model.setViewName("editshoesdetail");
        return model;
    }

    @RequestMapping(value = "/updateshoes", method = RequestMethod.POST)
    public ModelAndView UpdateShoes(@RequestParam(value = "magiay") String magiay,
                                    @RequestParam(value = "tengiay") String tengiay,
                                    @RequestParam(value = "mahang") String mahang,
                                    @RequestParam(value = "maloai") String maloai,
                                    @RequestParam(value = "manuoc") String manuoc){
        Giay giay = giayService.getShoes(Integer.parseInt(magiay));
        giay.setTengiay(tengiay);
        giay.setMahang(Integer.parseInt(mahang));
        giay.setManuoc(Integer.parseInt(manuoc));
        giay.setMaloai(Integer.parseInt(maloai));
        giay.setTinhtrang(1);
        String noti = giayService.UpdateShoes(giay);

        ModelAndView model = new ModelAndView();
        if(noti.equals("Success"))
            model = ChonGiay(magiay);
        else
        {
            model.setViewName("error");
            model.addObject("error", noti);
        }
        return model;
    }

    @RequestMapping(value = "/chosenshoes/{magiay}", method = RequestMethod.GET)
    public ModelAndView ChonGiay(@PathVariable("magiay") String MaGiay){
        List<Giay> shoesList = giayService.getAllShoes();
        List<HangGiay> hanggiayList = hangGiayService.getAllHangGiay();
        List<LoaiGiay> loaigiayList = loaiGiayService.getAllLoaiGiay();
        List<NguonGoc> nguongocList = nguonGocService.getAllNguonGoc();
        List<SizeGiay> sizeList = sizeGiayService.getAllSize();

        ModelAndView model = new ModelAndView();
        model.addObject("shoesList", shoesList);
        model.addObject("hanggiayList", hanggiayList);
        model.addObject("loaigiayList", loaigiayList);
        model.addObject("nguongocList", nguongocList);
        model.addObject("sizeList", sizeList);

        Giay giay = giayService.getShoes(Integer.parseInt(MaGiay));
        model.addObject("giay", giay);
        model.setViewName("chosenshoes");
        return model;
    }

    private static void saveFileTo(MultipartFile file, String id)
    {
        try {
            if(!file.isEmpty())
            {
                // Get the file and save it somewhere
                byte[] bytes = file.getBytes();
                Path path = Paths.get(System.getProperty("user.dir") + "/src/main/webapp/static/assets/img/shoes/" + id);
                Files.write(path, bytes);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
