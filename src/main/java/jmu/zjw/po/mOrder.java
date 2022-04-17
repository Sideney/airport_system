package jmu.zjw.po;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class mOrder {
    private int oId;
    private int oprice;
    private String phone;
    private Timestamp otime;
    private int tId;
    private String crId;
}
