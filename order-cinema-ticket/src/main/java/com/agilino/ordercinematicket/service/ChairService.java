package com.agilino.ordercinematicket.service;


import com.agilino.ordercinematicket.controller.exception.NotFoundException;
import com.agilino.ordercinematicket.dto.chair.ChairCreateDTO;
import com.agilino.ordercinematicket.dto.chair.ChairDTO;
import com.agilino.ordercinematicket.enums.ChairStatus;
import com.agilino.ordercinematicket.mapper.AppMapper;
import com.agilino.ordercinematicket.repository.ChairRepository;
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
    public List<ChairDTO> getChairs(UUID departmentId, UUID timeId) {
        List<ChairDTO> chairs = new ArrayList<>();
        if (departmentId != null && timeId != null) {
            chairs = chairRepository.findByDepartmentId(departmentId, timeId).stream()
                    .map(appMapper::toDto).peek(item -> item.setStatus(ChairStatus.FREE))
                    .toList();
        }
        return chairs;
    }

    public ChairDTO getChair(UUID id) {
        return appMapper.toDto(chairRepository.findById(id).orElseThrow(()-> new NotFoundException("Chair not found")));
    }
}
