package jmu.zjw.service.Impl;

import jmu.zjw.mapper.AdminMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import jmu.zjw.service.AdminService;
import javax.annotation.Resource;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {
    @Resource(name="adminMapper")
    private AdminMapper adminMapper;
    public String loginAdmin(@Param("aId")String aId, @Param("aPassword")String aPassword) {
        return this.adminMapper.loginAdmin(aId, aPassword);
    }
}
