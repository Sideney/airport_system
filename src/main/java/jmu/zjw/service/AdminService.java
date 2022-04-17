package jmu.zjw.service;

import org.apache.ibatis.annotations.Param;
import jmu.zjw.po.Admin;

public interface AdminService {
    public String loginAdmin(@Param("aId")String aId, @Param("aPassword")String aPassword);   //管理员登录
}
