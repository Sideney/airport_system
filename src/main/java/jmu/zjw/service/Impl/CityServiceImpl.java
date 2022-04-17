package jmu.zjw.service.Impl;

import jmu.zjw.mapper.CityMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import jmu.zjw.po.City;
import jmu.zjw.service.CityService;

import javax.annotation.Resource;

@Service
@Transactional
public class CityServiceImpl implements CityService {
    @Resource(name="cityMapper")
    private CityMapper cityMapper;
    public City findCityById(int apId) {   //根据机场ID查询城市
        return this.cityMapper.findCityById(apId);
    }
    public City findCityByapName(String apName){return this.cityMapper.findCityByapName(apName);}
    public City findCityByName(String cName) {   //根据城市名称查询城市
        return this.cityMapper.findCityByName(cName);
    }
}
