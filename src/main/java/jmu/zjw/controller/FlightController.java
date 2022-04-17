package jmu.zjw.controller;

import jmu.zjw.po.Flight;
import jmu.zjw.service.FlightService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

@Controller
public class FlightController {
    @Resource(name="flightServiceImpl")
    private FlightService flightService;

    @RequestMapping(value="/insertFlight.do")
    public String insertFlight(int pId, String fId, String fName, Model model, HttpSession session) {   //插入航班
        Flight flight = new Flight();
        flight.setFId(fId);
        flight.setFName((String)session.getAttribute("fName"));
        flight.setAmId(pId);
        try {
            this.flightService.insertFlight(flight);
        } catch (Exception e) {
            return "insertFlight";
        }
        return "successAdmin";
    }

    @RequestMapping(value="/findFlight.do")
    public String findFlight(Model model) {   //查询所有航班信息
        ArrayList<Flight> flight = new ArrayList<>();
        flight = this.flightService.findFlight();
        model.addAttribute("flight", flight);
//        System.out.println(pName);
        return "showAllFlight";
    }
}
