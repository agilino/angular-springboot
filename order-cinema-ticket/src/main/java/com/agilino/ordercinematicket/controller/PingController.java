package com.agilino.ordercinematicket.controller;


import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/api/pings")
public class PingController {

    @Operation(summary = "Ping the server")
    @ApiResponse(
            responseCode = "200",
            description = "Pong"
    )
    @GetMapping
    public String ping() {
        return "pong";
    }
}
