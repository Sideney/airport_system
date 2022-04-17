package jmu.zjw.mapper;

import jmu.zjw.po.Airport;

public interface AirportMapper {
    public void insertAirport(Airport airport);   //插入机场信息
    public Airport findAirportById(int apId);   //根据机场ID查询机场
    public Airport findAirportByName(String apName);   //根据机场名查询机场ID
}
