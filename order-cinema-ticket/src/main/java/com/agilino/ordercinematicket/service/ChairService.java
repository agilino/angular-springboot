package com.agilino.ordercinematicket.service;


import com.agilino.ordercinematicket.dto.ChairDTO;
import com.agilino.ordercinematicket.mapper.AppMapper;
import com.agilino.ordercinematicket.repository.ChairRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ChairService {
    private final AppMapper appMapper;
    private final ChairRepository chairRepository;

    public List<ChairDTO> getChairs() {
        return chairRepository.findAll().stream().map(appMapper::toDto).toList();
    }
}
