package jmu.zjw.service.Impl;

import jmu.zjw.mapper.TicketMapper;

import jmu.zjw.po.Ticket;
import jmu.zjw.po.mOrder;
import jmu.zjw.service.TicketService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import javax.annotation.Resource;
import java.util.ArrayList;

@Service
@Transactional
public class TicketServiceImpl implements TicketService {
    @Resource(name="ticketMapper")
    private TicketMapper ticketMapper;
    public void insertTicket(@Param("ticket") Ticket ticket, @Param("order") mOrder morder) {   //插入机票
        this.ticketMapper.insertTicket(ticket, morder);
    }
    public void updateTicket(@Param("ticket")Ticket ticket, @Param("ofId")String ofId) {   //订票后更新表
        this.ticketMapper.updateTicket(ticket, ofId);
    }
    public ArrayList<Ticket> findTicketById(String crId) {   //查询自己的机票
        return this.ticketMapper.findTicketById(crId);
    }
    public Ticket findTicketBytId(int tId) {   //根据机票号查询机票
        return this.ticketMapper.findTicketBytId(tId);
    }
    public void deleteTicket(int tId) {   //退票
        this.ticketMapper.deleteTicket(tId);
    }
    public void updateTicket2(Ticket ticket) {   //退票后更新表
        this.ticketMapper.updateTicket2(ticket);
    }
}
