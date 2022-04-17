package jmu.zjw.po;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Customer {
    private String crId;
    private String crName;
    private String crSex;
    private String crPassword;
}
