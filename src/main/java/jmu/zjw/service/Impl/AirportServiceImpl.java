package jmu.zjw.service.Impl;

import jmu.zjw.mapper.AirportMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import jmu.zjw.po.Airport;
import jmu.zjw.service.AirportService;

import javax.annotation.Resource;

@Service
@Transactional
public class AirportServiceImpl implements AirportService {
    @Resource(name="airportMapper")
    private AirportMapper airportMapper;
    public void insertAirport(Airport airport) {
        this.airportMapper.insertAirport(airport);
    }
    public Airport findAirportById(int apId) {   //根据机场ID查询机场
        return this.airportMapper.findAirportById(apId);
    }
    public Airport findAirportByName(String apName) {   //根据机场名查询机场ID
        return this.airportMapper.findAirportByName(apName);
    }
}
