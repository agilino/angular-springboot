package com.agilino.ordercinematicket.dto.chair;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ChairCreateDTO {
    private UUID departmentId;
    private String number;
}
