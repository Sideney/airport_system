package jmu.zjw.po;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Seat {
     private int sId;
     private int SNum;
     private boolean status;
     private int sLevel;
     private String ofId;
}
