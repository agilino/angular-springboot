package com.agilino.ordercinematicket.controller;

import com.agilino.ordercinematicket.dto.ChairDTO;
import com.agilino.ordercinematicket.service.ChairService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping(value = "/api/chairs")
@RequiredArgsConstructor
public class ChairController {

    private final ChairService chairService;

    @GetMapping(value = "/{departmentId}/{timeId}")
    public ResponseEntity<List<ChairDTO>> getChairs(
            @PathVariable(name = "departmentId") UUID departmentId,
            @PathVariable(name = "timeId") UUID timeId ) {
        var chairs = chairService.getChairs(departmentId, timeId);
        return ResponseEntity.ok(chairs);
    }
}
