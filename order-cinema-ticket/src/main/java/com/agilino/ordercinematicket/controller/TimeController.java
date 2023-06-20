package com.agilino.ordercinematicket.controller;

import com.agilino.ordercinematicket.dto.TimeDTO;
import com.agilino.ordercinematicket.service.TimeService;
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
@RequestMapping(value = "/api/times")
@RequiredArgsConstructor
public class TimeController {
    private final TimeService timeService;

    @GetMapping
    @Operation(summary = "Find list of times belong to movie")
    @Parameter(name = "id", description = "id of movie need to be found")
    public ResponseEntity<List<TimeDTO>> getTimes(@RequestParam("id") @Nullable UUID id) {
        var times = timeService.getTimes(id);
        return ResponseEntity.ok(times);
    }
}
