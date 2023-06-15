package com.agilino.ordercinematicket.mapper;


import com.agilino.ordercinematicket.dto.MovieDTO;
import com.agilino.ordercinematicket.dto.TimeDTO;
import com.agilino.ordercinematicket.dto.chair.ChairDTO;
import com.agilino.ordercinematicket.dto.ticket.TicketCreateDTO;
import com.agilino.ordercinematicket.dto.ticket.TicketDTO;
import com.agilino.ordercinematicket.model.Chair;
import com.agilino.ordercinematicket.model.Movie;
import com.agilino.ordercinematicket.model.Ticket;
import com.agilino.ordercinematicket.model.Time;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface AppMapper {

    MovieDTO toDto(Movie source);

    @Mapping(source = "department.id", target = "departmentId")
    ChairDTO toDto(Chair source);
    TicketDTO toDto(Ticket source);
    TimeDTO toDto (Time source);
    Ticket toEntity(TicketDTO source);
    Ticket toEntity(TicketCreateDTO source);

}
