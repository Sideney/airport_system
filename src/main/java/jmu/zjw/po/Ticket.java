package jmu.zjw.po;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Ticket {
    private int tId;
    private int tprice;
    private Timestamp tTime;
    private String tFood;
    private String tCity1;
    private String tCity2;
    private String ofId;
    private String amId;
    private String sId;
    private String cabinId;

}
