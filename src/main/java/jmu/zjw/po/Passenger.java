package jmu.zjw.po;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Passenger {
    private String pId;
    private String pName;
    private String phone;
    private int sex;
    private int tId;
}
