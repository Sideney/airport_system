package jmu.zjw.mapper;

import jmu.zjw.po.Flight;

import java.util.ArrayList;

public interface FlightMapper {
    public void insertFlight(Flight flight);   //插入航班信息
    public ArrayList<Flight> findFlight();   //查询所有航班信息
}
