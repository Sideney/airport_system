package jmu.zjw.controller;

import jmu.zjw.po.Cabin;
import jmu.zjw.service.CabinService;
import jmu.zjw.service.CityService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

@Controller
public class CabinController {
    @Resource(name="cabinServiceImpl")
    private CabinService cabinService;
    @RequestMapping(value="/findCabinById.do")
    public String findAirspaceById2(String ofId, Model model, HttpSession session) {   //根据执行航班号查询舱位
        ArrayList<Cabin> cabin = new ArrayList<>();
        cabin = this.cabinService.findCabinById(ofId);
        model.addAttribute("cabin", cabin);
        model.addAttribute("ofId",ofId);
        return "showCabin";
    }

    @RequestMapping(value="/findCabinById1.do")
    public String findAirspaceById(String ofId, Model model, HttpSession session) {   //根据执行航班号查询舱位
        ArrayList<Cabin> cabin = new ArrayList<>();
        cabin = this.cabinService.findCabinById(ofId);
        model.addAttribute("cabin", cabin);
        model.addAttribute("ofId",ofId);
        return "showpCabin";
    }

}
