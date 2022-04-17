package jmu.zjw.service;

import jmu.zjw.po.Ticket;
import jmu.zjw.po.mOrder;
import org.apache.ibatis.annotations.Param;


import java.util.ArrayList;

public interface TicketService {
    public void insertTicket(@Param("ticket") Ticket ticket, @Param("order") mOrder morder);   //订票
    public void updateTicket(@Param("ticket")Ticket ticket, @Param("ofId")String ofId);   //订票后更新表
    public ArrayList<Ticket> findTicketById(String crId);   //查询自己的机票
    public Ticket findTicketBytId(int tId);   //根据机票号查询机票
    public void deleteTicket(int tId);   //退票
    public void updateTicket2(Ticket ticket);   //退票后更新表
}
