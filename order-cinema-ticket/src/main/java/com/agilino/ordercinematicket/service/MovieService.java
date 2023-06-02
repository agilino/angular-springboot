package com.agilino.ordercinematicket.service;

import com.agilino.ordercinematicket.dto.MovieDTO;
import com.agilino.ordercinematicket.mapper.AppMapper;
import com.agilino.ordercinematicket.repository.MovieRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
@RequiredArgsConstructor
public class MovieService {
    private final AppMapper appMapper;
    private final MovieRepository movieRepository;

    public List<MovieDTO> getMovies() {
        return movieRepository.findAll().stream().map(appMapper::toDto).toList();
    }

}
