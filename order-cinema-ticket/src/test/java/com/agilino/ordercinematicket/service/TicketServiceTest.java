package com.agilino.ordercinematicket.service;

import com.agilino.ordercinematicket.mapper.AppMapper;
import com.agilino.ordercinematicket.model.Account;
import com.agilino.ordercinematicket.model.Chair;
import com.agilino.ordercinematicket.model.Ticket;
import com.agilino.ordercinematicket.model.Time;
import com.agilino.ordercinematicket.repository.TicketRepository;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.UUID;

import static org.mockito.Mockito.doReturn;


class TicketServiceTest {

    @InjectMocks
    private TicketService ticketService;

    @Mock
    private TicketRepository ticketRepository;

    @Mock
    private AppMapper appMapper;

    @BeforeEach
    void setup() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void getTickets() {
        doReturn(buildTickets()).when(ticketRepository).findAll();
        var expected = ticketService.getTickets(null);
        Assertions.assertEquals(1, expected.size());
    }

    private List<Ticket> buildTickets() {
        Chair chair = new Chair();
        Account account = new Account();
        Time time = new Time();

        List<Ticket> tickets = new ArrayList<>();
        Ticket ticket = new Ticket();
        ticket.setId(UUID.randomUUID());
        ticket.setChairs((Set.of(chair)));
        ticket.setCreatedOn(LocalDateTime.now());
        ticket.setTime(time);
        ticket.setAccount(account);
        tickets.add(ticket);
        return tickets;
    }
}
