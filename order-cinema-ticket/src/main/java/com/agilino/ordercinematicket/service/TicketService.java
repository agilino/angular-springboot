package com.agilino.ordercinematicket.service;

import com.agilino.ordercinematicket.dto.TicketDTO;
import com.agilino.ordercinematicket.mapper.AppMapper;
import com.agilino.ordercinematicket.model.Ticket;
import com.agilino.ordercinematicket.repository.TicketRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class TicketService {
    private final AppMapper appMapper;
    private final TicketRepository ticketRepository;

    public List<TicketDTO> getTickets() {
        return ticketRepository.findAll().stream().findAny().stream().map(appMapper::toDto).toList();
    }

    public TicketDTO createTicket(TicketDTO ticketDTO) {
        Ticket ticket = appMapper.toEntity(ticketDTO);
        ticketRepository.save(ticket);
        return appMapper.toDto(ticket);
    }
}
