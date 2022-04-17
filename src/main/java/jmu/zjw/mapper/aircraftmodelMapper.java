package jmu.zjw.mapper;


import jmu.zjw.po.aircraftmodel;

import java.util.ArrayList;

public interface aircraftmodelMapper {
    public ArrayList<aircraftmodel> findPlane();   //查找所有飞机
    public void insertPlane(aircraftmodel plane);   //插入飞机
    public void deletePlane(int pId);   //级联删除飞机
    public aircraftmodel findPlaneByName(String pName);   //根据飞机名查找飞机
}
