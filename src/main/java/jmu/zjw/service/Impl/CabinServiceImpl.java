package jmu.zjw.service.Impl;

import jmu.zjw.mapper.CabinMapper;
import jmu.zjw.po.Cabin;
import jmu.zjw.service.CabinService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;

@Service
@Transactional
public class CabinServiceImpl implements CabinService {
    @Resource(name="cabinMapper")
    private CabinMapper cabinMapper;
    public void insertCabin(Cabin cabin) {   //插入舱位信息
        this.cabinMapper.insertCabin(cabin);
    }
    public ArrayList<Cabin> findCabinById(String ofId) {   //根据执行航班号查询舱位
        return this.cabinMapper.findCabinById(ofId);
    }
    public void updateCabin(@Param("cabinId")int cabinId, @Param("Price")int Price) {   //修改舱位价格
        this.cabinMapper.updateCabin(cabinId, Price);
    }
}
