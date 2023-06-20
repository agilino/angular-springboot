package com.agilino.ordercinematicket.mapper;


import com.agilino.ordercinematicket.dto.MovieDTO;
import com.agilino.ordercinematicket.dto.TimeDTO;
import com.agilino.ordercinematicket.dto.chair.ChairDTO;
import com.agilino.ordercinematicket.dto.ticket.TicketCreateDTO;
import com.agilino.ordercinematicket.dto.ticket.TicketDTO;
import com.agilino.ordercinematicket.model.*;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;

import java.util.UUID;

@Mapper(
        componentModel = "spring",
        uses = {
                ReferenceMapper.class,
        }
)
public interface AppMapper {

    MovieDTO toDto(Movie source);

    @Mapping(source = "department.id", target = "departmentId")
    ChairDTO toDto(Chair source);

    TicketDTO toDto(Ticket source);

    TimeDTO toDto(Time source);

    @Mapping(source = "timeId", target = "time", qualifiedByName = "mapTime")
//    @Mapping(source = "chairId", target = "chair", qualifiedByName = "mapChair")
    @Mapping(target = "chairs", ignore = true)
    @Mapping(source = "accountId", target = "account",  qualifiedByName = "mapAccount")
    Ticket toEntity(TicketCreateDTO source);

    Chair toEntity(ChairDTO source);

    @Named("mapTime")
    Time mapTime(UUID value);
    @Named("mapAccount")
    Account mapAccount(UUID value);
    @Named("mapChair")
    Chair mapChair(UUID value);
}
