package com.agilino.ordercinematicket.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import java.time.LocalDateTime;
import java.util.UUID;
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class TimeDTO {
    private UUID id;
    private LocalDateTime from;
    private LocalDateTime to;
    private DepartmentDTO department;
}
