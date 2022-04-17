package jmu.zjw.mapper;

import jmu.zjw.po.onFlight;
import org.apache.ibatis.annotations.Param;
import java.sql.Timestamp;
import java.util.ArrayList;

public interface onFlightMapper {
    public  ArrayList<onFlight> findAllonFlight();
    public ArrayList<onFlight> findonFlight(@Param("estimateCity")String estimateCity, @Param("arriveCity")String arriveCity, @Param("estimateTime")Timestamp estimateTime);   //根据航线查询航班
    public void insertonFlight(onFlight onFlight);   //插入执行航班信息
    public void updateAirport(@Param("ofId")String ofId, @Param("ofAirLine1")String ofAirLine1, @Param("ofAirLine2")String ofAirLine2);   //更新航线
    public ArrayList<onFlight> findonFlightByfId(String fId);   //根据航班号查询执行航班
}
