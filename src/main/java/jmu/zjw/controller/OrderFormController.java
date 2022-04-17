package jmu.zjw.controller;

import jmu.zjw.po.mOrder;
import jmu.zjw.service.mOrderService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.annotation.Resource;
import java.util.ArrayList;

@Controller
public class OrderFormController {
    @Resource(name="mOrderServiceImpl")
    private mOrderService mOrderService;
    @RequestMapping(value="/findOrderById.do")
    public String findOrderById(String uIdentify, Model model) {   //查询自己的订单
        ArrayList<mOrder> orderForm = new ArrayList<>();
        orderForm = this.mOrderService.findOrderById(uIdentify);
        model.addAttribute("orderForm", orderForm);
        return "showOrderForm";
    }
    @RequestMapping(value="/findOrder.do")
    public String findOrder(String fId, Model model) {   //报表
        ArrayList<mOrder> orderForm = new ArrayList<>();
        orderForm = this.mOrderService.findOrder(fId);
        model.addAttribute("orderForm", orderForm);
        return "managerOrderForm";
    }

}
