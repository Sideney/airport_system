package jmu.zjw.service.Impl;

import jmu.zjw.mapper.CustomerMapper;
import jmu.zjw.po.Customer;

import jmu.zjw.service.CustomerService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {
    @Resource(name="customerMapper")
    private CustomerMapper customerMapper;
    public String loginUser(@Param("crId")String crId, @Param("crPassword")String crPassword) {
        return this.customerMapper.loginUser(crId, crPassword);
    }
    public void registerUser(Customer customer) {   //普通用户注册
        this.customerMapper.registerUser(customer);
    }
}
