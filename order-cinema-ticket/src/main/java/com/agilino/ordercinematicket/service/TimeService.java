package com.agilino.ordercinematicket.service;

import com.agilino.ordercinematicket.dto.TimeDTO;
import com.agilino.ordercinematicket.mapper.AppMapper;
import com.agilino.ordercinematicket.repository.TimeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class TimeService {

    private final AppMapper appMapper;
    private final TimeRepository timeRepository;

    public List<TimeDTO> getTimes(UUID id) {
        if (Objects.isNull(id)){
            return timeRepository.findAll().stream().map(appMapper::toDto).toList();
        }
        return timeRepository.findAllByMovieId(id).stream().map(appMapper::toDto).toList();
    }
}
