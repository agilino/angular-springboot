package com.agilino.ordercinematicket.service;

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

import java.io.NotActiveException;
import java.time.LocalDateTime;
import java.util.*;

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
        ticketCreate.getChairs().forEach(item -> {
            try {
                validateChair(item, ticketCreate.getTimeId());
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        });

        Ticket savedTicket = appMapper.toEntity(ticketCreate);
        List<Chair> chairs = savedTicket.getChairs().
                stream()
                .map(chair -> chairRepository.getReferenceById(chair.getId()))
                .toList();
        savedTicket.setChairs(new HashSet<>(chairs));
        savedTicket.setCreatedOn(LocalDateTime.now());
//        Time referenceById = timeRepository.getReferenceById(ticketCreate.getTimeId());
//        savedTicket.setTime(referenceById);
        Time time = timeRepository.findById(ticketCreate.getTimeId()).get();
        Time time2 = new Time();
        time2.setId(ticketCreate.getTimeId());
        savedTicket.setTime(time2);
        Ticket save = ticketRepository.save(savedTicket);
        TicketDTO ticketDTO = appMapper.toDto(save);
        return ticketDTO;
    }

    private void validateChair(ChairDTO chairDTO, UUID timeId) throws Exception {
        Optional ticketBooked = ticketRepository.findAllByTime(timeId).stream()
                .flatMap(item -> item.getChairs().stream())
                .filter(item -> item.getId().equals(chairDTO.getId()))
                .findFirst();
        if (ticketBooked.isPresent()) {
            throw new Exception("Chair is booked");
        }
    }
}
