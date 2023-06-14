package com.agilino.ordercinematicket.service;


import com.agilino.ordercinematicket.dto.TicketDTO;
import com.agilino.ordercinematicket.dto.chair.ChairDTO;
import com.agilino.ordercinematicket.dto.chair.ChairResponseDTO;
import com.agilino.ordercinematicket.enums.ChairStatus;
import com.agilino.ordercinematicket.mapper.AppMapper;
import com.agilino.ordercinematicket.model.Ticket;
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
    public List<ChairResponseDTO> getChairs(UUID departmentId, UUID timeId) {
        List<ChairResponseDTO> chairs = new ArrayList<>();
        if (departmentId != null && timeId != null) {
            chairs = chairRepository.findByDepartmentId(departmentId, timeId).stream()
                    .map(appMapper::toDto).peek(item -> item.setStatus(ChairStatus.FREE))
                    .toList();
        }
        return chairs;
    }
}
