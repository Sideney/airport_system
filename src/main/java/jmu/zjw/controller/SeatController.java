package jmu.zjw.controller;

import jmu.zjw.po.Seat;
import jmu.zjw.service.SeatService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

@Controller
public class SeatController {
    @Resource(name="seatServiceImpl")
    private SeatService seatService;
    @RequestMapping(value="/insertSeat.do")
    public String insertSeat(String pfId, String num1,String num2,String num3) {
        int n = Integer.parseInt(num1);
        int m = Integer.parseInt(num2);
        int k = Integer.parseInt(num3);
        Seat seat = new Seat();
        seat.setStatus(true);
        seat.setOfId(pfId);
        seat.setSLevel(1);
        for(int i = 1; i <= n; i++) {
            seat.setSNum(i);
            this.seatService.insertSeat(seat);
        }
        seat.setSLevel(2);
        for(int i = 1; i <= m; i++) {
            seat.setSNum(i);
            this.seatService.insertSeat(seat);
        }
        seat.setSLevel(3);
        for(int i = 1; i <= k; i++) {
            seat.setSNum(i);
            this.seatService.insertSeat(seat);
        }
        return "successAdmin";
    }
    @RequestMapping(value="/findSeatById.do")
    public String findSeatById(String ofId, int sLevel,int asPrice,int cabinId, Model model, HttpSession session) {
        ArrayList<Seat> seats = new ArrayList<>();
        seats = this.seatService.findSeatById(ofId, sLevel);
            session.setAttribute("ticketpfId",ofId);
            session.setAttribute("tickettPrice",asPrice);
            session.setAttribute("ticketasId",cabinId);
            session.setAttribute("ticketsLevel",sLevel);
            model.addAttribute("seat", seats);
        return "showSeat";
    }
}
