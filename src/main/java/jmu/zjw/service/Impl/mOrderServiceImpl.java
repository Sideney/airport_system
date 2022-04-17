package jmu.zjw.service.Impl;

import jmu.zjw.mapper.mOrderMapper;
import jmu.zjw.po.mOrder;
import jmu.zjw.service.mOrderService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import javax.annotation.Resource;
import java.util.ArrayList;

@Service
@Transactional
public class mOrderServiceImpl implements mOrderService {
    @Resource(name="mOrderMapper")
    private mOrderMapper mOrderMapper;
    public ArrayList<mOrder> findOrderById(String crId) {   //查询自己的订单
        return this.mOrderMapper.findOrderById(crId);
    }
    public ArrayList<mOrder> findOrder(String fId) {   //报表
        return this.mOrderMapper.findOrder(fId);
    }
}
