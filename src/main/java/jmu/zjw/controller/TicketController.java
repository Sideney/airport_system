package jmu.zjw.controller;

import jmu.zjw.po.Ticket;
import jmu.zjw.po.mOrder;
import jmu.zjw.service.TicketService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.ArrayList;

@Controller
public class TicketController {
    @Resource(name="ticketServiceImpl")
    private TicketService ticketService;
    @RequestMapping(value="/insertTicket.do")
    public String insertTicket(String tPrice, String tFood, String pfId, String sId, String cabinId, String oPhone, String oIdentify, String uIdentify, HttpSession session) {
        Ticket ticket = new Ticket();
        ticket.setTprice(Integer.parseInt(tPrice));
        ticket.setTFood(tFood);
        ticket.setTCity1((String)session.getAttribute("tCity1"));
        ticket.setTCity2((String)session.getAttribute("tCity2"));
        ticket.setOfId(pfId);
        ticket.setSId(sId);
        ticket.setCabinId(cabinId);
        mOrder mOrder = new mOrder();
        mOrder.setOprice(Integer.parseInt(tPrice));
        mOrder.setPhone(oPhone);
        mOrder.setOId(Integer.parseInt(oIdentify));
        Timestamp d = new Timestamp(System.currentTimeMillis());
        mOrder.setOtime(d);
        mOrder.setCrId(uIdentify);
        this.ticketService.insertTicket(ticket, mOrder);
        return "redirect:/updateTicket.do?sId=" + sId + "&asId=" + cabinId + "&pfId=" + pfId;
    }
    @RequestMapping(value="/updateTicket.do")
    public String updateTicket(String sId, String cabinId, String ofId) {   //订票后更新表
        Ticket ticket1 = new Ticket();
        ticket1.setCabinId(cabinId);
        ticket1.setSId(sId);
        this.ticketService.updateTicket(ticket1, ofId);
        return "successUser";
    }
    @RequestMapping(value="/findTicketById.do")
    public String  findTicketById(String uIdentify, Model model) {   //查询自己的机票
        ArrayList<Ticket> ticket = new ArrayList<>();
        ticket = this.ticketService.findTicketById(uIdentify);
        model.addAttribute("ticket", ticket);
        return "showTicket";
    }
    @RequestMapping(value="/findTicketBytId.do")
    public String findTicketBytId(int tId) {
        Ticket ticket = new Ticket();
        ticket = this.ticketService.findTicketBytId(tId);
        return "redirect:/deleteTicket.do?tId=" + tId + "&sId=" + ticket.getSId() + "&asId=" + ticket.getCabinId();
    }
    @RequestMapping(value="/deleteTicket.do")
    public String deleteTicket(int tId, int sId, int asId) {   //退票
        this.ticketService.deleteTicket(tId);
        return "redirect:/updateTicket2.do?sId=" + sId + "&asId=" + asId;
    }
    @RequestMapping(value="/updateTicket2.do")
    public String updateTicket2(String sId, String cabinId) {   //退票后更新表
        Ticket ticket1 = new Ticket();
        ticket1.setCabinId(cabinId);
        ticket1.setSId(sId);
        this.ticketService.updateTicket2(ticket1);
        return "successUser";
    }
}
