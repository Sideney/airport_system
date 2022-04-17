package jmu.zjw.service.Impl;

import jmu.zjw.mapper.SeatMapper;
import jmu.zjw.po.Seat;
import jmu.zjw.service.SeatService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;

@Service
@Transactional
public class SeatServiceImpl implements SeatService {
    @Resource(name="seatMapper")
    private SeatMapper seatMapper;
    public void insertSeat(Seat seat) {   //插入座位
        this.seatMapper.insertSeat(seat);
    }
    public ArrayList<Seat> findSeatById(@Param("ofId")String ofId, @Param("sLevel")int sLevel) {   //根据执行航班号与舱位号定位座位
        return this.seatMapper.findSeatById(ofId, sLevel);
    }
}
