package jmu.zjw.mapper;

import jmu.zjw.po.mOrder;

import java.util.ArrayList;

public interface mOrderMapper {
    public ArrayList<mOrder> findOrderById(String crId);   //查询自己的订单
    public ArrayList<mOrder> findOrder(String fId);   //报表
}
