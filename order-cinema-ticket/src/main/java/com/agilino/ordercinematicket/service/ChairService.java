package com.agilino.ordercinematicket.service;


import com.agilino.ordercinematicket.controller.exception.NotFoundException;
import com.agilino.ordercinematicket.dto.chair.ChairDTO;
import com.agilino.ordercinematicket.enums.ChairStatus;
import com.agilino.ordercinematicket.mapper.AppMapper;
import com.agilino.ordercinematicket.model.Chair;
import com.agilino.ordercinematicket.repository.ChairRepository;
import com.agilino.ordercinematicket.repository.TicketRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ChairService {
    private final AppMapper appMapper;
    private final ChairRepository chairRepository;

    private final TicketRepository ticketRepository;

    public List<ChairDTO> getChairs(UUID departmentId, UUID timeId) {
        if (departmentId == null || timeId == null) {
            return new ArrayList<>(); // Return empty list if either parameter is null
        }

        Set<UUID> chairsBooked = ticketRepository.findAllByTime(timeId).stream()
                .flatMap(item -> item.getChairs().stream())
                .map(Chair::getId)
                .collect(Collectors.toSet());

        return chairRepository.findByDepartmentId(departmentId, timeId).stream()
                .map(appMapper::toDto)
                .peek(item -> item.setStatus(chairsBooked.contains(item.getId()) ? ChairStatus.BOOKED : ChairStatus.FREE))
                .toList();
    }
}
