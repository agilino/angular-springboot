package com.agilino.ordercinematicket.controller;


import com.agilino.ordercinematicket.dto.ticket.TicketCreateDTO;
import com.agilino.ordercinematicket.dto.ticket.TicketDTO;
import com.agilino.ordercinematicket.service.TicketService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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
    public ResponseEntity<List<TicketDTO>> createTicket(@RequestBody List<TicketCreateDTO> tickets) {
        var ticket = ticketService.createTicket(tickets);
        return ResponseEntity.ok(ticket);
    }
}
