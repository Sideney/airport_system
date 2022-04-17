package jmu.zjw.mapper;

import jmu.zjw.po.Seat;
import org.apache.ibatis.annotations.Param;
import java.util.ArrayList;

public interface SeatMapper {
    public void insertSeat(Seat seat);   //插入座位
    public ArrayList<Seat> findSeatById(@Param("ofId")String pfId, @Param("sLevel")int sLevel);   //根据执行航班号与舱位号定位座位
}
