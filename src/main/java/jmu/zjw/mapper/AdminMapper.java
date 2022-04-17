package jmu.zjw.mapper;

import org.apache.ibatis.annotations.Param;

public interface AdminMapper {
    public String loginAdmin(@Param("aId")String aId, @Param("aPassword")String aPassword);   //管理员登录
}
