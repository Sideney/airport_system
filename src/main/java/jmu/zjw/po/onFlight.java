package jmu.zjw.po;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Time;
import java.sql.Timestamp;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class onFlight {
    private String ofId;
    private Timestamp ofTime;
    private Timestamp ofEstimateTime1;
    private Timestamp ofEstimateTime2;
    private Timestamp ofActualTime1;
    private Timestamp ofActualTime2;
    private String ofGate;
    private Timestamp ofAirTime;
    private String ofAirLine1;
    private String ofAirLine2;
    private String fId;
    private int apId1;
    private int apId2;

}
