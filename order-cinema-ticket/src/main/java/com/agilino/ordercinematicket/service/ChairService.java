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

    public ChairDTO getChair(UUID chairId) {
        return chairRepository.findById(chairId).map(appMapper::toDto).orElseThrow(NotFoundException::new);
    }

    public List<ChairDTO> getChairs(UUID departmentId, UUID timeId) {
        if (departmentId == null || timeId == null) {
            return new ArrayList<>(); // Return empty list if either parameter is null
        }

        List<Chair> chairs = chairRepository.findByDepartmentId(departmentId, timeId);
        Set<Chair> chairsBooked = ticketRepository.findAllByTime(timeId).stream()
                .flatMap(item -> item.getChairs().stream())
                .collect(Collectors.toSet());

        return chairs.stream().map(appMapper::toDto).map(
                item -> {
                    if (chairsBooked.contains(item.getId())) {
                        item.setStatus(ChairStatus.BOOKED);
                    } else {
                        item.setStatus(ChairStatus.FREE);
                    }
                    return item;
                }
        ).toList();
    }
}
