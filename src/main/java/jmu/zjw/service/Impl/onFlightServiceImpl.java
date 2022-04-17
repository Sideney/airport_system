package jmu.zjw.service.Impl;


import jmu.zjw.mapper.onFlightMapper;
import jmu.zjw.po.onFlight;
import jmu.zjw.service.onFlightService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import javax.annotation.Resource;
import java.sql.Timestamp;
import java.util.ArrayList;

@Service
@Transactional
public class onFlightServiceImpl implements onFlightService {
    @Resource(name="onFlightMapper")
    private onFlightMapper onFlightMapper;

    public  ArrayList<onFlight> findAllonFlight(){
        return this.onFlightMapper.findAllonFlight();
    }

    public ArrayList<onFlight> findonFlight(String estimateCity, String arriveCity, Timestamp estimateTime) {   //根据航线查询航班
        return this.onFlightMapper.findonFlight(estimateCity, arriveCity, estimateTime);
    }
    public void insertonFlight(onFlight onFlight) {   //插入执行航班信息
        this.onFlightMapper.insertonFlight(onFlight);
    }
    public void updateAirport(@Param("ofId")String ofId, @Param("ofAirLine1")String ofAirLine1, @Param("ofAirLine2")String ofAirLine2) {   //更新航线
        this.onFlightMapper.updateAirport(ofId, ofAirLine1, ofAirLine2);
    }
    public ArrayList<onFlight> findonFlightByfId(String fId) {   //根据航班号查询执行航班
        return this.onFlightMapper.findonFlightByfId(fId);
    }
}
