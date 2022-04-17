package jmu.zjw.service.Impl;

import jmu.zjw.mapper.FlightMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import jmu.zjw.po.Flight;
import jmu.zjw.service.FlightService;

import javax.annotation.Resource;
import java.util.ArrayList;

@Service
@Transactional
public class FlightServiceImpl implements FlightService {
    @Resource(name="flightMapper")
    private FlightMapper flightMapper;
    public void insertFlight(Flight flight) {   //插入航班信息
        this.flightMapper.insertFlight(flight);
    }
    public ArrayList<Flight> findFlight() {   //查询所有航班信息
        return this.flightMapper.findFlight();
    }
}
