package com.agilino.ordercinematicket.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigInteger;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.UUID;

@Entity
@Table(name = "time")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Time {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private UUID id;
    private LocalDateTime from;
    private LocalDateTime to;
    private Long price;
    @Column(name = "move_id")
    private UUID moveId;
}
