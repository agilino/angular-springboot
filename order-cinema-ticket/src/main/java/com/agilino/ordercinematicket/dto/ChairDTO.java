package com.agilino.ordercinematicket.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ChairDTO {
    private UUID id;
    private UUID departmentId;
    private String number;
}
