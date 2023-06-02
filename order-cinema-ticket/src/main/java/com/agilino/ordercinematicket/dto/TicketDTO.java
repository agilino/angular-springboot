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
public class TicketDTO {
    private UUID id;
    private UUID timeId;
    private UUID chairId;
    private UUID userId;
    private LocalDateTime createdOn;
}
