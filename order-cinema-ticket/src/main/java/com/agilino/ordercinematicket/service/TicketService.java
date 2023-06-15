package com.agilino.ordercinematicket.service;

import com.agilino.ordercinematicket.controller.exception.NotFoundException;
import com.agilino.ordercinematicket.dto.chair.ChairCreateDTO;
import com.agilino.ordercinematicket.dto.ticket.TicketCreateDTO;
import com.agilino.ordercinematicket.dto.ticket.TicketDTO;
import com.agilino.ordercinematicket.enums.ChairStatus;
import com.agilino.ordercinematicket.mapper.AppMapper;
import com.agilino.ordercinematicket.model.Ticket;
import com.agilino.ordercinematicket.repository.TicketRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class TicketService {
    private final AppMapper appMapper;
    private final TicketRepository ticketRepository;
    private final ChairService chairService;
    private final TimeService timeService;

    public List<TicketDTO> getTickets() {
        return ticketRepository.findAll().stream().findAny().stream().map(appMapper::toDto).toList();
    }

    public List<TicketDTO> createTicket(List<TicketCreateDTO> tickets) {
        List<Ticket> savedTickets = new ArrayList<>();
        tickets.forEach(item -> {
            validateTicket(item);
            Ticket ticket = appMapper.toEntity(item);
            ticket.setCreatedOn(LocalDateTime.now());
            savedTickets.add(ticketRepository.save(ticket));
        });
        return savedTickets.stream().map(appMapper::toDto).toList();
    }

    private void validateTicket(TicketCreateDTO ticket) {
        var chair = chairService.getChair(ticket.getChairId());
        if (chair.getStatus().equals(ChairStatus.BOOKED)) {
            throw new NotFoundException("Chair is occupied");
        }
    }
}
