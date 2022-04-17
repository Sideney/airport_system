package jmu.zjw.service.Impl;

import jmu.zjw.mapper.aircraftmodelMapper;
import jmu.zjw.po.aircraftmodel;
import jmu.zjw.service.aircraftmodelService;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import javax.annotation.Resource;
import java.util.ArrayList;

@Service
@Transactional
public class aircraftmodelServiceImpl implements aircraftmodelService {
    @Resource(name="aircraftmodelMapper")
    private aircraftmodelMapper aircraftmodelMapper;
    public ArrayList<aircraftmodel> findPlane() {   //查找所有飞机
        return this.aircraftmodelMapper.findPlane();
    }
    public void insertPlane(aircraftmodel plane) {   //插入飞机
        this.aircraftmodelMapper.insertPlane(plane);
    }
    public void deletePlane(int pId) {   //级联删除飞机
        this.aircraftmodelMapper.deletePlane(pId);
    }
    public aircraftmodel findPlaneByName(String pName) {   //根据飞机名查找飞机
        return this.aircraftmodelMapper.findPlaneByName(pName);
    }
}
