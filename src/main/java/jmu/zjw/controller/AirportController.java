package jmu.zjw.controller;

import jmu.zjw.po.Airport;
import jmu.zjw.service.AirportService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class AirportController {
    @Resource(name="airportServiceImpl")
    private AirportService airportService;
    @RequestMapping(value="/insertAirport.do")
    public String insertAirport(String apName, int cId, HttpSession session) {
        Airport airport = new Airport();
        apName = (String)session.getAttribute("apName");
        airport.setApName(apName);
        airport.setCId(cId);
        this.airportService.insertAirport(airport);
        return "successAdmin";
    }

    @RequestMapping(value="/findAirportByName.do")
    public String findAirportByName(String apName1, String apName2, String pfId, String pfTime, String pfEstimateTime1, String pfActualTime1, String pfGate, String pfAirTime, String fId, Model model, HttpSession session) {   //根据机场名查询机场ID
        if (apName1.equals("") || apName2.equals("") || pfId.equals("") || pfTime.equals("") || pfEstimateTime1.equals("") || pfActualTime1.equals("") || pfGate.equals("") || pfAirTime.equals("") || fId.equals("")) {
            model.addAttribute("wrong", true);
            return "insertPerformFlight";
        }
        Airport airport1 = new Airport();
        Airport airport2 = new Airport();
        airport1 = this.airportService.findAirportByName(apName1);
        airport2 = this.airportService.findAirportByName(apName2);
        if (airport1 == null || airport2 == null) {
            model.addAttribute("wrongapId", true);
            return "insertPerformFlight";
        }
        session.setAttribute("apName1", apName1);
        session.setAttribute("apName2", apName2);
        return "redirect:/insertonFlight.do?pfId=" + pfId + "&pfTime=" + pfTime + "&pfEstimateTime1=" + pfEstimateTime1 + "&pfActualTime1=" + pfActualTime1 + "&pfGate=" + pfGate + "&pfAirTime=" + pfAirTime + "&fId=" + fId + "&apId1=" + airport1.getApId() + "&apId2=" + airport2.getApId();
    }
}
