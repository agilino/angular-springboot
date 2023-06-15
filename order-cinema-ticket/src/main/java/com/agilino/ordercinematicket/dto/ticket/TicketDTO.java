package com.agilino.ordercinematicket.dto.ticket;


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
public class TicketDTO extends TicketCreateDTO {
    private UUID id;
    private LocalDateTime createdOn;
}
