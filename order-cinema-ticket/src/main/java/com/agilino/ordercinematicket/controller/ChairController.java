package com.agilino.ordercinematicket.controller;

import com.agilino.ordercinematicket.dto.ChairDTO;
import com.agilino.ordercinematicket.service.ChairService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/api/chairs")
@RequiredArgsConstructor
public class ChairController {

    private final ChairService chairService;

    @GetMapping
    public ResponseEntity<List<ChairDTO>> getChairs() {
        var chairs = chairService.getChairs();
        return ResponseEntity.ok(chairs);
    }
}
