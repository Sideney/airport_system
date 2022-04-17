package jmu.zjw.mapper;

import jmu.zjw.po.City;

public interface CityMapper {
    public City findCityById(int apId);   //根据机场ID查询城市
    public City findCityByapName(String apName);
    public City findCityByName(String cName);   //根据城市名称查询城市
}
