package jmu.zjw.service;

import jmu.zjw.po.Customer;
import org.apache.ibatis.annotations.Param;

public interface CustomerService {
    public String loginUser(@Param("crId")String crId, @Param("crPassword")String crPassword);   //普通用户登录
    public void registerUser(Customer customer);   //普通用户注册
}
