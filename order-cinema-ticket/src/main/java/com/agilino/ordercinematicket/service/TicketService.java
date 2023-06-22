package com.agilino.ordercinematicket.service;

import com.agilino.ordercinematicket.controller.exception.ConflictDataException;
import com.agilino.ordercinematicket.controller.exception.NotFoundException;
import com.agilino.ordercinematicket.dto.chair.ChairDTO;
import com.agilino.ordercinematicket.dto.ticket.TicketCreateDTO;
import com.agilino.ordercinematicket.dto.ticket.TicketDTO;
import com.agilino.ordercinematicket.mapper.AppMapper;
import com.agilino.ordercinematicket.model.Chair;
import com.agilino.ordercinematicket.model.Ticket;
import com.agilino.ordercinematicket.model.Time;
import com.agilino.ordercinematicket.repository.ChairRepository;
import com.agilino.ordercinematicket.repository.TicketRepository;
import com.agilino.ordercinematicket.repository.TimeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.io.NotActiveException;
import java.time.LocalDateTime;
import java.util.*;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class TicketService {
    private final AppMapper appMapper;
    private final TicketRepository ticketRepository;
    private final ChairRepository chairRepository;

    private final ChairService chairService;
    private final TimeRepository timeRepository;

    public List<TicketDTO> getTickets(UUID id) {
        if (Objects.isNull(id)) {
            return ticketRepository.findAll().stream().map(appMapper::toDto).toList();
        }
        return ticketRepository.findById(id).stream().map(appMapper::toDto).toList();
    }

    @Transactional
    public TicketDTO createTicket(TicketCreateDTO ticketCreate) {
        validateChair(ticketCreate.getChairs(), ticketCreate.getTimeId());
        Ticket savedTicket = appMapper.toEntity(ticketCreate);
        savedTicket.setCreatedOn(LocalDateTime.now());
        Ticket save = ticketRepository.save(savedTicket);
        return appMapper.toDto(save);
    }

    private void validateChair(List<ChairDTO> chairDTOS, UUID timeId) {
        Set<UUID> chairDTOIds = chairDTOS.stream().map(ChairDTO::getId).collect(Collectors.toSet());
        Set<UUID> chairIds = ticketRepository.findAllByTime(timeId).stream()
                .map(Ticket::getChairs)
                .flatMap(Collection::stream)
                .map(Chair::getId).collect(Collectors.toSet());

        if (CollectionUtils.containsAny(chairDTOIds, chairIds)) {
            throw new ConflictDataException("Chair is booked");
        }
    }
}
