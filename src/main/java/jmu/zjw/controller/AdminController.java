package jmu.zjw.controller;

import jmu.zjw.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.HttpMediaTypeException;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class AdminController {
    @Resource(name="adminServiceImpl")
    private AdminService adminService;
    @RequestMapping(value="/loginAdmin.do")
    public String loginAdmin(String aId, String aPassword, Model model, HttpSession session) {   //管理员登录
        if(aId.equals("")||aPassword.equals(""))  return "loginAdminIndex";
        if(this.adminService.loginAdmin(aId, aPassword) == null) {
            model.addAttribute("flag",true);
            return "loginAdminIndex";
        }
        String aName = this.adminService.loginAdmin(aId, aPassword);
        model.addAttribute("aName", aName);
        session.setAttribute("AdminId",aId);
        session.setAttribute("AdminName",aName);

        return "managerIndex";
    }
}
