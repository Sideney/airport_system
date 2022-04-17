package jmu.zjw.controller;

import jmu.zjw.po.City;
import jmu.zjw.service.CityService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class CityController {
    @Resource(name="cityServiceImpl")
    private CityService cityService;

    @RequestMapping(value="/findCityByapName.do")
    public String indCityByapName(String apName, Model model){
        City city = new City();
        city = this.cityService.findCityByapName(apName);
        model.addAttribute("city",city);
        return "showCity";
    }
}
