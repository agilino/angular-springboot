package com.agilino.ordercinematicket.mapper;


import com.agilino.ordercinematicket.dto.ChairDTO;
import com.agilino.ordercinematicket.dto.MovieDTO;
import com.agilino.ordercinematicket.dto.TicketDTO;
import com.agilino.ordercinematicket.model.Chair;
import com.agilino.ordercinematicket.model.Movie;
import com.agilino.ordercinematicket.model.Ticket;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface AppMapper {

    MovieDTO toDto(Movie source);
    ChairDTO toDto(Chair source);
    TicketDTO toDto(Ticket source);

}
