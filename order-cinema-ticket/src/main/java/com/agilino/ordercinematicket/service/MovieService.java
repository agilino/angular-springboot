package com.agilino.ordercinematicket.service;

import com.agilino.ordercinematicket.dto.MovieDTO;
import com.agilino.ordercinematicket.mapper.AppMapper;
import com.agilino.ordercinematicket.repository.MovieRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.UUID;


@Service
@RequiredArgsConstructor
public class MovieService {
    private final AppMapper appMapper;
    private final MovieRepository movieRepository;

    public List<MovieDTO> getMovies(UUID id) {
        if (Objects.isNull(id)){
            return movieRepository.findAll().stream().map(appMapper::toDto).toList();
        }
        return movieRepository.findById(id).stream().map(appMapper::toDto).toList();
    }

}
