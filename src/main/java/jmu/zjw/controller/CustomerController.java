package jmu.zjw.controller;

import jmu.zjw.po.Customer;
import jmu.zjw.service.CabinService;
import jmu.zjw.service.CustomerService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class CustomerController {
    @Resource(name="customerServiceImpl")
    private CustomerService customerService;
    @RequestMapping(value="/loginUser.do")
    public String loginUser(String uIdentify, String uPassword, Model model, HttpSession session) {
        if(uIdentify.equals("")||uPassword.equals(""))  return "loginuserIndex";
        if(this.customerService.loginUser(uIdentify, uPassword) == null) {
            model.addAttribute("flag",true);
            return "loginuserIndex";
        }
        String uName = this.customerService.loginUser(uIdentify, uPassword);
        session.setAttribute("UserId",uIdentify);
        session.setAttribute("Username",uName);
        model.addAttribute("uName", uName);
        return "showFlight";
    }

    @RequestMapping(value="/registerUser.do")
    public String registerUser(String uIdentify, String uName, String uSex,  String uPassword) {   //普通用户注册
        Customer customer = new Customer();
        customer.setCrId(uIdentify);
        customer.setCrName(uName);
        customer.setCrSex(uSex);
        customer.setCrPassword(uPassword);
        this.customerService.registerUser(customer);
        return "successUserCreate";
    }
}
