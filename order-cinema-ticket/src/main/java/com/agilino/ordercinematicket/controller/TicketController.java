package com.agilino.ordercinematicket.controller;


import com.agilino.ordercinematicket.dto.TicketDTO;
import com.agilino.ordercinematicket.service.TicketService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/api/tickets")
@RequiredArgsConstructor
public class TicketController {

    private final TicketService ticketService;
    @GetMapping
    public ResponseEntity<List<TicketDTO>> getTickets() {
        var tickets = ticketService.getTickets();
        return ResponseEntity.ok(tickets);
    }

    @PostMapping
    public ResponseEntity<TicketDTO> createTicket(TicketDTO ticketDTO) {
        var ticket = ticketService.createTicket(ticketDTO);
        return ResponseEntity.ok(ticket);
    }
}
