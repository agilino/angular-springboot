package com.agilino.ordercinematicket.dto.ticket;

import com.agilino.ordercinematicket.dto.chair.ChairDTO;
import lombok.*;

import java.util.List;
import java.util.UUID;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class TicketCreateDTO{

    @NonNull
    private UUID timeId;
    @NonNull
    private List<ChairDTO> chairs;
    @NonNull
    private UUID accountId;
}
