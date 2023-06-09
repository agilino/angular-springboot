package com.agilino.ordercinematicket.controller;


import com.agilino.ordercinematicket.dto.MovieDTO;
import com.agilino.ordercinematicket.service.MovieService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import jakarta.annotation.Nullable;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping(value = "/api/movies")
@RequiredArgsConstructor
public class MovieController {

    private final MovieService movieService;

    @GetMapping
    @Operation(summary = "Find list of movies or get specific movie by Id")
    @Parameter(name = "id", description = "id of movie need to be found")
    public ResponseEntity<List<MovieDTO>> getMovies(@RequestParam("id") @Nullable UUID id) {
        var movies = movieService.getMovies(id);
        return ResponseEntity.ok(movies);
    }
}
