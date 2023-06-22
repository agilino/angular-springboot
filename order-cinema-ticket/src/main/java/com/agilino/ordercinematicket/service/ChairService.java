package com.agilino.ordercinematicket.service;


import com.agilino.ordercinematicket.dto.chair.ChairDTO;
import com.agilino.ordercinematicket.mapper.AppMapper;
import com.agilino.ordercinematicket.repository.ChairRepository;
import com.agilino.ordercinematicket.repository.TicketRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class ChairService {
    private final AppMapper appMapper;
    private final ChairRepository chairRepository;

    private final TicketRepository ticketRepository;

    public List<ChairDTO> getChairs(UUID departmentId, UUID timeId) {
        return new ArrayList<>();
    }
}
