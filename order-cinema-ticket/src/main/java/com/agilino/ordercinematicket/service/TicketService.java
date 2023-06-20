package com.agilino.ordercinematicket.service;

import com.agilino.ordercinematicket.dto.chair.ChairDTO;
import com.agilino.ordercinematicket.dto.ticket.TicketCreateDTO;
import com.agilino.ordercinematicket.dto.ticket.TicketDTO;
import com.agilino.ordercinematicket.mapper.AppMapper;
import com.agilino.ordercinematicket.model.Chair;
import com.agilino.ordercinematicket.model.Ticket;
import com.agilino.ordercinematicket.repository.TicketRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class TicketService {
    private final AppMapper appMapper;
    private final TicketRepository ticketRepository;

    public List<TicketDTO> getTickets(UUID id) {
        if (Objects.isNull(id)) {
            return ticketRepository.findAll().stream().map(appMapper::toDto).toList();
        }
        return ticketRepository.findById(id).stream().map(appMapper::toDto).toList();
    }

    public TicketDTO createTicket(TicketCreateDTO ticketCreate) {
        ticketCreate.getChairs().forEach(this::validateChair);
        Ticket savedTicket = appMapper.toEntity(ticketCreate);
        TicketDTO ticketDTO = appMapper.toDto(ticketRepository.save(savedTicket));
        return ticketDTO;
    }

    private void validateChair(ChairDTO chairDTO) {
    }
}
