package jmu.zjw.service;

import org.apache.ibatis.annotations.Param;
import jmu.zjw.po.Cabin;

import java.util.ArrayList;

public interface CabinService {
    public void insertCabin(Cabin cabin);   //插入舱位信息
    public ArrayList<Cabin> findCabinById(String ofId);   //根据执行航班号查询舱位
    public void updateCabin(@Param("cabinId")int cabinId, @Param("cabinPrice")int Price);   //修改舱位价格  //修改舱位价格
}
