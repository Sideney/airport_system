package jmu.zjw.controller;

import jmu.zjw.po.Flight;
import jmu.zjw.po.onFlight;
import jmu.zjw.service.onFlightService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.ArrayList;

@Controller
public class onFlightController {
    @Resource(name="onFlightServiceImpl")
    private onFlightService onFlightService;

    @RequestMapping(value="/findAllonFlight.do")
    public String findFlight(Model model) {   //查询所有执飞航班信息
        ArrayList<onFlight> onflight = new ArrayList<>();
        onflight = this.onFlightService.findAllonFlight();
        model.addAttribute("onflight", onflight);
        return "showAllonFlight";
    }

    @RequestMapping(value="/findonFlight.do")
    public String findonFlight(String estimateCity, String arriveCity, String estimateTime, Model model, HttpSession session) {
        model.addAttribute("City1",estimateCity);
        model.addAttribute("City2",arriveCity);
        model.addAttribute("Time",estimateTime);
        session.setAttribute("tCity1", estimateCity);
        session.setAttribute("tCity2", arriveCity);
//        System.out.println((String)session.getAttribute("tCity1"));
        if(estimateCity.equals("")||estimateTime.equals("")||arriveCity.equals("")) return "showFlight";
        Timestamp estimateTime1 = Timestamp.valueOf(estimateTime + " 00:00:00");
        ArrayList<onFlight> onFlights = new ArrayList<>();
        onFlights = this.onFlightService.findonFlight(estimateCity, arriveCity, estimateTime1);
        model.addAttribute("onFlights", onFlights);
        return "showFlight";
    }

    @RequestMapping(value="/insertonFlight.do")
    public String insertPerformFlight(String pfId, String pfTime, String pfEstimateTime1, String pfActualTime1, String pfGate, String pfAirTime, String fId, int apId1, int apId2,String City1,String City2 ) {
        Timestamp pfTime1 = Timestamp.valueOf(pfTime + " 00:00:00");
        Timestamp pfEstimateTime = Timestamp.valueOf(pfTime + " " + pfEstimateTime1+":00");
        Timestamp pfActualTime = Timestamp.valueOf(pfTime + " " + pfActualTime1+":00");
        Timestamp pfAirTime1 = Timestamp.valueOf(pfTime + " " + pfAirTime+":00");
        onFlight onFlight = new onFlight();
        onFlight.setOfId(pfId);
        onFlight.setOfTime(pfTime1);
        onFlight.setFId(fId);
        onFlight.setOfGate(pfGate);
        onFlight.setApId1(apId1);
        onFlight.setApId2(apId2);
        onFlight.setOfEstimateTime1(pfEstimateTime);
        onFlight.setOfActualTime1(pfActualTime);
        onFlight.setOfAirTime(pfAirTime1);
        onFlight.setOfAirLine1(City1);
        onFlight.setOfAirLine2(City2);
            this.onFlightService.insertonFlight(onFlight);
            return "insertPerformFlight";

    }


}
