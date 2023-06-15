package com.agilino.ordercinematicket.dto.ticket;

import lombok.*;

import java.util.UUID;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class TicketCreateDTO{

    @NonNull
    private UUID timeId;
    @NonNull
    private UUID chairId;
    @NonNull
    private UUID accountId;
}
