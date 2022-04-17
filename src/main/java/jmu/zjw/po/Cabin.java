package jmu.zjw.po;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Cabin {
    private int cabinId;
    private int clevel;
    private int price;
    private int remainTicket;
    private String ofId;
}
