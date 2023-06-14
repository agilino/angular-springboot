package com.agilino.ordercinematicket.service;


import com.agilino.ordercinematicket.dto.ChairDTO;
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
        if (departmentId != null && timeId != null) {
            return chairRepository.findByDepartmentId(departmentId, timeId).stream().map(appMapper::toDto).toList();
        }
        return new ArrayList<>();
    }
}
