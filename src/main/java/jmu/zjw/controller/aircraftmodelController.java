package jmu.zjw.controller;

import jmu.zjw.po.aircraftmodel;
import jmu.zjw.service.aircraftmodelService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.ArrayList;

@Controller
public class aircraftmodelController {
     @Resource(name = "aircraftmodelServiceImpl")
     private aircraftmodelService aircraftmodelService;
    @RequestMapping(value="/findPlane.do")
     public String findPlane(Model model) {   //查找所有飞机
        ArrayList<aircraftmodel> planes = new ArrayList<>();
        planes = this.aircraftmodelService.findPlane();
        model.addAttribute("plane", planes);
        return "showAllPlane";
    }

    @RequestMapping(value="/insertPlane.do")
    public String insertPlane(String pName,String pSeat,Model model) {   //插入飞机
        aircraftmodel plane = new aircraftmodel();
        plane.setAmName(pName);
        try{
            plane.setAmSeat(Integer.parseInt(pSeat));
        }catch (Exception e){
            model.addAttribute("flag",true);
            return "insertPlane";
        }
        this.aircraftmodelService.insertPlane(plane);
        return "successAdmin";
    }

    }


