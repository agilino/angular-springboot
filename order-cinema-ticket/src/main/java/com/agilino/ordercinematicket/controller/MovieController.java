package com.agilino.ordercinematicket.controller;


import com.agilino.ordercinematicket.dto.MovieDTO;
import com.agilino.ordercinematicket.service.MovieService;
import io.swagger.v3.oas.annotations.Operation;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/api/movies")
@RequiredArgsConstructor
public class MovieController {

    private final MovieService movieService;

    @GetMapping
    @Operation(summary = "Find list of movies")
    public ResponseEntity<List<MovieDTO>> getMovies() {
        var movies = movieService.getMovies();
        return ResponseEntity.ok(movies);
    }
}
