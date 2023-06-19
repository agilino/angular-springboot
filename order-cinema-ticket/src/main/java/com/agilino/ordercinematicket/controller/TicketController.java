package com.agilino.ordercinematicket.controller;


import com.agilino.ordercinematicket.dto.ticket.TicketCreateDTO;
import com.agilino.ordercinematicket.dto.ticket.TicketDTO;
import com.agilino.ordercinematicket.service.TicketService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping(value = "/api/tickets")
@RequiredArgsConstructor
public class TicketController {

    private final TicketService ticketService;
    @GetMapping
    @Operation(summary = "Find list of tickets or get specific ticket by Id")
    @Parameter(name = "id", description = "id of movie need to be found")
    public ResponseEntity<List<TicketDTO>> getTickets(@RequestParam("id") UUID id) {
        var tickets = ticketService.getTickets(id);
        return ResponseEntity.ok(tickets);
    }

    @PostMapping
    public ResponseEntity<List<TicketDTO>> createTicket(@RequestBody List<TicketCreateDTO> tickets) {
        var ticket = ticketService.createTicket(tickets);
        return ResponseEntity.ok(ticket);
    }
}
